close all;
clc;
x =  [6 7 11 15 17 21 23 29 29 37 39];
y = [29 21 29 14 21 15 7 7 13 0 3];

hold on
plot(x,y, 'k.')

n = length(x);
sigX = sum(x);
sigY = sum(y);
sigXsq = sum(x.^2);
sigXY = sum(x.*y);

%a1 = (n.*sigXY - sigX.*sigY) ./ (n.*sigXsq - sigX.^2);
a1 = -0.3819;
xAvg = sum(x)./ n;
yAvg = sum(y) ./ n;

%a0 = yAvg - a1 .* xAvg;
a0 = 21.9885;
xp = linspace(0, 40, 100);
yp = a0 + a1.*xp;

plot(xp, yp);
plot(10, 10, 'r.');

St = sum((y - yAvg).^2);

ye = a0 + a1 .* x;
plot(x,ye,'*');
Et = ye - y;
Sr = sum(Et .^ 2);
stdErr = sqrt(Sr ./ (n - 2))

Rsq = (St - Sr) ./ St;
R = sqrt(Rsq)