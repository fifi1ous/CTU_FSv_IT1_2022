clc; clear; format long G

fid=fopen('test11a_2022.txt','r');
R=fgets(fid); R=str2num(R);
body=fscanf(fid,'%d %f %f %f %d',[R(1,2) R(1,1)])';

short= min(body(:,2)); [y x]=find(body(:,2)==short);
short=[body(y,x),body(y,x+1)];
high= max(body(:,2)); [y x]=find(body(:,2)==high);
high=[body(y,x),body(y,x+1)];

prum= mean(body(:,2)); roz=abs(prum-body(:,2));
sprum=min(roz); [y x]=find(roz==sprum);
sprum=[body(y,x),body(y,x+1)];

nad=find(body(:,2)>=300);
pocet=length(nad);

tez=[mean(body(:,3)), mean(body(:,4))];
sroz=body(:,3:4)-tez; vzdal=sqrt(sroz(:,1).^2+sroz(:,2).^2);
mvzdal=max(vzdal); [y x]=find(vzdal==mvzdal);
mvzdal=[body(y,x),mvzdal];

fprintf('nejvyssi bod:          %3d  H=%5.1f m\n',high)
fprintf('nejnizsi bod:          %3d  H=%5.1f m\n',short)
fprintf('bod se stredni vyskou: %3d  H=%5.1f m\n',sprum)
fprintf('pocet bodu nad 300m:   %3d\n',pocet)
fprintf('nejvzdalenejsi bod:    %3d  H=%3.f m\n',mvzdal)
fclose(fid);

dy=sroz(:,1); dx=sroz(:,2);
smer=atan2(dy,dx)/pi*200;
m=length(smer);
for n=1:m
    if smer(n,:)<0
        smer(n,:)=smer(n,:)+400;
    end
end
body=[body,smer];
body1=sortrows(body,6);

fid=fopen('test11a_rouckaf.txt','w');
body2=[body1(:,1),body1(:,3),body1(:,4),body1(:,6)];
fprintf(fid,'%3d %9.2f %9.2f %8.4f\n',body2');
fclose(fid);





