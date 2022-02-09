r = 0.10;
npv = zeros(100,1); %竖着的，一列
for n = 1:100
npv(n) = sum([-1 (n + 1) / (1 + r)^n]);
%%sum([1 2]) 中间一个空格
%%ans = 3
end
[m,i] = max(npv); %m is the maxvalue, i is the index
plot(npv);
xlabel('year of harvest’);
ylabel('net present value of project'); 
title('chapter 2 exercise 5’); grid;
