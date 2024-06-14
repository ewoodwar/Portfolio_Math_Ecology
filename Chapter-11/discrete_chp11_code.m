clear all
N=10;
P=11;
K=20;
g=0.25;
c=0.06;
b=0.025;
r=8;
for n=1:r-1
N(n+1)=N(n)+ g.*N(n).*(1-(N(n)./K))-c*N(n)*P(n)
P(n+1)=b.*N(n).*P(n)
end

plot(N,P)



