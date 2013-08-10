% road_sample.m
% 道路的原始采样数据

function [position] = road_sample()

position.beltlinehwy1 = csvread('01.csv');
position.beltlinehwy2 = csvread('02.csv');
position.beltlinehwy3 = csvread('03.csv');
position.beltlinehwy4 = csvread('04.csv');
position.beltlinehwy5 = csvread('05.csv');
position.beltlinehwy6 = csvread('06.csv');
position.beltlinehwy7 = csvread('07.csv');
position.beltlinehwy8 = csvread('08.csv');
position.beltlinehwy9 = csvread('09.csv');
position.beltlinehwy10 = csvread('10.csv');
position.beltlinehwy11 = csvread('11.csv');
position.beltlinehwy12 = csvread('m1.csv');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 单位换算 feet->m








