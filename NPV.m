A = [2*ones(1,5)];
Npv =zeros(length(A),1);
final = sum(A)
for n = 0:length(A)-1
    Npv(n+1) = A(n+1);%A(n+1)代表下一个 
end
Final = sum(Npv);