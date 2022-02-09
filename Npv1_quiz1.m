clear;
format long;
P1=[5*ones(1,40)];%creat 250000 cashflow
Npv =zeros(length(P1),1);
r= 0.1
for n = 0:length(P1)-1
    Npv(n+1) = P1(n+1) * (1/((1+r)^n));% divide(1+r)^n
end
Final =sum(Npv);
disp(Final);