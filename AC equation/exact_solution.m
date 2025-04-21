clc;
clear;

T = 2;
Nx = 2^9; h = 1/Nx; Nt = 2^10; dt=T/Nt;

%initial value
u0 = 0.5*sin(5*pi.*(h:h:Nx*h))';

%exact solution
opts = odeset('RelTol',1e-12,'AbsTol',1e-14);
[~,u_exa] = ode45(@equation,(0:dt:Nt*dt)',u0,opts);
u_exa = u_exa';
save("exau.mat","u_exa");

function du = equation(t,y) 
Nx = 2^9; h = 1/Nx;
matA = toeplitz([-2,1,zeros(1,Nx-2)]);
matA(Nx,1) = 1; matA(1,Nx) = 1;
vare = 0.1; matA = vare^2/h^2 * matA;
du = matA*y + y -y.^3;
end
