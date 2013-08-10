% sys_par.m
% 系统参数设置

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ par, road, bs, user ] = sys_par( )

% 系统参数(System Parameter)
par.fc=2.5e9; % 载频，2.5GHz
par.bandwidth=10e6; % 带宽，10MHz
par.subchannel_num=30; % 子信道数
par.bandwidth_per_subchannel=par.bandwidth/par.subchannel_num; % 每个子信道的带宽,Hz
par.alpha_db=3; % dB
par.c=3e8; % 光速，m/s
% par.step=5; % 手机定位频率，s
par.H=[0;2;4;8;12]; % % 滞后余量：Hysteresis Margin，dB                 
                     
% 道路网络参数
road.total_length=0; % 总的道路长度，m
% road.total_length=6000; % 总的道路长度，m
% road.length=500; % 路网中每个网格的长度，m
% road.num=ceil(road.total_length/road.length); % 每行中网格个数，取过剩整数
% road.D=road.length; % 每个网格的边长，m
% road.R=road.D./2; % 每个网格边长的一半，m

% 通信网络参数，使用微基站
% 文献[3]
% 基站发射功率根据位置信息进行设置
% bs.P_bs=33-30; % 基站发射功率，dB
% bs.D_bs=500; % 基站端到端距离，unit:m
% bs.R_bs=bs.D_bs./sqrt(3); % 基站半径，m
bs.H_bs=32; % 基站高度，m
bs.HW_bs=2; % 电缆损耗(Cable loss)，dB
% bs.shadowing=8; % 阴影衰落对数标准差，dB
bs.shadowing=4; % 阴影衰落对数标准差，dB

% 车载用户参数
% user.num=1; % 整个范围内撒点数
user.NF_ss=7; % 噪声系数(Noise figure)，dB
user.H_ss=1.5; % 用户高度，m
% user.velocity=60/3.6; % 列车(用户)运行速度：60km/h






%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------