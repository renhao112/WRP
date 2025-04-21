wrpen_er_cn=zeros(size(wrpen_cn));
for i = 1:11
    wrpen_er_cn(:,i) = abs(wrpen_cn(:,i)-energy');
end
xvec = (0:4096)/1024;
fig1 = figure;
semilogy(xvec,wrpen_er_cn(:,1),'r');
hold on
semilogy(xvec,wrpen_er_cn(:,2),'g');
hold on
semilogy(xvec,wrpen_er_cn(:,3),'b ');
hold on
semilogy(xvec,wrpen_er_cn(:,4),'c ');
hold on
semilogy(xvec,wrpen_er_cn(:,5),'m ');
hold on
semilogy(xvec,wrpen_er_cn(:,6),'y ');
hold on
semilogy(xvec,wrpen_er_cn(:,7),'Color','#0072BD');
hold on
semilogy(xvec,wrpen_er_cn(:,8),'Color','#D95319');
hold on
semilogy(xvec,wrpen_er_cn(:,9),'Color','#EDB120');
hold on
semilogy(xvec,wrpen_er_cn(:,10),'Color','#7E2F8E');
hold on
semilogy(xvec,wrpen_er_cn(:,11),'Color','#77AC30');
hold off
legend('k=0','k=1','k=2','k=3','k=4','k=5','k=6','k=7','k=8','k=9','k=10');
ylim([10^(-16),10^5.5]);
xlabel('t');
ylabel('Error of energy');
%%
xvec = (0:4096)/1024;
fig2 = figure;
plot(xvec,wrpen_cn(:,1),'r')
hold on
plot(xvec,wrpen_cn(:,2),'g')
hold on
plot(xvec,wrpen_cn(:,3),'b ')
hold on
plot(xvec,wrpen_cn(:,4),'c ')
hold on
plot(xvec,wrpen_cn(:,5),'m ')
hold on
plot(xvec,wrpen_cn(:,6),'y ')
hold on
plot(xvec,wrpen_cn(:,7),'Color','#0072BD')
hold on
plot(xvec,wrpen_cn(:,8),'Color','#D95319')
hold on
plot(xvec,wrpen_cn(:,9),'Color','#EDB120')
hold on
plot(xvec,wrpen_cn(:,10),'Color','#7E2F8E')
hold on
plot(xvec,wrpen_cn(:,11),'Color','#77AC30')
hold on
plot(xvec,energy,'Color','#A2142F');
hold off
legend('k=0','k=1','k=2','k=3','k=4','k=5','k=6','k=7','k=8','k=9','k=10','ref');
ylim([0,56]);
xlabel('t');
ylabel('Energy');