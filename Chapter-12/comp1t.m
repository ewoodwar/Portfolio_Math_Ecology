clear all
tic
t0=0;
tf=8;
p0=[7,7];
tspan=[t0 tf];
[t,p]=ode23(@comp1f,tspan,p0);

figure(1)
plot(t,p)
title('Simulation of Problem 12.1')
xlabel('Time')
ylabel('Density')

figure(2)
plot(p(:,1),p(:,2))
title('Phase Plane for Problem 12.1')
ylabel('Species 1')
xlabel('Species 2')
toc
