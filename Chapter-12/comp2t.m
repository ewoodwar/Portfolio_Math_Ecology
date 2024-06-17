clear all
tic
t0=0;
tf=8;
p0=[10,10,10];
tspan=[t0 tf];
[t,p]=ode23(@comp2f,tspan,p0);

figure(1)
plot(t,p)
title('Simulation of Problem 12.3')
xlabel('Time')
ylabel('Density')

toc
