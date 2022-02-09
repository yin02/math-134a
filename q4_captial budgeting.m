outlay = [100 300 200 150 150];
pv = [200 500 300 200 250];
%coefficent vecor of the equation we want to maximize
%negative because intlingprog minizes f
f = -1*(pv - outlay);

%specifices which variables mut be intgers.
intcon = 1:5;

% The constraint matrix must satify AX ,= b
A = outlay;
b = 600;
%lower and upper bound for x repectivly
lb = zeros(5,1);
ub = ones(5,1);

%not used for this so we leave blank. 
Aeq = [];
beq=[];
%intlinporg will return optimal choice for our variables.
x = intlinprog(f, intcon, A, b , Aeq, beq, lb,ub)

%Rest of this code is solving the optimal present worth
Cost = outlay*x;
NPV_optimal = -f*x;