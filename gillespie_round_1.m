clc
clear all
tend=1000;
beta=0.01;
t(1)=0;
X(1)=5;
i= 1;

while t(end)< tend
  r1 = rand(1);
  tau=(1/beta)*log(1/r1); %pulling a random number from an exponential distribution
  t(i+1)=t(i)+tau

  r2=rand(1);

  if r2*beta <= beta
    X(i+1) = X(i) + 1

  else if r2*rate_sum > beta
  X(i+1)= X(i)
  end
 

end

i=i+1
end
plot(t,X)
hold on