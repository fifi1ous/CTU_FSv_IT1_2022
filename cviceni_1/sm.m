clc; clear; format long g
e=[124.71 0;];
c=[48.20 83.44];
a=[-61.05 23.64];
b=[-21.89 -64.52];
d=[77.93 -91.15];

deltaab = a - b;
sab = sqrt(deltaab * deltaab');
deltaac = a - c;
sac = sqrt(deltaac * deltaac');
deltabc = b - c;
sbc = sqrt(deltabc * deltabc');
s1=(sbc+sac+sab)/2;
S1=sqrt(s1*(s1-sab)*(s1-sac)*(s1-sbc));

deltacd = c - d;
scd = sqrt(deltacd * deltacd');
deltabd = b - d;
sbd = sqrt(deltabd * deltabd');
s2=(sbc+scd+sbd)/2;
S2=sqrt(s2*(s2-sbc)*(s2-scd)*(s2-sbd));

deltace = c - e;
sce = sqrt(deltace * deltace');
deltade = d - e;
sde = sqrt(deltade * deltade');
s3=(sde+sce+scd)/2;
S3=sqrt(s3*(s3-sde)*(s3-scd)*(s3-sce));

S=S3+S2+S1;
disp('plocha parcely v m^2 je:')
disp(S)
