clc; clear; format short g

fid = fopen('cv41.txt','r');

r1 = fgets(fid); 
r2 = fgets(fid);
dataN = fscanf(fid,'%*s %f %f %f',[3 inf])' 

dr1=length(r1);dr2=length(r2);
d=dr1+dr2;
fseek(fid,d,'bof'); 
dataS = fscanf(fid,'%s %*s %*s %*s',[3 inf])' 

fclose(fid);