b = [100*ones(1,10)];
for n=1 :10;
    
    b(n+1) = 100/(1+0.08)^n
end
disp(b);