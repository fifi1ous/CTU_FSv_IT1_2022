clc; clear; format long G

fid=fopen('cv6.txt','r');
data=fscanf(fid,'%f %f %f %f %f',[5 inf])';
fclose(fid)
r=size(data,1); s=size(data,2);
z=zeros(r,1); Y= zeros(r,1);
%%
for n=1:r
    if data(n,5)==0
       if data(n,4)<0
           data(n,4)=data(n,4)*(-1);
           z(n)=1;
       end
       while data(n,4)>=360
           data(n,4) = data(n,4)-360;
           Y(n)=Y(n)+1;
       end
       if z(n)==1
          data(n,4)=360-data(n,4);
       end
       if z(n)~=1
          data(n,6)= Y(n)*(-1);
       end
      
           
    else
        if data(n,4)<0
           data(n,4)=data(n,4)*(-1);
           z(n)=1;
       end
       while data(n,4)>=400
           data(n,4) = data(n,4)-400;
           Y(n)=Y(n)+1;
       end
        if z(n)==1
          data(n,4)=400-data(n,4);
       end
       if z(n)~=1
          data(n,6)= Y(n)*(-1);
       end
    end
end
%%
for n=1:r
    if data(n,5)==0
        if data(n,4)<=90
            data(n,7)=1;
        elseif data(n,4)>90&&data(n,4)<=180
            data(n,7)=2;
        elseif data(n,4)>180&&data(n,4)<=270
            data(n,7)=3;
        elseif data(n,4)>270&&data(n,4)<=360
            data(n,7)=4;
        end
    else
         if data(n,4)<=100
            data(n,7)=1;
        elseif data(n,4)>100&&data(n,4)<=200
            data(n,7)=2;
        elseif data(n,4)>200&&data(n,4)<=300
            data(n,7)=3;
        elseif data(n,4)>300&&data(n,4)<=400
            data(n,7)=4;
         end
    end
end
%%
poc=0;
for n=1:r
    if data(n,1)==5
        if data(n,2)==14||data(n,2)==15
            if data(n,3)==14||data(n,3)==15
                poc=poc+1;
            end
        end
    end
end
poc
%%
% for n=1:r
%     if data(n,5)==0
%         fprintf('%d %d %d %f° %d %f %f\n',data)
%     else
%         fprintf('%d %d %d %fgon %d %f %f\n',data) 
%     end
% end

