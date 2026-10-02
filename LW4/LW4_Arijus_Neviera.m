clear;
clc;
close all;

%% Mandatory task a
x = -2:0.05:1;
y = -2:0.05:1;
[X,Y] = meshgrid(x,y);

Z = 1 - 2*X.^2 - 3*Y.^2;

figure;
surf(X,Y,Z);
colormap cool;
shading interp;
view(70,70);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');
grid on;

%% Mandatory task b
x = (2*rand(1,200)-1).*sqrt(pi/2);
y = (2*rand(1,200)-1).*sqrt(pi/2);

x = sort(x);
y = sort(y);
[X,Y] = meshgrid(x,y);

Z = sin(X.^2 + Y.^2);

figure;
surf(X,Y,Z);
colormap parula;
shading interp;
view(41,41);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = sin(x^2 + y^2)');
grid on;

%% Complementary tasks

x = -2:0.05:2;
y = -2:0.05:2;
[X,Y] = meshgrid(x,y);

Z = 1 - (X.^2 + Y.^2);

%Surface with camlight
figure;
surf(X,Y,Z);
colormap parula;
shading interp;
camlight;
lighting gouraud;
xlabel('x');
ylabel('y');
zlabel('z');
title('Surface with camlight');
grid on;

%Surface with contours underneath
figure;
surfc(X,Y,Z);
colormap parula;
shading interp;
xlabel('x');
ylabel('y');
zlabel('z');
title('Surface with contours');
grid on;

%Semitransparent surface
figure;
surf(X,Y,Z,'FaceAlpha',0.5);
colormap parula;
shading interp;
xlabel('x');
ylabel('y');
zlabel('z');
title('Semitransparent surface');
grid on;
