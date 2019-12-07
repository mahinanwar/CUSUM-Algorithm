%%
clear;clc
load DataSetH0
load DataSetH1

u1 = mean(x1);
u0 = mean(x0);

sig0 = std(x0);
sig1 = std(x1);

%%
xs0 = sort(x0,'ascend');
xs1 = sort(x1,'ascend');

xs0=linspace(min(x0),max(x0),500);
xs1=linspace(min(x1),max(x1),500);

pd0 = normpdf(xs0,u0,sig0);
pd0 = pd0/sum(pd0);

pd1 = normpdf(xs1,u1,sig1);
pd1 = pd1/sum(pd1);
close all
plot(xs0,pd0)
hold on
plot(xs1,pd1,'r')
xlabel('x')
ylabel('f(x)')
legend('H0','H1')

%%
[yh0,xh0]=hist(x0,500);
yh0 = yh0/sum(yh0);

[yh1,xh1]=hist(x1,500);
yh1 = yh1/sum(yh1);
figure
plot(xh0,yh0)
hold on
plot(xh1,yh1,'r')
