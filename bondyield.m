clear;
F = 100;
m = 2;
c = 9;
p = 99;
n = 10;

poly = [(c/m)+F c/m*ones([1, n*m-1]) -p];
r = roots(poly); %解方程
rpos = r(r>=0);
rfinal = rpos(~imag(rpos));%% only take postive roots,~除去img

lambda = (m/rfial)-m;
lambda