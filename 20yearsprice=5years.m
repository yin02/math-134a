
%  x years , the price anuity
p = 20000;
r = 0.05;
n = 20;

A = r*(1+r)^n *p/((1+r)^n-1);


% then 5 years, the price 
n1 = 5;

P = A/r*(1-1/(1+r)^n1);
p;