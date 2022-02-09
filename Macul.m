


y = 0.09 / 2;
a = 1/(1 + y);
c = 0.06 / 2;
n = 30 * 2;
% Luenberger equations (3.2) and (3.3)
P_1 = round(100 * (c/y*(1-a^n)+a^n),2);
D_1 = round(((1+y)/y - (1+y+n*(c-y))/(c*((1+y)^n-1)+y))/2,2); c = 0.11 / 2;
n = 10 * 2;
P_2 = round(100 * (c/y*(1-a^n)+a^n),2);
D_2 = round(((1+y)/y - (1+y+n*(c-y))/(c*((1+y)^n-1)+y))/2,2); c = 0.09 / 2;
n = 20 * 2;
P_3 = round(100 * (c/y*(1-a^n)+a^n),2);
D_3 = round(((1+y)/y - (1+y+n*(c-y))/(c*((1+y)^n-1)+y))/2,2);