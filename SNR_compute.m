% SNR_compute.m
% ����ÿ���û���ĳ���ض�λ���£�ÿ����վ����Ӧ��SNR�������Ǹ���
% ����·����ġ���Ӱ˥�䡢�ྶ

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [SNR]=SNR_compute(position_user,par,road,bs,user)
% SNR=zeros(length(position_bs),1);
% position_user ��Ҫ����SNR�����λ������,1*2

% �û���ÿ����վ����Ծ���,m
x=position_user(1,1)-bs.position(:,1);
y=position_user(1,2)-bs.position(:,2);
distance=sqrt(x.^2+y.^2); % ���룬m

PL=130.19+37.6*log10(distance./1000); % ·����ģ�dB
shadowing=randn(length(bs.position),1).*bs.shadowing; % ��Ӱ˥�䣬dB

% ���ն˹��ʣ�dB��Ƶ�ʸ�������1/3
signal_power=bs.P_bs-bs.HW_bs-10*log10(par.subchannel_num)-PL-shadowing;

% �������ʣ�dB
noise_power=-174+user.NF_ss+10*log10(par.bandwidth_per_subchannel)-30;

% �ྶ��Ӱ�죬dB
T=ceil(1000*rand);
fd=user.velocity/par.c*par.fc; % ������Ƶ��,Hz
ray=10*log10(MultiPath(fd,T,par));

% ���ն�SNR��dB
SNR=signal_power+ray-noise_power;
%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------