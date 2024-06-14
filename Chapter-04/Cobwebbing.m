%Cobwebbing for the discrete logistic equation
while 1<2 %(will run continuously)
clear all
r=input('Choose r, the bifurcation parameter, in (0,4) ');
n=input('Choose n, the number of iterations ');
x=zeros(1,n+1);
x(1)=input('Choose x(1), the initial point, in [0,1] ');
clf
s=0:0.2:1;
plot(s,s,'b')
t=0:0.01:1;
hold on
v=r.*t.*(1-t);
plot(t,v,'g')
pause(1)
w=zeros(1,3);
y=w;
for i=2:n+1
x(i)=r.*x(i-1).*(1-x(i-1));
end
plot([x(1) x(1)],[x(1) x(2)])
for i=2:n
plot([x(i-1) x(i)],[x(i) x(i)])
pause(1)
plot([x(i) x(i)],[x(i) x(i+1)])
end
xlabel('Previous value x_{n-1}')
ylabel('Updated value x_n')
title('Logistic Map x(n)=r*x(n-1)*(1-x(n-1))')
end
