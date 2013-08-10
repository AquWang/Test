% SNR_compute.m
% 计算每个用户在某个特定位置下，每个基站所对应的SNR，不考虑干扰
% 考虑路径损耗、阴影衰落、多径

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [SNR]=SNR_compute(position_user,par,road,bs,user)
% SNR=zeros(length(position_bs),1);
% position_user 需要进行SNR计算的位置坐标,1*2

% 用户和每个基站的相对距离,m
x=position_user(1,1)-bs.position(:,1);
y=position_user(1,2)-bs.position(:,2);
distance=sqrt(x.^2+y.^2); % 距离，m

PL=130.19+37.6*log10(distance./1000); % 路径损耗，dB
shadowing=randn(length(bs.position),1).*bs.shadowing; % 阴影衰落，dB

% 接收端功率，dB，频率复用因子1/3
signal_power=bs.P_bs-bs.HW_bs-10*log10(par.subchannel_num)-PL-shadowing;

% 噪声功率，dB
noise_power=-174+user.NF_ss+10*log10(par.bandwidth_per_subchannel)-30;

% 多径的影响，dB
T=ceil(1000*rand);
fd=user.velocity/par.c*par.fc; % 多普勒频移,Hz
ray=10*log10(MultiPath(fd,T,par));

% 接收端SNR，dB
SNR=signal_power+ray-noise_power;
%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------