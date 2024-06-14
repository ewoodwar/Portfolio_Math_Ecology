% solving the type 4 function response model numerically (scaled version as in Mark Kot's book)
clear all
% define parameter values
alpha = 4.2;
beta = 2;
gamma = 2.8;
delta= 2.5;


p = [alpha,beta,gamma,delta]; % all parameters in one vector to pass them on to the ODE solver
Tend = 50;  % final time of the simulation
Xinit = [1.5;1.5]; % initial value of the state variables (column vector)
options = optimset(odeset('RelTol',1e-14,'AbsTol',1e-14)); % details for accuracty of the solver

% the next command actually solves the equation
[T,X] = ode23(@(t,x)TYPE4(t,x,p),[0,Tend], Xinit,optimset);

%figure(1)
%plot(T(:,1),X(:,1)), hold on
%plot(T(:,1),X(:,2)), hold off
%legend('N', 'P')

%figure(2)
plot(X(:,1),X(:,2))
