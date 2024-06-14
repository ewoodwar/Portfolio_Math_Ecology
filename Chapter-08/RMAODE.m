function dy = RMAODE(t,y,p)
  dy = zeros(2,1); 
  alpha = p(1);
  beta = p(2);  
  gamma = p(3);
  dy(1) = y(1)*(1-y(1)/gamma) - y(1)*y(2)/(1+y(1));
  dy(2) = beta*y(2)*(y(1)/(1+y(1))-alpha);
  end