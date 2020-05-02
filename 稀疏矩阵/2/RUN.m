clear all;
clc;
N=[];
R1=[];
T1=[];
R2=[];
T2=[];
R3=[];
T3=[];
for n=2000:2000:20000
    [res1,res2,res3,time1,time2,time3]=GBkTCOPY(n);
    disp("----------------------------------------");
    disp(n);
    fprintf("%15.12d %15.12d\n",res1,time1);
    fprintf("%15.12d %15.12d\n",res2,time2);
    fprintf("%15.12d %15.12d\n",res3,time3);
    R1=[R1 res1];
    R2=[R2 res2];
    R3=[R3 res3];
    T1=[T1 time1];
    T2=[T2 time2];
    T3=[T3 time3];
    N=[N n];
end
% [res1,res2,time1,time2]=GBkTCOPY(500);
% R1=[res1 R1];
% R2=[res2 R2];
% T1=[time1 T1];
% T2=[time2 T2];
% N=[500 N];
% [res1,res2,time1,time2]=GBkTCOPY(100);
% R1=[res1 R1];
% R2=[res2 R2];
% T1=[time1 T1];
% T2=[time2 T2];
% N=[100 N];
% [res1,res2,time1,time2]=GBkTCOPY(50);
% R1=[res1 R1];
% R2=[res2 R2];
% T1=[time1 T1];
% T2=[time2 T2];
% N=[50 N];
% 
% [res1,res2,time1,time2]=GBkTCOPY(10);
% R1=[res1 R1];
% R2=[res2 R2];
% T1=[time1 T1];
% T2=[time2 T2];
% 
% N=[10 N];
% disp(N);
figure(1)
plot(N,T1);
hold on;
plot(N,T2);
hold on;
plot(N,T3);
hold on;