%% Projekt 1, Aufgabe 3
clear all;
close all;
clc;

% x = [0, 4*pi]
% y'(x) = cos(y(x)) + sin(x)
% y(x)  = -1

G           = @(h, s, yk, xkp1)    s - yk - h*cos(s) - h*sin(xkp1);
dG          = @(h, s, yk, xkp1)    h*sin(s) + 1;

h           = 0.5;
y0          = -1;
xEnd        = 4*pi;
tolerance   = 10e-8;
maxIter     = 300;

[x, y] = implizitEulerNewton(G, dG, h, xEnd, y0, tolerance, maxIter);

plot(x, y);
grid on,
grid minor;
xlabel('x');
ylabel('y');
legend('y(x)');