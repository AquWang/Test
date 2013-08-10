% plot_bs_coverage.m
% 绘出基站信号覆盖强度

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function plot_bs_coverage( par,road,bs,user )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 颜色条产生 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=[0:0.2:1];
b=[0:0.2:1];
% b=[1:-0.2:0];
c=[0:0.2:1];
xx=[]; % 3列
for ia=1:length(a)
    for ib=1:length(b)
        for ic=1:length(c)
            xx=[xx;a(1,ia),b(1,ib),c(1,ic)];
        end
    end
end


% % 将颜色条随机排列
% xxx=zeros(length(xx),3);
% xx_perm = randperm(length(xx)); % 产生随机排列
% for ix=1:length(xx)
%     xxx(ix,:)=xx(xx_perm(ix),:);
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 基站覆盖范围 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BS_ID不分奇偶
for iuser_num = 1:user.num
    for ibs_num = 1:length(bs.position)
        if ibs_num == bs.service_ID(iuser_num,1)
            plot(user.all_zone(iuser_num,1),user.all_zone(iuser_num,2),...
                '.','color',xx(4*ibs_num+1,:) );
            hold on;
        end
    end
end

% 增加对标记不明显的BS_ID=2的颜色
for iuser_num = 1:user.num
    for ibs_num = 2
        if ibs_num == bs.service_ID(iuser_num,1)
            plot(user.all_zone(iuser_num,1),user.all_zone(iuser_num,2),...
                '.y');
            hold on;
        end
    end
end

%--------------------------------------------------------------------------
% % xx进行随机排列
% for iuser_num = 1:user.num
%     for ibs_num = 1:length(bs.position)
%         if ibs_num == bs.service_ID(iuser_num,1)
%             plot(user.all_zone(iuser_num,1),user.all_zone(iuser_num,2),...
%                 '.','color',xxx(4*ibs_num+1,:) );
%             hold on;
%         end
%     end
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 基站位置坐标 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(bs.position(:,1),bs.position(:,2),'k^','LineWidth',2,'MarkerSize',10,...
'MarkerFaceColor','w');





%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------