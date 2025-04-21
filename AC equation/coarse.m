function result = coarse(A,un,dt,u_old,Nm,i,alp,theta)
%COARSE propagator of wrp

matI = eye(size(A));
matA = matI - theta*dt*(A + matI - diag(3*alp*u_old(:,i*Nm+1).^2));
rht = theta*(3*alp-1)*dt*u_old(:,i*Nm+1).^3 +(1-theta)*(3*alp-1)*dt*u_old(:,(i-1)*Nm+1).^3 +(1-theta)*dt*( ...
            A + matI - diag(3*alp*u_old(:,(i-1)*Nm+1).^2))*un;
result = matA\( un + rht);
end

