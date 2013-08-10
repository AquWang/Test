% user_occur.m
% �ڶ�����η�Χ��������㣬�����û�

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ user_all_zone ] = user_occur( par,road,bs,user )

% ��������ı߽�,m
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

% ����������η�Χ�ڲ����������(�û�)λ������
user_all_zone = zeros(user.num,2); % ��ʼ��

for iuser_num = 1:user.num
    x_temp = rand * ( x_max-x_min ); % x����������
    y_temp = rand * ( y_max-y_min ); % y����������
    x = x_min + x_temp;
    y = y_min + y_temp;
    user_all_zone(iuser_num,:) = [x,y];
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % ��������û��Ŀ��ӻ�
% plot( user_all_zone(:,1), user_all_zone(:,2), '.b' );
% hold on;






%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------