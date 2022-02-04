clear all
figure;
filename = 'compare_20011014.xlsx';
% AA,BB,CC are the sheet number for excel 
A1= 4;%SD
 A2=2;%SI12
 A3=3;%SI13
 A4=7;%SD1

%t1 are the title name
t1=1.5;
t6=2.5;
t16=3.5;
t21=4.5;
t22=5.5;
%A,B,C are the calling name
C1 = xlsread(filename,A1)%SD
C2 = xlsread(filename,A2)%SI12
C3 = xlsread(filename,A3)%SI13
C4 = xlsread(filename,A4)%SD1
f1=t1+1.5;
f2=t6+1.5;
f3=t16+1.5;
f4=t21+1.5;
f5=t22+1.5;

for i=45:105%1:1:118
 x(i)=C1(i,27);
 j=i-2;
    y1(i)=C1(i,f1);%SD
    z1(i)=C2(j,f1);%SI12
    p1(i)=C3(j,f1);%SI13
    s1(i)=C4(j,f1),%SD1
    
    y6(i)=C1(i,f2);
    z6(i)=C2(j,f2);
    p6(i)=C3(j,f2);
    s6(i)=C4(j,f2);
    
    y16(i)=C1(i,f3);
    z16(i)=C2(j,f3);
    p16(i)=C3(j,f3);
    s16(i)=C4(j,f3);
    
    y21(i)=C1(i,f4);
    z21(i)=C2(j,f4);
    p21(i)=C3(j,f4);
    s21(i)=C4(j,f4);
    
    y22(i)=C1(i,f5);
    z22(i)=C2(j,f5);
    p22(i)=C3(j,f5);
    s22(i)=C4(j,f5);
    
end 

% subplot(5,1,1,'XTickLabel',{'17:00','17:30','18:00','18:30','19:00','19:30'},...
%     'XTick',[0 15 30 45 60 75]);
% hl1 = line(x1,y1,'Color','k','Marker','o','LineStyle',':',...
%     'MarkerSize',5);
% ax1 = gca;
% set(ax1)
% ylim([60 90])
% xlim([0 117])
% ax2 = axes('Position',get(ax1,'Position'),...
%            'XAxisLocation','top',...
%            'XTickLabel',{'','','','','',''},...
%     'XTick',[0 47 94 141 188 235],...
% 'YAxisLocation','right','YTickLabel',{'','','',''},...
%            'Color','none',...
%            'XColor','k','YColor','k');
%        hl2 = line(x2,z1,'Color','k','Parent',ax2,'Marker','x','LineStyle','--');
% ylim([60 90])
% xlim([0 119])
% title([num2str(t1),' MLT'])
% hold on
q=5
subplot(q,1,1,'XTickLabel',{'','','','',''},...
    'XTick',[45 60 75 90 105]);
box('on');
hold('all');
plot(x,y1,'-ko','MarkerSize',4)
hold all
plot(x,z1,'--k+');
hold all
plot(x,p1,':k*');
hold all
plot(x,s1,':k^');
hold on
ylim([60 90])
xlim([45 105])
legend('SD-C','SI12','SI13','SD')
set(legend,'Orientation','horizontal',...
    'Position',[0.4302 0.008729 0.1679 0.03928]);
title([num2str(t1),' MLT'])
%title(t1)(' MLT')
subplot(q,1,2,'XTickLabel',{'','','','',''},...
    'XTick',[45 60 75 90 105]);
box('on');
hold('all');
plot(x,y6,'-ko','MarkerSize',4)
hold all
plot(x,z6,'--k+');
hold all
plot(x,p6,':k*');
hold all
plot(x,s6, ':k^');
hold on
ylim([60 90])
xlim([45 105])
title([num2str(t6),' MLT'])
subplot(q,1,3,'XTickLabel',{'','','','',''},...
    'XTick',[45 60 75 90 105]);
box('on');
hold('all');
 plot(x,y16,'-ko','MarkerSize',4)
 hold all
plot(x,z16,'--k+');
hold all
plot(x,p16,':k*');
hold all
plot(x,s16, ':k^');
ylabel('Latitude (Deg)');
hold on
ylim([60 90])
xlim([45 105])
title([num2str(t16),' MLT'])
subplot(q,1,4,'XTickLabel',{'','','','',''},...
    'XTick',[45 60 75 90 105]);
box('on');
hold('all');
 plot(x,y21,'-ko','MarkerSize',4)
 hold all
plot(x,z21,'--k+');
hold all
plot(x,p21,':k*');
hold all
plot(x,s21, ':k^');
hold on
ylim([60 90])
xlim([45 105])
title([num2str(t21),' MLT'])
subplot(q,1,5,'XTickLabel',{'05:30','06:00','06:30','07:00','07:30'},...
    'XTick',[45 60 75 90 105]);
box('on');
hold('all');
 plot(x,y22,'-ko','MarkerSize',4)
 hold all
plot(x,z22,'--k+');
hold all
plot(x,p22,':k*');
hold all
plot(x,s22, ':k^');
hold on
xlabel('UT (h)     ');
set(gca,'XLim',[0 10],'YLim',[0 10])
ylim([60 90])
xlim([45 105])
title([num2str(t22),' MLT'])