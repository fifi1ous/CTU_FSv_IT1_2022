function [v,u,A]=lnrouckaf(x,p)
if any(x<=-1|x>1)
    error('číslo překračuje možný interval')
end
if nargin<2
    p=1e-4;
end
if p<=0||p>1
    error('přesnost je menší, nebo rovno nula, nebo je větší než jedna')
end
k=ones(length(x),1)*p;
v=ones(length(x),1);
u=ones(length(x),1);
t=ones(length(x),1);
for n=1:length(x)
    i=1;
    y0=100;
    y=x(n);
    while abs(y-y0)>p
        i=i+1;
        y0=y;
        y=y0+(-1)^(i+1)*((x(n)^i)/i);
    end
    v(n)=y;
    u(n)=i;
    t(n)=abs(y-log(1+x(n)));
end
A=[k,x',v,u,t]';
end
