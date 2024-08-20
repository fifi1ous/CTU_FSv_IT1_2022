clc; clear;format long G

fid=fopen('ukol0331.txt','r');
body=fscanf(fid,'%d %f %f',[3, inf])';
fclose(fid);

[x]=find(body(:,1)>=4001)';

A=body(1:(x(1)-1),:); B=body((x(1)+1):(x(2)-1),:); C=body((x(2)+1):end,:);
pod_body=[A;B;C];

q=length(body);
for m=1:q
    if body(m,:)<=4001
        pod_body1=body(m,:);
    end
end
