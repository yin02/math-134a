s = [767 827 881 931 975 1016 1052 1085 1115 1142 1167 1189]/1e4;
PV_1 = [6 * ones(1,11) 106] ./ (1+s).^(1:12);
P1 = sum(PV_1);
minusPV_1_prime =[6 * ones(1,11) 106].*(1:12) .*(1+s).^-(2:13);
minusdP1 = sum(minusPV_1_prime);
D_1 = minusdP1/P1;

PV_2 = [10 * ones(1,4) 110]./(1+s(1:5)).^(1:5);
P2 = sum(PV_2);
minusPV_2_prime = [10 * ones(1,4) 110].*(1:5) .*(1+s(1:5)).^-(2:6);
minusdP2 = sum(minusPV_2_prime);
D_2 = minusdP2/P2;

pv_O = 1e6/(1+s(5))^5;
D_ob = 5/(1+s(5));
X = round(linsolve([P1 P2; P1 * D_1 P2 * D_2],...
[pv_O; pv_O* D_ob]));
