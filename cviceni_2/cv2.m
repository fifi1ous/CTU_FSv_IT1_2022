clear; clc; format long g
% data=[7.1 7.2 7.1 7.4];
% avg=mean(data);%prumer
% 
% %stredni chyba prumeru
% sm=std(data)/sqrt(length(data));
% sm1=sqrt(var(data)/length(data));
% 
% A=rand(5,3);
% sort(A')'%seøazené po radcich od nejmensiho po nejvetsi
% sort(A,2)%seøazené po radcich od nejmensiho po nejvetsi
% sort(A)%seøazené po sloupcích od nejmensiho po nejvetsi
% sort(A,'descend')% serazeni od nejvesiho po nejmensi
% sortows(A,2)% serazeni podle radku

%funkce find
% M= fix(rand(4,3)*6-4)
% 
% ind=find(M==0);
% n0 = length(ind)

%1)vygenerovat matici N na intervalu -4;4
%a) pocet nezapornych hodnot
N= fix(rand(6,4)*10-5);
ind= find(N>=0);
poc=length(ind);
disp('pocet nezapornych hodnot je:'),disp(poc);

%Nalezt radek s nejvetsim soucinem, pridat ho k matici a do výsledku vypsat
%cely radek nejvetsiho soucinu
D=prod(N',1);
max1=max(D);
Z=find(D==max1);
O=N(Z,:);
C=[N,D']
disp('vysledek je:'),disp(O);