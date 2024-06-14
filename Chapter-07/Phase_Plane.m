r = 0.3;
m = 0.6;
% Y is essentially [da/dt,db/dt]
f = @(t,Y) [r.*(1-Y(2)).*Y(1); m.*(Y(1)-1).*Y(2)];
% for plotting the vector field using quiver
y1 = linspace(0,1,10);
y2 = linspace(0,1,10);
[x,y] = meshgrid(y1,y2);
u = zeros(size(x));
v = zeros(size(x));
t=0;
for i = 1:numel(x)
    % Calculating gradient value for a and b
    Yprime = f(t,[x(i); y(i)]);
    u(i) = Yprime(1);
    v(i) = Yprime(2);
end
quiver(x,y,u,v,'r');
hold on
% Plotting the integrated value
for y10 = [0 0.3 0.5 0.7 0.8 1 1.2 2.1 3.1 3.8]
    [ts,ys] = ode45(f,[0,4],[y10;0]);
    plot(ys(:,1),ys(:,2),'k-')
end
for y20 = [0 0.35 0.65 0.8 1.2 1.7 2.1 2.6 3.2 3.9]
    [ts,ys] = ode45(f,[0,4],[0;y20]);
    plot(ys(:,1),ys(:,2),'k-')
end
axis([0 1 0 1])
hold off
