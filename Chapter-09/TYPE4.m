function dy = TYPE4(t,y,p)
  dy = zeros(2,1);
  alpha = p(1);
  beta = p(2);
  gamma = p(3);
  delta=p(4);
  dy(1) = y(1)*(1-y(1)/gamma) - (y(1)*y(2))/(((y(1).^2)./alpha)+y(1)+1);
  dy(2) = (beta*delta*y(1)*y(2))./(((y(1).^2)/alpha)+y(1)+1)-delta*y(2);
  end
