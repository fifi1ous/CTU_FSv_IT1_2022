function [cb]=genrouckaf(n,m,cb)
%generátor n nových prvků vektoru
%vstup:
%   n-počet nových prvků
%   m-maximální číslo vektoru
%   cb-vektor původních prvků
%výstup:
%   cb-vektor původních prvků + n nových
while n~=0
    A=randi(m);
    if all(A~=cb)
        g=length(cb);
        cb(1,(g+1))=A;
        n=n-1;
    end
end