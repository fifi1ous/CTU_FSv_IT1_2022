clc; clear;
x1=-0.9:0.1:1;
p1=0.1;
[v,u,A]=lnrouckaf(x1,p1);
fprintf('presnost   x     ln(x+1)     iterace  chyba\n')
fprintf('  %3.1f    %4.1f %12.8f %6.f    %f\n',A)

[v1,u1,A1]=lnrouckaf(x1);
fprintf('presnost   x     ln(x+1)    iterace   chyba\n')
fprintf('%8.4f %4.1f %12.8f %6.f    %f\n',A1)