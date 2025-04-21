% general waveform relaxation method for Allen-Cahn equation
% WR for linearization
% formulation: u_t=\var^2 u_xx + u - u^3, \var=0.1
% x \in [0,1] periodic boundary condition
% t \in [0,T] u_0 = 0.5 sin(5*pi*x)
% central difference method and linear theta method

%% initial setting
%u_t = \var^2 / h^2 *Au + u - u^3
clear;
clc;

T = 4;
inds = 8; %isp = 2^(9-inds);  
Nx = 2^inds; h = 1/Nx; Nt = 2^10*T; dt = T/Nt;
matA = toeplitz([-2,1,zeros(1,Nx-2)]);
matA(Nx,1) = 1; matA(1,Nx) = 1;
vare = 0.01; matA = vare^2/h^2 * matA;
matI = eye(Nx);

%initial value
u0 = 0.5*sin(5*pi.*(h:h:Nx*h))';

%giving the exact solution
opts = odeset('RelTol',1e-10,'AbsTol',1e-12);
[~,u_exa] = ode45(@equation,(0:dt:Nt*dt)',u0,opts);
u_exa = u_exa';

% energy = zeros(1,Nt+1);
% for i = 1:Nt+1
%     energy(i) = -vare^2/2*u_exa(:,i)'*matA*u_exa(:,i)+1/4*sum((u_exa(:,i).^2-1).^2);
% end
% energy=energy*h;
% plot(energy)
%save("exau.mat","u_exa");
% load("exau.mat");
% uexa = u_exa(isp:isp:2^9,1:isp:(2^10+1));
%% solving by linear theta method with nonlinear term to generate the reference solution
ref = [u0,zeros(Nx,Nt)]; 
u_old = u0;
theta = 2/2; %linear theta parameter: 1 for backward Euler, 1/2 for CN
for i = 1:Nt
    tpres = 1;    
    %newton iteration
    while tpres>10^(-10) 
        tpmat = matI-theta*dt*(matA + matI - diag(3*u_old.^2));
        u_new = tpmat\(ref(:,i) + 2*theta*dt*u_old.^3 +(1-theta)*dt*(matA + matI - diag(ref(:,i).^2))*ref(:,i));
        tpres = norm(u_new-u_old);
        u_old = u_new;
    end
    ref(:,i+1) = u_old;
end
%referr_cn = Max_infty_norm(u_exa,ref);

energy_be = zeros(1,Nt+1);
for i = 1:Nt+1
    energy_be(i) = -vare^2/2*ref(:,i)'*matA*ref(:,i)+1/4*sum((ref(:,i).^2-1).^2);
end
%energy=energy*h;

save("energy_refer_be","energy_be");

% hold on
%% WR based on linear theta method
alp = 3/3;      %quasi newton parameter: 0/3 for Picard, 3/3 for Newton
theta = 2/2;   %linear theta paramerter
writ = 10; wrerr_cn_tn10 = zeros(writ+1,1);
u_new = u0*ones(1,Nt+1); u_old = u_new;
wrerr_cn_tn10(1) = Max_infty_norm(u_new,u_exa); % wr iteration error

wren_be = zeros(Nt+1,writ+1);    %energy decay of each wr iteration 
for i = 1:Nt+1
    wren_be(i,1) = -vare^2/2*u_new(:,i)'*matA*u_new(:,i)+1/4*sum((u_new(:,i).^2-1).^2);
end

for k = 1:writ
    for j = 1:Nt
        tpmat = matI - theta*dt*(matA + matI - diag(3*alp*u_old(:,j+1).^2));
        tprht = theta*(3*alp-1)*dt*u_old(:,j+1).^3 +(1-theta)*(3*alp-1)*dt*u_old(:,j).^3 +(1-theta)*dt*( ...
            matA + matI - diag(3*alp*u_old(:,j).^2))*u_new(:,j);
        u_new(:,j+1) = tpmat\(u_new(:,j) + tprht);
    end
   
    %wrerr_cn_tn10(k+1) = Max_infty_norm(u_new,u_exa);

    for i = 1:Nt+1
    wren_be(i,k+1) = -vare^2/2*u_new(:,i)'*matA*u_new(:,i)+1/4*sum((u_new(:,i).^2-1).^2);
    end

    % if abs(wrerr_cn3(k+1)-wrerr_cn3(k))<0.1*referr_cn
    %     break;
    % end
    u_old = u_new;
end
%save("wr_cntn10","wrerr_cn_tn10");
save("wren_be","wren_be");

%% WRP based on linear theta method
wrpn = 10; wrpe_cn3_s1_tn10 = zeros(wrpn+1,1);
u_new = u0*ones(1,Nt+1); u_old = u_new;
wrpe_cn3_s1_tn10(1) = Max_infty_norm(u_new,u_exa);
%energy decay of wrp iteration
wrpen_be = zeros(Nt+1,writ+1);     
for i = 1:Nt+1
    wrpen_be(i,1) = -vare^2/2*u_new(:,i)'*matA*u_new(:,i)+1/4*sum((u_new(:,i).^2-1).^2);
end
%temporal decompose
Nc = 2^5*T; Nm = Nt/Nc; cdt = Nm*dt;  
uc = u0*ones(1,Nc+1); uctp = uc; pn = 1;
for k = 1:wrpn
    %parareal iteration
    for j = 1:pn
        for i = 1:Nc
            uc(:,i+1) = coarse(matA,uc(:,i),cdt,u_old,Nm,i,alp,theta) - coarse(matA,uctp(:,i),cdt, ...
                u_old,Nm,i,alp,theta) + fine(matA,uctp(:,i),dt,u_old,Nm,i,alp,theta);
        end
        uctp = uc;
    end
    %extension
    for i = 1:Nc
        u_new(:,(i-1)*Nm+1) = uc(:,i); 
        for j =1:Nm
            tpmat = matI -theta*dt*(matA + matI - diag(3*alp*u_old(:,(i-1)*Nm+j+1).^2));
            rht = theta*(3*alp-1)*dt*u_old(:,(i-1)*Nm+j+1).^3 +(1-theta)*(3*alp-1)*dt*u_old(:,(i-1)*Nm+j).^3 +(1-theta)*dt*( ...
            matA + matI - diag(3*alp*u_old(:,(i-1)*Nm+j).^2))*u_new(:,(i-1)*Nm+j);
            u_new(:,(i-1)*Nm+1+j) = tpmat\(u_new(:,(i-1)*Nm+j) + rht);
        end
        uctp(:,i+1) = u_new(:,i*Nm+1);
    end

    %wrpe_cn3_s1_tn10(k+1) = Max_infty_norm(u_new,u_exa);
    %energy
    for i = 1:Nt+1
    wrpen_be(i,k+1) = -vare^2/2*u_new(:,i)'*matA*u_new(:,i)+1/4*sum((u_new(:,i).^2-1).^2);
    end

    % if abs(wrpe_cn3_s1_t05(k+1)-wrpe_cn3_s1_t05(k))<0.1*referr_cn
    %     break;
    % end
    u_old = u_new;
end
%save("wrp_cn_s1_tn10","wrpe_cn3_s1_tn10");
save("wrpen_be","wrpen_be");

function du = equation(t,y) 
Nx = 2^8; h = 1/Nx;
matA = toeplitz([-2,1,zeros(1,Nx-2)]);
matA(Nx,1) = 1; matA(1,Nx) = 1;
vare = 0.01; matA = vare^2/h^2 * matA;
du = matA*y + y -y.^3;
end

    


