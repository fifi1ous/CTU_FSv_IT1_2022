clc; clear; format long g

fid = fopen('cv42.txt','r');

r1 = fgets(fid); 
dataN = fscanf(fid,'%f %f %f %f',[4 inf])';
dataN=sortrows(dataN);

VYS=max(dataN(:,4)); MIN=min(dataN(:,4));
CMAX=dataN(find(dataN(:,4)==VYS),1);
CMIN=dataN(find(dataN(:,4)==MIN),1); 

fprintf('nejvyssi bod %3.d',CMAX)
fprintf('\nnejnizsi bod %3.d',CMIN)

fclose(fid);
CB=dataN(:,1); YX=dataN(:,2:3);H=dataN(:,4);
B=[CB';H']; A=[B;YX']';

fid2=fopen('Roucka42.txt','w');
fprintf(fid2,'%3d %4.1f %9.3f %9.3f\n',A');
fclose(fid2);


