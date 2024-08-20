clc; clear;

A=[2 8 3.5];  %X Y Z
B=[-3 5 -6]

%slozita a delsi varianta
sAB1 = sqrt((A(1)-B(1))^2+(A(2)-B(2))^2+(A(3)-B(3))^2)

%rychlejsi varianta
deltaAB = A - B
sAB2 = sqrt(deltaAB * deltaAB')

%horizontalni vzdalenost
deltaAByx = A(1:2) - B(1:2)
sAB3 = sqrt (deltaAByx * deltaAByx')

%maticovy postup 
xyz = [2 8 3.5;-3 5 -6]

delta = xyz(1,:)-xyz(2,:)
sAB4 = sqrt (delta * delta')

disp('vzdalenost sAB =')
disp(sAB4)

