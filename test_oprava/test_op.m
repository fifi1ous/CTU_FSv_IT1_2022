clc; clear; format long G
fid=fopen('data3.txt');
id=fscanf(fid,'%d %d %d',[1,3]);
stanoviska=fscanf(fid,'%d %f %f',[3,id(1,1)])';
pod_bod1=fscanf(fid,'%d %f %f',[3,id(1,2)])';
pod_bod2=fscanf(fid,'%d %f %f',[3,id(1,3)])';
fclose(fid);

pod_bod1=sortrows(pod_bod1,1);
st1=stanoviska(1,:);
st2=stanoviska(2,:);
[sm1]=smernik_prijmenij(st1,pod_bod1);
[sm2]=smernik_prijmenij(st2,pod_bod2);

pod_bod11=[pod_bod1;pod_bod1(1,:)];
pod_bod22=[pod_bod2;pod_bod2(1,:)];
figure(1)
plot((-pod_bod11(:,2)),(-pod_bod11(:,3)),'-r+')
hold on
plot((-pod_bod22(:,2)),(-pod_bod22(:,3)),'-r+')
plot((-stanoviska(:,2)),(-stanoviska(:,3)),':r.')
hold off

teziste1=[sum(pod_bod1(:,2))/size(pod_bod1,1),sum(pod_bod1(:,3))/size(pod_bod1,1)];
teziste2=[sum(pod_bod2(:,2))/size(pod_bod2,1),sum(pod_bod2(:,3))/size(pod_bod2,1)];

for i=1:size(pod_bod1,1)
    A(i,:)=[st1(1,1),i,sm1(i,:)];
end
for i=1:size(pod_bod2,1)
    B(i,:)=[st2(1,1),i,sm2(i,:)];
end
C=[A;B]';
fid=fopen('test3_prijmenij.txt','w');
fprintf(fid,'%4.d %3.d %9.4f\n',C);
fclose(fid)

