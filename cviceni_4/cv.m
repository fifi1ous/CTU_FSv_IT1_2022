clc; clear; format short g
fid = fopen('cv4uk.txt','r');

radek1 = fgets(fid); %ulo�� se prvn� ��dek do prom�n�
dataN = fscanf(fid,'%*s %f %f %f',[3 inf])'; %na�te pouze ��seln� hodnoty

delkaR1=length(radek1);%d�lka ��dku 1
fseek(fid,delkaR1,'bof'); %kurzorem sko��me na za��tek souboro, ale pak se �oupneme o po�et znak� v prbn�m soboru
dataS = fscanf(fid,'%s %*s %*s %*s',[3 inf])'; %mus�me ty ��sla br�t jako stringy, jinak se n�m ty p�mena berou jako ALT+kombinace ��sel

fclose(fid);