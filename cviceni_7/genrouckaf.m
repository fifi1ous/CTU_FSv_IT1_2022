function [cb]=genrouckaf(n,m,cb)
while n~=0
    A=randi(m);
    if all(A~=cb)
        g=length(cb);
        cb(1,(g+1))=A;
        n=n-1;
    end
end
end