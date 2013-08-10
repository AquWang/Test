% sys_par.m
% ϵͳ��������

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ par, road, bs, user ] = sys_par( )

% ϵͳ����(System Parameter)
par.fc=2.5e9; % ��Ƶ��2.5GHz
par.bandwidth=10e6; % ����10MHz
par.subchannel_num=30; % ���ŵ���
par.bandwidth_per_subchannel=par.bandwidth/par.subchannel_num; % ÿ�����ŵ��Ĵ���,Hz
par.alpha_db=3; % dB
par.c=3e8; % ���٣�m/s
% par.step=5; % �ֻ���λƵ�ʣ�s
par.H=[0;2;4;8;12]; % % �ͺ�������Hysteresis Margin��dB                 
                     
% ��·�������
road.total_length=0; % �ܵĵ�·���ȣ�m
% road.total_length=6000; % �ܵĵ�·���ȣ�m
% road.length=500; % ·����ÿ������ĳ��ȣ�m
% road.num=ceil(road.total_length/road.length); % ÿ�������������ȡ��ʣ����
% road.D=road.length; % ÿ������ı߳���m
% road.R=road.D./2; % ÿ������߳���һ�룬m

% ͨ�����������ʹ��΢��վ
% ����[3]
% ��վ���书�ʸ���λ����Ϣ��������
% bs.P_bs=33-30; % ��վ���书�ʣ�dB
% bs.D_bs=500; % ��վ�˵��˾��룬unit:m
% bs.R_bs=bs.D_bs./sqrt(3); % ��վ�뾶��m
bs.H_bs=32; % ��վ�߶ȣ�m
bs.HW_bs=2; % �������(Cable loss)��dB
% bs.shadowing=8; % ��Ӱ˥�������׼�dB
bs.shadowing=4; % ��Ӱ˥�������׼�dB

% �����û�����
% user.num=1; % ������Χ��������
user.NF_ss=7; % ����ϵ��(Noise figure)��dB
user.H_ss=1.5; % �û��߶ȣ�m
% user.velocity=60/3.6; % �г�(�û�)�����ٶȣ�60km/h






%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------