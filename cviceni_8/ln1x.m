function [v,i]=ln1x(x,p)
if x<(-1)||x>=1
    error('��slo p�ekra�uje mo�n� interval')
end
if p<0
    error('p�esnost je men�� ne nula')
end
if nargin<2
    p=1e-4
end
i=0;

while