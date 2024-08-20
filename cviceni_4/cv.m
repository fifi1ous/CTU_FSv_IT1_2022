clc; clear; format short g
fid = fopen('cv4uk.txt','r');

radek1 = fgets(fid); %uloží se první øádek do promìné
dataN = fscanf(fid,'%*s %f %f %f',[3 inf])'; %naète pouze èíselné hodnoty

delkaR1=length(radek1);%délka øádku 1
fseek(fid,delkaR1,'bof'); %kurzorem skoèíme na zaèátek souboro, ale pak se šoupneme o poèet znakù v prbním soboru
dataS = fscanf(fid,'%s %*s %*s %*s',[3 inf])'; %musíme ty èísla brát jako stringy, jinak se nám ty pímena berou jako ALT+kombinace èísel

fclose(fid);