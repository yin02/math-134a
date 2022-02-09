clear;
C = [ 10 7 8 6 7 5 10 8 7 100;...
    10 7 8 6 7 5 10 8 107 0;...
    10 7 8 6 7 5 110 108 0 0;...
    10 7 8 6 7 105 0 0 0 0;...
    10 7 8 106 107 0 0 0 0 0;...
    110 107 108 0 0 0 0 0 0 0];
y = [100 200 800 100 800 1200]';
p = [109 94.8 99.5 93.1 97.2 92.9 110 104 102 95.2]';
x = linprog(p',-C,-y,[],[],zeros(1,10) , inf * ones (1,10));

b =C*x;

v =linsolve(C',p);