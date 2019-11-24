%233页第6题。直接运行此脚本文件即可得到结果。
clc;
syms x f(x) T4(x) g(x) P3(x);
f(x)=2*x^4+3*x^3-x^2+1;
T4(x)=8*x^4-8*x^2+1;
g(x)=(1/8)*T4(x);
P3(x)=f(x)-g(x);
fprintf('f(x)在[1,2]上的三次最佳一致逼近多项式为:  P3(x)=');
digits(4);
disp(vpa(P3(x)));