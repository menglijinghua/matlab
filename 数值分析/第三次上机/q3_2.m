%232页第3题第2小问。直接运行此脚本文件即可得到结果。
clc;
a=1;b=2;
syms x t y;
x=(b-a)*t+a;
y=1./x;
f=matlabFunction(y);
d0=integral(f,0,1);
fprintf('f(x)的零次最佳平方逼近多项式为：P0(x)=%5.4d\n',d0);
f1=@(t)f(t).*t;
d1=integral(f1,0,1);
d=[d0;d1];
H=[1,1/2;1/2,1/3];
A=inv(H)*d;
syms x f
f=A(2)*x+A(1);
digits(4);
fprintf('f(x)的一次最佳平方逼近多项式为：P1(x)=');
disp(vpa(f));