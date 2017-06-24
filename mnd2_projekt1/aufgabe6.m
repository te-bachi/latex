%% Projekt 1, Aufgabe 6
clear all;
close all;
clc;

f           = @(xk, yk) cos(yk) + sin(xk);
f_lin       = @(xk, yk) 1 + sin(xk);
G           = @(h, s, yk, xkp1)    s - yk - h*cos(s) - h*sin(xkp1);
dG          = @(h, s, yk, xkp1)    h*sin(s) + 1;

h           = 0.1;
y0          = -1;
xEnd        = 4*pi;
tolerance   = 10e-8;
maxIter     = 300;

[x_t,   y_t]   = implicitTrapez(f,     G, dG, h, xEnd, y0, tolerance, maxIter);
[x_lin, y_lin] = implicitTrapez(f_lin, G, dG, h, xEnd, y0, tolerance, maxIter);

plot(x_t, y_t, x_lin, y_lin);
grid on,
grid minor;

xlabel('x');
ylabel('y');
legend('y(x) implicitTrapez', 'y(x) implicitTrapez mit linearer Funktiuon');
legend('Location','southeast')