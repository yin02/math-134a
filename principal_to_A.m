clear;
p = 160000;% principal amount
n = 12*30;% number of periods remaining
r = 0.132/12;% interests rate per period

A = r*(1+r)^n *p/((1+r)^n-1);
A