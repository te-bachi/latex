%% Projekt 1, Aufgabe 1
clear all;
close all;
clc;

% x = [0, 4*pi]
% y'(x) = cos(y(x)) + sin(x)
% y(x)  = -1

f       = @(xk, yk) cos(yk) + sin(xk);

h       = 0.1;
y0      = -1;
xEnd    = 4*pi;

[x, y] = explicitRunge(f, h, xEnd, y0);
plot(x, y);
grid on;
grid minor;
xlabel('x');
ylabel('y');
legend('y(x)');