clear all;

F1 = 100; %face value
y1 = 0.09; %yield to maturtiy
m1 = 2;% numbers of the coupon payment per year, when semiannual payments
n1 = 2 *10; %numbers of coupon periods
C1 = 11; % yearly Coupon payment 8% bond of 100 is 8
p1 = F1/((1+(y1/m1))^n1)+(C1/y1)*(1-(1/((1+(y1/m1))^n1)));
D1 = ((1+y1/m1)/(m1*y1/m1))-(1+y1/m1+n1*(C1/(m1*F1)-y1/m1))/(m1*C1/(m1*F1)...
    *((1+y1/m1)^n1-1)+m1*y1/m1);



F2 = 100; %face value
y2 = 0.09; %yield to maturtiy
m2 = 2;% numbers of the coupon payment per year, when semiannual payments
n2 = 30*2; %numbers of coupon periods, m2*30 years
C2 = 6; % yearly Coupon payment 8% bond of 100 is 8
p2 = F2/((1+(y2/m2))^n2)+(C2/y2)*(1-(1/((1+(y2/m2))^n2)));
D2 = ((1+y2/m2)/(m2*y2/m2))-(1+y2/m2+n2*(C2/(m2*F2)-y2/m2))/(m2*C2/(m2*F2)...
    *((1+y2/m2)^n2-1)+m2*y2/m2);





F = 1000; %face value
y = 0.09; %yield to maturtiy
m = 2;% numbers of the coupon payment per year, when semiannual payments
n = 2 *10; %numbers of coupon periods
C = 0; % yearly Coupon payment 8% bond of 100 is 8
p = F/((1+(y/m))^n)+(C/y)*(1-(1/((1+(y/m))^n)));
D = ((1+y/m)/(m*y/m))-(1+y/m+n*(C/(m*F)-y/m))/(m*C/(m*F)*((1+y)^n-1)+m*y/m);


A = [p1 p2; p1*D1 p2*D2];
B = [p;p*D];
X = linsolve(A,B);
X

