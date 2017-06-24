%% Projekt 1, Aufgabe 5
clear all;
close all;
clc;

f           = @(xk, yk) cos(yk) + sin(xk);
G           = @(h, s, yk, xkp1)    s - yk - h*cos(s) - h*sin(xkp1);
dG          = @(h, s, yk, xkp1)    h*sin(s) + 1;

h           = 1;
y0          = -1;
xEnd        = 4*pi;
tolerance   = 10e-8;
maxIter     = 300;

[x_r, y_r] = explicitRunge(f, h, xEnd, y0);
[x_e, y_e] = implizitEulerNewton(G, dG, h, xEnd, y0, tolerance, maxIter);
[x_t, y_t] = implicitTrapez(f, G, dG, h, xEnd, y0, tolerance, maxIter);

plot(x_r, y_r, x_e, y_e, x_t, y_t);
grid on,
grid minor;

xlabel('x');
ylabel('y');
legend('y(x) explicitRunge', 'y(x) implizitEulerNewton', 'y(x) implicitTrapez');
legend('Location','southeast')