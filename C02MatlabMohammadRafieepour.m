% Problem 1
syms x k;
s1 = symsum((-1)^k/(2*k + 1)^2, k, 1, Inf);
s2 = int(atan(x)/x,0,1);
s3 = -int(log10(x)/1+x^2,0,1);
disp(s1);
disp(s2);
disp(s3);
clear;
%%
% Problem 2


