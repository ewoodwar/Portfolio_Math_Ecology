#Chapter 5 model for Hutchinson Wright

function dNdt = Hutch_delayf(t,N,Z)
r=0.05;
k=100;
tau1=15;
tau2=9;
Nlag=Z(1);
dNdt=[-r.*N(1)(1-(Nlag/k))
+a.*b.*m.*(1-ylag1(1)).*ylag1(2).*exp(-r.*tau1)];


