% user_occur.m
% 在定义矩形范围内随机撒点，产生用户

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ user_all_zone ] = user_occur( par,road,bs,user )

% 产生撒点的边界,m
x_min1 = min(bs.position(:,1));
x_min2 = min(user.position(:,1));
x_min = min(x_min1, x_min2)-500;
x_max1 = max(bs.position(:,1));
x_max2 = max(user.position(:,1));
x_max = max(x_max1, x_max2)+500;
y_min1 = min(bs.position(:,2));
y_min2 = min(user.position(:,2));
y_min = min(y_min1, y_min2)-500;
y_max1 = max(bs.position(:,2));
y_max2 = max(user.position(:,2));
y_max = max(y_max1, y_max2)+500;


% x_min = min(user.position(:,1));
% x_max = max(user.position(:,1));
% y_min = min(user.position(:,2));
% y_max = max(user.position(:,2));

% 整个定义矩形范围内产生的随机点(用户)位置坐标
user_all_zone = zeros(user.num,2); % 初始化

for iuser_num = 1:user.num
    x_temp = rand * ( x_max-x_min ); % x轴的随机长度
    y_temp = rand * ( y_max-y_min ); % y轴的随机长度
    x = x_min + x_temp;
    y = y_min + y_temp;
    user_all_zone(iuser_num,:) = [x,y];
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 随机产生用户的可视化
% plot( user_all_zone(:,1), user_all_zone(:,2), '.b' );
% hold on;






%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------