clear;
f = - [4 5 3 4.3 1 1.5 2.5 .3 1 2];
intcon = 1 :10;

A = [2 3 1.5 2.2 .5 1.5 2.5 .1 .6 1;
    1 1 1 1 0 0 0 0 0 0;
    0 0 0 0 1 1 1 0 0 0;
    0 0 0 0 0 0 0 1 1 1;
    0 1 0 1 0 -1 -1 0 0 0];
b = [5 1 1 1 0]';
Aeq =[];
beq = [];
lb = zeros (10,1);
ub = ones(10,1);

x = intlinprog(f, intcon, A, b, Aeq, beq, lb, ub);
Cost = A(1,:)*x;
Npv_optimal = - f*x;