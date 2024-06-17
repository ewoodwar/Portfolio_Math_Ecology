clear all
tic
t0=0;
tf=8;
p0=[35,25];
tspan=[t0 tf];
[t,p]=ode23(@mutf,tspan,p0);

%figure(1)
%plot(t,p)
%title('')
%xlabel('N1')
%ylabel('N2')

%figure(2)
plot(p(:,1),p(:,2))
title('Recreation of Figure 13.3')
ylabel('Species 1')
xlabel('Species 2')
toc
