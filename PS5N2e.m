%Solve ODE system and plot it in the time domain
syms u(t) v(t) %establish u and v (c_a and c_r) as symbolic equations

ode1 = diff(u) == -30*u+(100+5000*u^2)/(1+u^2+v^2); %dc_a/dt
ode2 = diff(v) == -v+(1+100*u^2)/(1+u^2); %dc_r/dt

%The code runs properly with this ODE system
%ode1 = diff(u) == 3*u + 4*v;  
%ode2 = diff(v) == -4*u + 3*v;

odes = [ode1; ode2];

%initial conditions
cond1 = u(0) == 1;
cond2 = v(0) == 10;
conds = [cond1; cond2];
[uSol(t), vSol(t)] = dsolve(odes,conds); %MATLAB solver function 

%Plot solution in time domain
fplot(uSol)
hold on
fplot(vSol)
grid on
legend('c_a', 'c_r', 'Location', 'best')


