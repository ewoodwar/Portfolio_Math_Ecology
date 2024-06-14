r=2.2
m=1.5
x = linspace(0,10);
y = linspace(0,10);
[X,Y] = meshgrid(x,y);
Z = r.*(log(Y)-Y)-m.*(X-log(X));
contour(Z)


