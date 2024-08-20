clc; clear;format long G

fid=fopen('ukol0331.txt','r');
body=fscanf(fid,'%d %f %f',[3, inf])';
fclose(fid);

[x]=find(body(:,1)<=3999);
for n=1:length(x)
    PB(n,1)=body(x(n,1),1);
end

k=0;
max=max(PB);
for n=1:max
    if n~=PB
        k=k+1;
        nep(k,1)=n;
    end
end
fprintf('%3.d %3.d %3.d %3.d %3.d %3.d %3.d\n',nep);
n=30;
PB=PB';
Z=length(PB);

[PB1]=genrouckaf(n,max,PB);
NOV=sort(PB1(1,(Z+1):end));

fprintf('\n Nové body:')
fprintf('\n%3.d %3.d %3.d %3.d %3.d %3.d %3.d',NOV);
