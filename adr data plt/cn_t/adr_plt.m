%% t=1
indx = 6;
xvec = 0:indx;
semilogy(xvec,wr_cn_t1(1:indx+1),'Color','#0072BD','Marker','*','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrp_cn_t1_s1(1:indx+1),'Color','#D95319','Marker','square','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrp_cn_t1_s2(1:indx+1),'Color','#77AC30','Marker','o','LineStyle',':','LineWidth',1);
hold on
ylim([10^(-4.3),10^(0)]);
legend('single WR','WRP s_0=1','WRP s_0=2');
title('T=1');
xlabel('Iteration number');
ylabel('Error');

%% T=2
indx = 6;
xvec = 0:indx;
semilogy(xvec,wr_cn_t2(1:indx+1),'Color','#0072BD','Marker','*','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrp_cn_t2_s1(1:indx+1),'Color','#D95319','Marker','square','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrp_cn_t2_s2(1:indx+1),'Color','#77AC30','Marker','o','LineStyle',':','LineWidth',1);
hold on
ylim([10^(-4.3),10^(0)]);
legend('single WR','WRP s_0=1','WRP s_0=2');
title('T=2');
xlabel('Iteration number');
ylabel('Error');

%% T=3
indx = 6;
xvec = 0:indx;
semilogy(xvec,wr_cn_t3(1:indx+1),'Color','#0072BD','Marker','*','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrp_cn_t3_s1(1:indx+1),'Color','#D95319','Marker','square','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrp_cn_t3_s2(1:indx+1),'Color','#77AC30','Marker','o','LineStyle',':','LineWidth',1);
hold on
ylim([10^(-4.3),10^(0)]);
legend('single WR','WRP s_0=1','WRP s_0=2');
title('T=3');
xlabel('Iteration number');
ylabel('Error');

%% T=4
indx = 6;
xvec = 0:indx;
semilogy(xvec,wr_cn_t4(1:indx+1),'Color','#0072BD','Marker','*','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrp_cn_t4_s1(1:indx+1),'Color','#D95319','Marker','square','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrp_cn_t4_s2(1:indx+1),'Color','#77AC30','Marker','o','LineStyle',':','LineWidth',1);
hold on
ylim([10^(-4.3),10^(0)]);
legend('single WR','WRP s_0=1','WRP s_0=2');
title('T=4');
xlabel('Iteration number');
ylabel('Error');
hold off