clc;
N=[];
time1=[];
time2=[];
time3=[];
time4=[];
rb=[];
rc=[];
rd=[];
a=10;b=1;c=1;d=1;e=1;f=1;g=1;
n=1000;
%  for n=21000:2000:23000
% while(n==1000||n==3000||n==6000||n==9000||n==24000)
    
    N=[N,n];
    average_time=0;
%     for i=1:100
        if n==24000
            if rem(i/10,1)==0
                disp(i);
            end
        end
        [det,time]=system_det(n,a,b,c,d,e,f,g);
        average_time=average_time+time;
%     end
    fprintf("(%d��)det: %13.12d\n",n,det);
    fprintf('time��%13.12d\n',average_time/100);
    time1=[time1,average_time/100];
    fprintf('\n');
    
    
    average_time=0;
    for i=1:100
        [r2,time]=k_1(n,a,b,c,d,e,f,g);
        average_time=average_time+time;
    end
    fprintf('(%d��)k1��%13.12d\n',n,r2);
    fprintf('time��%13.12d\n',average_time/100);
    fprintf('absolute error��%13.12d\n',abs((r2-det)/det));
    time2=[time2,average_time/100];
    rb=[rb,abs((r2-det)/det)];
    fprintf('\n');
   
    
    average_time=0;
    for i=1:100
        [k2,time]=k_2(n,a,b,c,d,e,f,g);
        average_time=average_time+time;
    end
    fprintf("(%d��)k_2��%13.12d\n",n,k2);
    fprintf('time��%13.12d\n',average_time/100);
    fprintf('absolute error��%13.12d\n',abs((k2-det)/det));
    time3=[time3,average_time/100];
    rc=[rc,abs((k2-det)/det)];
    fprintf('\n');
    
    average_time=0;
    for i=1:100
        [k3,time]=k_3(n,a,b,c,d,e,f,g);
        average_time=average_time+time;
    end
    fprintf("(%d��)k_3: %13.12d\n",n,k3);
    fprintf('time��%13.12d\n',average_time/100);
    time4=[time4,average_time/100];
    fprintf('absolute error��%13.12d\n',abs((k3-det)/det));
    rd=[rd,abs((k3-det)/det)];
    fprintf('-----------------------------------\n');
%     if n==24000
%         break;
%     end
%     if n==9000
%         n=24000;
%     end
%     if n==3000||n==6000
%         n=n+3000;
%     end
%     if n==1000
%         n=n+2000;
%     end
% end
figure(1)
 plot(N,time1,'-or',N,time2,'-sb',N,time3,'-dc',N,time4,'-hm');
figure(2)
 plot(N,rb,'-*g',N,rc,'-sb',N,rd,'-dc');