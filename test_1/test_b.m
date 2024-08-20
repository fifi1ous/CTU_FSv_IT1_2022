clc; clear; format long G

fid=fopen('test11b_2022.txt','r');
R1=length(fgets(fid));R2=length(fgets(fid));R3=length(fgets(fid));R4=length(fgets(fid)); 
R=R1+R2+R3+R4;
data=fscanf(fid,'%*s %d%*s %d%*s %f%*s %d%*s %d%*s %f%*s %d%*s %d%*s %f%*s\n',[9 inf])';
fseek(fid,R,'bof'); 
data2=fscanf(fid,'%s %*s%*s %*s%*s %*s%*s %*s%*s %*s\n',[3 inf])';