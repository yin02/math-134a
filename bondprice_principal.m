clear all;
format long;

F = 100; %face value
lambda = 0.09; %yield to maturtiy
m = 2;% numbers of the coupon payment
n = 2*18; %numbers of coupon periods
C = 8 % yearly Coupon payment 8% bond of 100 is 8

p = F/((1+(lambda/m))^n)+(C/lambda)*(1-(1/((1+(lambda/m))^n)));
p