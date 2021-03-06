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
digits()
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

fprintf('\n\n');
%% ------------------------------------------------------------------------
clear;
fprintf('Answer 3');

syms t;
x = [-5,0.1:5];
f(t) = piecewise(t>=0, -3*t^2 + 5, t<0, 3*t^2 + 5);

figure(4);
hold on;
grid on;
plot(x, f(x));

fprintf('\n\n');
%% ------------------------------------------------------------------------
clear;
fprintf('Answer 4');

A = eye(3,3) - ones(3,3);

for k=1:9
    i = int8(k/3) + 1;
    j = mod(k - 1,3) + 1;
    
    fprintf('\ni = %d\tj=%d',i,j);
    
    if j>i
        A(i,j) = i;
    end
end

fprintf('\n');
disp(A);
fprintf('\n');
%% ------------------------------------------------------------------------
clear;
fprintf('Answer 5');

A = eye(4,4);

for i=1:4
    if mod(i,2)==1
        A(i,i) = 0;
    end
end

fprintf('\n');
disp(A);
fprintf('\n');
%% ------------------------------------------------------------------------
clear;
fprintf('Answer 6');

x = [1:4:2001];
s = sum(1./(x.*(x+2)));

fprintf('\nsum = %f\n\n', s);