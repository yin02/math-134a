clear all

# finite life stream annuity
P_A = 200e3; r_A = 12 / 1200; n_A = 12 * 30;
A =100

A = P_A * r_A * (1 - 1/ (1 + r_A)^n_A)^(-1);%finnite life annuity

P_A = A^(-1)*r_A * (1 - 1/ (1 + r_A)^n_A)^(-1);


%%%（抵押贷款重组）一名投资者以25万美元购买了一栋小型公寓楼。她付了5万美元的首期款
，并用30年期的固定利率抵押贷款支付余额，年利率为12%，按月复利。整整20年来，她按
照贷款条款的要求每月支付同等数额的款项。现在她有机会通过再融资来重组抵押贷款余额。
她可以借用当前余额，还清原始贷款，并为余额承担新贷款。（交易中不涉及积分或任何其他费用。）新贷款为20年期固定利率贷款，利率为9%，按
月复利，按月等额支付。假设她有一个无风险的储蓄账户，每月支付5%的复利。她应该重组抵押贷款吗？
%%%
%%25-5 =20 w 贷款 
%%P_A = 200e3; 现在的payment
%%r_A = 12 / 1200;12/12=1=0.01 12的年利率不应该这么算（年利率为12%，按月复利）0.01
%%n_A = 12 * 30;时间

r_B = 9 / 1200; n_B = 12 * 20;
B = P_240 * r_B / (1 - 1/ (1 + r_B)^n_B);
r = 5 / 1200;
PV_no_restructure = A / r * (1 - 1/ (1 + r)^(12 * 10)) PV_restructure =B/r*(1-1/(1+r)^(12*20))