clear all
t0=0;
tf=100;
p0=[5,5];
tspan=[t0 tf];
[t,p]=ode23(@lotkaf,tspan,p0);

figure(1)
plot(t,p)
title('Solutions to the non-dimensionalized LV Equation')

figure(2)
plot(p(:,1),p(:,2))
title('Prey vs Predator')
ylabel('Predator')
xlabel('Prey')

