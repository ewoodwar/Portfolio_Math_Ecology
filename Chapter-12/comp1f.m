function pdot=comp1f(t,p)
%This is the ODE for the competition model problem 12.1
r1=0.3;
r2=0.3;
K1=50;
K2=50;
alpha12=0.1;
alpha21=0.1;
pdot(1,:)=r1.*p(1).*(1-(p(1)+alpha12*p(2)/K1));
pdot(2,:)=r2.*p(2).*(1-alpha21.*(p(1)/K2));

