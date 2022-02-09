clear all;
format long;
A = 107;
r = 0.05/12
n = 12 *5 %5 years

%loan amount (present value)
P = A/r*(1-1/(1+r)^n);
P