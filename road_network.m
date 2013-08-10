% road_network.m
% 产生道路网络层，每条道路上的采样点

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ road_ID,road_position,user_data_num,ramp ] = road_network( )

% 导入测试道路采样点信息
% 1 feet＝30.48 cm
% node_ID、x、y

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 第一条道路 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
temp=load('node_table.txt');
road_ID=temp(:,1); % time %值从7--378
road_position=temp(:,[2:3]); % feet %路的坐标
% road_position=road_position * 0.3048; % feet -> m
clear temp;
user_data_num = length(road_position);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 匝道数据ramp
ramp.No07 = load('rampNo07.txt');
ramp.No12 = load('rampNo12.txt');
ramp.No17 = load('rampNo17.txt');
ramp.No23 = load('rampNo23.txt');
ramp.No28 = load('rampNo28.txt');
ramp.No32 = load('rampNo32.txt');
ramp.No42 = load('rampNo42.txt');
ramp.No44 = load('rampNo44.txt');
ramp.No54 = load('rampNo54.txt');
ramp.No55 = load('rampNo55.txt');
ramp.No62 = load('rampNo62.txt');
ramp.No70 = load('rampNo70.txt');
ramp.No73 = load('rampNo73.txt');
ramp.No82 = load('rampNo82.txt');

ramp.No = [
    ramp.No07;
    ramp.No12;
    ramp.No17;
    ramp.No23;
    ramp.No28;
    ramp.No32;
    ramp.No42;
    ramp.No44;
    ramp.No54;
    ramp.No55;
    ramp.No62;
    ramp.No70;
    ramp.No73;
    ramp.No82;
    ];














% % 道路采样位置可视化
% plot( road_position_1(:,1), road_position_1(:,2), '.b' );
% hold on;
% plot( road_position_2(:,1), road_position_2(:,2), '.b' );








%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------