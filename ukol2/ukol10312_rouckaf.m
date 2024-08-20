clc; clear; format short G
fid=fopen("ukol0312.txt",'r');

r1=length(fgets(fid)); 
r2=length(fgets(fid));
r3=length(fgets(fid));
d=r1+r2+r3;
uhly=fscanf(fid,'%*s %3f %*s %f %*s %f %*s\n',[3 inf])';
fseek(fid,d,'bof');
m=length(uhly');
naz=fscanf(fid,'%s %*s %*s %*s',[3 m])';
fclose(fid);
%%
uhlyV=(sum(uhly(:,3)))/60; uhlyM=(sum(uhly(:,2))+uhlyV)/60; uhlyS=sum(uhly(:,1))+uhlyM;
if uhlyV==1
    uhlyV=0;
end

if uhlyM<1>=2
    uhlyM=(uhlyM-1);
elseif uhlyM==1||uhlyM==2
    uhlyM=0;
end
%%
ctyruh=[uhlyS uhlyM uhlyV]; x=sum(ctyruh);
if x==360
    z='rovinny';
elseif x~=360
    z='sfericky';
end
ctyruh(1,2)=ctyruh(1,2)*60; ctyruh(1,3)=ctyruh(1,3)*60;
%%
fprintf('soucet vnitrnich uhlu = %3d° %.2d'' %4.1f'''' => %s ctyruhelnik',ctyruh,z) 
%%
fid=fopen('ukol0312_rouckaf.txt','w');
A=rand(m,1);
for n=1:m
    V=uhly(n,3)/60;
    M=(uhly(n,2)+V)/60;
    S=uhly(n,1)+M;
    A(n,1)=S;
    clear n
end
proc=(A./uhlyS).*100;
%%
for n=1:m
    fprintf(fid,'uhel %s ( = %.3d° %.2d'' %4.1f'''' ) tvori %5.2f %% souctu vnitrnich uhlu\n',naz(n,:),uhly(n,:),proc(n,:));
end
fclose(fid);
type ukol0312_rouckaf.txt





    



