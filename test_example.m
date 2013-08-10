% test_example.m
% 测试路网的绘图
% 崔亚平

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear;clc;
% close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 导入道路采样位置
node_table = load('node table.txt'); % 第三列为x坐标，第四列为y坐标
road.position = node_table(:,[2:3]); % 节点的x、y坐标
% road.position = road.position * 0.3048; % feet -> m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 道路可视化

% figure;
% plot(road.position(:,1),road.position(:,2),'.g'); % 离散的采样点
% 
% figure;
% plot(road.position(:,1),road.position(:,2),'r');  % 连续的

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 非本人增加
% 示例道路
% [position] = road_sample();
% % position = position * 0.3048; % feet -> m
% 
% line=2; % 线条宽度
% % figure;
% plot(position.beltlinehwy2(:,2),position.beltlinehwy2(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy1(:,2),position.beltlinehwy1(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy3(:,2),position.beltlinehwy3(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy4(:,2),position.beltlinehwy4(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy5(:,2),position.beltlinehwy5(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy6(:,2),position.beltlinehwy6(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy7(:,2),position.beltlinehwy7(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy8(:,2),position.beltlinehwy8(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy9(:,2),position.beltlinehwy9(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy10(:,2),position.beltlinehwy10(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy11(:,2),position.beltlinehwy11(:,3),'r','LineWidth',line);
% hold on;
% plot(position.beltlinehwy12(:,2),position.beltlinehwy12(:,3),'r','LineWidth',line);




%hold on;
%plot(position.v(:,1),position.v(:,2),'.k');

