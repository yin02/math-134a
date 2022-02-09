clear all;
y =.04; %y yied per period
m = 2; %m period per year
n = 200000000000000000000000000000000000000;% n period
c = 0.08/2;% coupon rate c per period

D = ((1+y)/(m*y))-(1+y+n*(c-y))/(m*c*((1+y)^n-1)+m*y);
D