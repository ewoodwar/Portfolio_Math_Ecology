function pdot=comp2f(t,p)
%This is the ODE for the competition model problem 12.3
alpha=1.01;
beta=0.2;

pdot(1,:)=p(1).*(1-p(1)-alpha.*p(2)-beta.*p(3));
pdot(2,:)=p(2).*(1-beta.*p(1)-p(2)-beta.*p(3));
pdot(3,:)=p(3).*(1-alpha.*p(1)-beta.*p(2)-p(3));

