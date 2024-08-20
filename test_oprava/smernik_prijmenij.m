function [sm]=smernik_prijmenij(A,B)
%A-stanovisko
%B-podrobné body
if size(A,1)>1
    error('není pouze jenom jedno stanovisko')
end
dy=B(:,2)-A(1,2);
dx=B(:,3)-A(1,3);
sm=atan2(dy,dx);
sm=sm/pi*200;
for i=1:size(B,1)
    if sm(i,1)<0
        sm(i,1)=sm(i,1)+400;
    end
end


end
