function [S,E] = se(k_1,k_2,Nt,N,s0)
%speedup and efficiency

S = k_1*Nt/(k_2*(s0*(Nt/N+N+1)+Nt/N));
E = S/N*100;

end

