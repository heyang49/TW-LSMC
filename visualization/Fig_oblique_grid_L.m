load './data/L.mat';
theta = 11.3;
x_old=3:5:505*5;
y_old=3:3:207*3;
[x_old,y_old] = meshgrid(x_old,y_old);
x_new=x_old-tand(theta)*y_old;
y_new=y_old;
hold on;
h6=surf(x_new,y_new,L);
set(h6,'edgecolor','none'); 
box on;
set(gca,'linewidth',0.5)
set(gca,'Layer','top');
colormap(othercolor('RdYlGn9'));
axis([0 2400 3 621]);
caxis([0 80]);
xlabel('Time (s)')
ylabel('Location (m)')
set(gca,'ytick',[0,300,600]);
set(gca,'yticklabel',{'0','300','600'});
set(gca,'xtick',[0,600,1200,1800,2400]);
set(gca,'xticklabel',{'0','600','1200','1800','2400'});
title('TW-LSMC', 'FontWeight','bold');
text(0, 655,500, 'RMSE: 6.50');
axis xy
set(gcf,'position',[500,500, 500, 180] );