%% Projekt 1, Aufgabe 4
clear all;
close all;
clc;

f           = @(xk, yk) cos(yk) + sin(xk);
G           = @(h, s, yk, xkp1)    s - yk - h*cos(s) - h*sin(xkp1);
dG          = @(h, s, yk, xkp1)    h*sin(s) + 1;

h           = 0.5;
y0          = -1;
xEnd        = 4*pi;
tolerance   = 10e-8;
maxIter     = 300;

[x, y] = implicitTrapez(f, G, dG, h, xEnd, y0, tolerance, maxIter);

plot(x, y);
grid on,
grid minor;
xlabel('x');
ylabel('y');
legend('y(x)');
