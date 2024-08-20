clc; clear; format long G
load ss.txt
ss=sortrows(ss,1);
[Y,X]=find(ss==68); bod68=[ss(Y,X+1),ss(Y,X+2),ss(Y,X+3)];
teziste=[mean(ss(:,2)) mean(ss(:,3)) mean(ss(:,4))];

fprintf('68 %7.2f %7.2f %.f',bod68)

fid=fopen('Rouckaf.txt','w');
fprintf(fid,'%3d %6.1f %6.1f %4.1f\n',ss');
fclose(fid);
type Rouckaf.txt

fid=fopen('ss.txt','a');
fprintf(fid,'\n souradnice teziste jsou:\n %6.2f %6.2f %5.2f',teziste');
fclose(fid);
type ss.txt