function pdot=lotkaf(t,p)
%This is the ODE for the epidemic problem
r=0.3;
m=0.8;
pdot(1,:)=r.*(1-p(2)).*p(1);
pdot(2,:)=m.*(p(1)-1).*p(2);

