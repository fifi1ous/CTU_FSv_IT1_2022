clc; clear; format short G

fid=fopen('cv9uk.txt','r');
n=fscanf(fid,'%f',[1,1]);
for i=1:n
    Id(i,:)=fscanf(fid,'%s',1);
end

data=fscanf(fid,'%f',[(n+1),inf])';

lambda=data(:,1);
odr=data(:,2:end);

color='cmkrgb';

figure(1)
subplot(1,2,1);
for i=1:n
    plot(lambda,odr(:,i),[color(i),':']);
    hold on
end
hold off
xlabel('Vlnova delka [nm]');
ylabel('Odrazivost [%]');
title('Material B');
ylim([0 100]);
legend(Id,'Location','best');

subplot(2,2,2)
j=5;
plot(lambda,odr(:,j))
xlabel('Vlnova delka [nm]');
ylabel('Odrazivost [%]');
title('Material B');
legend(Id(j,:),'Location','Southeast');

subplot(2,2,4)
j=4;
plot(lambda,odr(:,j))
xlabel('Vlnova delka [nm]');
ylabel('Odrazivost [%]');
title('Material B');
legend(Id(j,:),'Location','Southeast');

