clc; clear; format long g
SS4001=[1000 1000];
SO4002=[638.03 192.33];

%nacitani merenych hodnot
M4002=(261.3425);
M1=[337.1715 506.990];
M2=[36.9766 163.302];
M3=[194.2058 340.774];
M4=[255.9772 513.328];

%vypocet smerniku
DY=SO4002(1)-SS4001(1);
DX=SO4002(2)-SS4001(2);
SMr=atan2(DY,DX)+2*pi;

%prepocet na mereni
M4002r=M4002/200*pi;
M1r=M1(1)/200*pi;
M2r=M2(1)/200*pi;
M3r=M3(1)/200*pi;
M4r=M4(1)/200*pi;

%uhel na body
U1r=M1r-M4002r;
U2r=M4002r-M2r;
U3r=M4002r-M3r;
U4r=M4002r-M4r;

%smernik na body
SM1r=SMr+U1r;
SM2r=SMr-U2r;
SM3r=SMr-U3r;
SM4r=SMr-U4r;

%souradnice bodu
SBY1=SS4001(1)+sin(SM1r)*M1(2);
SBX1=SS4001(2)+cos(SM1r)*M1(2);
SB1=[SBY1 SBX1];
SBY2=SS4001(1)+sin(SM2r)*M2(2);
SBX2=SS4001(2)+cos(SM2r)*M2(2);
SB2=[SBY2 SBX2]; 
SBY3=SS4001(1)+sin(SM3r)*M3(2);
SBX3=SS4001(2)+cos(SM3r)*M3(2);
SB3=[SBY3 SBX3];
SBY4=SS4001(1)+sin(SM4r)*M4(2);
SBX4=SS4001(2)+cos(SM4r)*M4(2);
SB4=[SBY4 SBX4];
