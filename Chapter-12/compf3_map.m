clear all
X=9;
Y=8;
gamma1=0.3;
gamma2=0.2;
a1=0.06;
a2=0.07;
alpha=0.1;
r=8;
for n=1:r-1
X(n+1)=(gamma1.*X(n))./(1+a1.*(X(n)+alpha.*Y(n)))
Y(n+1)=(gamma2.*Y(n))./(1+a2.*(Y(n)+alpha.*X(n)))
end

t=0:1:7
figure(1)
plot(X,Y)

figure(2)
plot(t,X)
xlabel('Time'), ylabel('Density'), title('Map Simulation Problem 12.2')
hold on
plot(t,Y)
legend('X','Y')

