function pdot=mutf(t,p)
%This is the ODE for the competition model problem 12.1
r1=0.03;
r2=0.03;
K1=1;
K2=1;
alpha12=0.5;
alpha21=0.6;
pdot(1,:)=((r1.*p(1))/K1).*(K1-p(1)-alpha12*p(2));
pdot(2,:)=((r2.*p(2))/K2).*(K2-p(2)-alpha21*p(1));

