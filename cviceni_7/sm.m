clc; clear
dx=10; dy=10;
i=0;
while dx>0.1||dy>0.1
    i=i+1;
    dx=dx/5;
    dy=dy/2;
    fprintf('%d.iterace: dx = %5.3f m, dy = %5.3f m\n',i,dx,dy)
end

n=7;
m=30;
cb=1:2:29;

% while n~=0
%     A=randi(m);
%     if all(A~=cb)
%         g=length(cb);
%         cb(1,(g+1))=A;
%         n=n-1;
%     end
% end
[cb]=genrouckaf(n,m,cb)