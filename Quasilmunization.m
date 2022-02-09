clear;
%s is our yearly spot prices
s=[7.67 8.24 8.81 9.31 9.75 10.16 10.52 10.85 11.15 11.42 11.67 11.89]./100;
a =[100 200 300 400 500 600 700 800];
%a is our obligation cash flow stream (yearly)a=[58090060050010010010050
%Sbond price, yearly coupon payment, face value, time to maturity of our two bonds
B1=65.95;
c1=6;
B2=101.66;
c2=10;
F=100;
T1=12;
T2=5;
%Find Present value of our obligationPV=a./(1+s(1:8)(1:8);
PV = a./(1+s(1:8)).^(1:8);
P=sum(PV);
%Find Quasi Duration of our obligation
flow=a.*(1:8).*(1+s(1:8)).^(-(2:9));
D=sum(flow)/P;
%find Quasi Duration of B1
flow1= [c1*ones(1,(T1-1)) (F+c1)] .*(1:T1).*(1+s(1:T1)).^(-(2:(T1+1)));

D1=sum(flow1)/B1;
%find Quasi Duration of B2
flow2=[c2*ones(1,(T2-1)) (F+c2)].*(1:T2).*(1+s(1:T2)).^(-(2:(T2+1)));

D2=sum(flow2)/B2;
%solve our system of equations
A=[B1 B2;B1*D1 B2*D2];
B=[P;P*D];
%Solve Ax=B
X=linsolve(A, B);
X