clear all
figure;
data=xlsread('Correlation.xlsx');
x=data(:,1);
y=data(:,2);
scatter(x,y,'.')