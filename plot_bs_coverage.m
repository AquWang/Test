% plot_bs_coverage.m
% �����վ�źŸ���ǿ��

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function plot_bs_coverage( par,road,bs,user )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ��ɫ������ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=[0:0.2:1];
b=[0:0.2:1];
% b=[1:-0.2:0];
c=[0:0.2:1];
xx=[]; % 3��
for ia=1:length(a)
    for ib=1:length(b)
        for ic=1:length(c)
            xx=[xx;a(1,ia),b(1,ib),c(1,ic)];
        end
    end
end


% % ����ɫ���������
% xxx=zeros(length(xx),3);
% xx_perm = randperm(length(xx)); % �����������
% for ix=1:length(xx)
%     xxx(ix,:)=xx(xx_perm(ix),:);
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ��վ���Ƿ�Χ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BS_ID������ż
for iuser_num = 1:user.num
    for ibs_num = 1:length(bs.position)
        if ibs_num == bs.service_ID(iuser_num,1)
            plot(user.all_zone(iuser_num,1),user.all_zone(iuser_num,2),...
                '.','color',xx(4*ibs_num+1,:) );
            hold on;
        end
    end
end

% ���ӶԱ�ǲ����Ե�BS_ID=2����ɫ
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
% % xx�����������
% for iuser_num = 1:user.num
%     for ibs_num = 1:length(bs.position)
%         if ibs_num == bs.service_ID(iuser_num,1)
%             plot(user.all_zone(iuser_num,1),user.all_zone(iuser_num,2),...
%                 '.','color',xxx(4*ibs_num+1,:) );
%             hold on;
%         end
%     end
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ��վλ������ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(bs.position(:,1),bs.position(:,2),'k^','LineWidth',2,'MarkerSize',10,...
'MarkerFaceColor','w');





%==========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------------------------------------------------------------------