clc; clear;
fid=fopen('data21.txt');
data=fscanf(fid,'%f',[9,inf])';
fclose(fid);

[r s]=size(data);
i=0;
v=data(:,2:3); q=zeros(r,1);
cas=[v,q];
[st]=dms2deg(cas);
q=0;o=0;
for n=1:r
    if any(isnan(data(n,:)))==1
        i=i+1;
        nez(i,1)=n;
    end
    if any(cas(n)<=data(n,5)|cas(n)>=data(n,7))
        q=q+1;
        nep(q,1)=n;
    end
    if data(n,4)>=90
        o=o+1;
        nep1(o,1)=n;
    end
    
end

fprintf('nezapadji hvìzdy: %d %d',nez)