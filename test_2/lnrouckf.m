function [a,u]=lnrouckf(x,p)
if any(x<=0|x>2)
    error('��slo p�ekra�uje mo�n� interval 0<x<=2')
end
if p<=0||p>1
    error('p�esnost v�po�tu m� smysl ud�vat pouze pomoc� kladn�ho nenulov�ho ��sla men��ho ne� 1')
end
a=length(x);
u=length(x);
for i=1:length(x)
    n=1;
    y0=100;
    y=x(i)-1;
    while abs(y-y0)>p
        n=n+1;
        y0=y;
        y=y0+(-1)^(n+1)*(((x(i)-1)^n)/n);
    end
    a(i)=y;
    u(i)=n;
end