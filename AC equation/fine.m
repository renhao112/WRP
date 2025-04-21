function result = fine(A,un,dt,u_old,Nm,i,alp,theta)
%FINE propagator of wrp

matI = eye(size(A));
result = un;
for k = 1:Nm
    matA = matI - theta*dt*(A + matI - diag(3*alp*u_old(:,(i-1)*Nm+k+1).^2));
    rht = theta*(3*alp-1)*dt*u_old(:,(i-1)*Nm+k+1).^3 +(1-theta)*(3*alp-1)*dt*u_old(:,(i-1)*Nm+k).^3 +(1-theta)*dt*( ...
            A + matI - diag(3*alp*u_old(:,(i-1)*Nm+k).^2))*result;
    result = matA\( result + rht);
end

end

