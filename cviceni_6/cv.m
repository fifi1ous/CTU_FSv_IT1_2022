clc; clear; format long G
% uhel = rand(6,1)*20
% n=length(uhel);
% 
% for i=1:n
%     if uhel(i)>=2*pi
%         while uhel(i)>=2*pi
%             fprintf('%d\n',i);
%             uhel(i)=uhel(i)-2*pi;
%         end
%     end
% end
% 
% uhel

A = rand(4,3)*20
r=size(A,1);
s=size(A,2);

for i=1:r
    for j=1:s
        while A(i,j)>=2*pi
            fprintf('radek %d, sloupec %d\n',i,j);
            A(i,j)=A(i,j)-2*pi;
        end
    end
end

A
