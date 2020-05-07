alpha = 10;
%n = 1;
%u = 0.5*(sqrt(41)-1);
%v = u;

n = 2;
u = 2;
v = u;


a = (-alpha*n*v^(n-1))/((v^n+1)^2);
b = (-alpha*n*u^(n-1))/((u^n+1)^2);

J = [-1 a; b -1];

E = eig(J);
disp(J)

disp(E)