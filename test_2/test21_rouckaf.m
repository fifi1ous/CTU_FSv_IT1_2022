clc; clear;
x=0.1:0.01:2;
p=0.1;
[y,i]=lnrouckf(x,p);
por=log(x);
p1=1e-4;
[y2,i2]=lnrouckf(x,p1);

A=[(ones(length(x),1)*p)';x;y;i;abs(y-por)];
B=[(ones(length(x),1)*p1)';x;y2;i2;abs(y2-por)];

fprintf('\npresnost   x       ln(x)   iterace    chyba\n')
fprintf('%6.4f    %4.2f %12.8f %6.d    %f\n',A)
fprintf('\npresnost   x       ln(x)   iterace    chyba\n')
fprintf('%6.4f    %4.2f %12.8f %6.d    %f\n',B)

figure(1)
plot(x,y,'r')
hold on
plot(x,y2,'g')
title('ln x')
xlim([0.1,2]);
xlabel('èíslo')
ylabel('hodnota')
grid on
legend(num2str(p),num2str(p1),'location','southwest');
