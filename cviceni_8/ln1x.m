function [v,i]=ln1x(x,p)
if x<(-1)||x>=1
    error('èíslo pøekraèuje možný interval')
end
if p<0
    error('pøesnost je menší ne nula')
end
if nargin<2
    p=1e-4
end
i=0;

while