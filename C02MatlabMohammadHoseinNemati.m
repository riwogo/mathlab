clc;
format long;
%% ------------------------------------------------------------------------
clear;
fprintf('Answer 1');

syms k;
syms x;

f = ((-1)^k) / ((2*k + 1)^2);
g = atan(x)/x;
h = log(x)/(1+x^2);

s = symsum(f, k, 0, Inf);
i1 = int(g, 0, 1);
i2 = -int(h, 0, 1);

fprintf('\nsum = %s, %s, %s\n\n', s, i1, i2);

fprintf('Catalan 25f = %.25f\n\n', s);
%% ------------------------------------------------------------------------
clear;
fprintf('Answer 2');

syms t;

x(t) = -0.28*t^2 + 6.5*t + 61;
y(t) = 0.18*t^2 - 8.5*t + 6.5;
r(t) = sqrt(x(t)^2 + y(t)^2);
theta(t) = diff(atan(y(t)/x(t)));

figure(1);
hold on;
grid on;
ezplot(x(t), y(t), [0,30]);

figure(2);
hold on;
grid on;
ezplot(r(t), [0,30]);

figure(3);
hold on;
grid on;
ezplot(theta(t), [0,30]);
fprintf('');
%% ------------------------------------------------------------------------
clear;
fprintf('Answer 3');

syms t;
f(t) = piecewise(t>=0, -3*t^2 + 5, t<0, 3*t^2 + 5);

ezplot(f(t));