clc; clear; format short
A=rand(7,3)*16-10;
rA=size(A,1); sA=size(A,2);
RprumA=mean(A'); A=[A RprumA'];
A=sortrows(A,sA+1,'descend');
%%
B=fix(rand(4)*11-7);
I=det(B);
diagonala=diag(B); II=min(diagonala);
III=log(abs(II));
med=median(RprumA); poc=find(B>=med); IV=length(poc');
B=[B;I II III IV];
%%
AB=[A;B];
M=max(max(AB)); maxjevA=sum(sum(M==A)); 
[row,col]=find(M==AB);
poloha=[row,col]
