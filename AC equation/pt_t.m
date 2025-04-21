%% picard
xvec = 0:16;
semilogy(xvec,wrerr_cn_t05,'Color','#0072BD','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s1_t05,'Color','#0072BD','Marker','square','LineStyle','-','LineWidth',1);
hold on

semilogy(xvec,wrerr_cn_t1,'Color','#D95319','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s1_t1,'Color','#D95319','Marker','o','LineStyle','-.','LineWidth',1);
hold on

semilogy(xvec,wrerr_cn_t15,'Color','#EDB120','LineStyle','--','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s1_t15,'Color','#EDB120','Marker','x','LineStyle','--','LineWidth',1);
hold on

semilogy(0:4,wrerr_cn_t2(1:5),'Color','#7E2F8E','LineStyle',':','LineWidth',1);
hold on
semilogy(0:4,wrpe_cn3_s1_t2(1:5),'Color','#7E2F8E','Marker','*','LineStyle',':','LineWidth',1);
hold on

ylim([10^(-7.3),10^(1)]);
legend('WR T=0.5','WRP T=0.5','WR T=1','WRP T=1','WR T=1.5','WRP T=1.5','WR T=2','WRP T=2');
title('Picard WR');
xlabel('Iteration number');
ylabel('Error');
%% newton
xvec = 0:10;
semilogy(xvec,wrerr_cn_tn1,'Color','#0072BD','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s1_tn1,'Color','#0072BD','Marker','square','LineStyle','-','LineWidth',1);
hold on

semilogy(xvec,wrerr_cn_tn2,'Color','#D95319','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s1_tn2,'Color','#D95319','Marker','o','LineStyle','-.','LineWidth',1);
hold on

semilogy(xvec,wrerr_cn_tn3,'Color','#EDB120','LineStyle','--','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s1_tn3,'Color','#EDB120','Marker','x','LineStyle','--','LineWidth',1);
hold on

semilogy(xvec,wrerr_cn_tn4,'Color','#77AC30','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s1_tn4,'Color','#77AC30','Marker','square','LineStyle','-.','LineWidth',1);
hold on

semilogy(xvec,wrerr_cn_tn10,'Color','#7E2F8E','LineStyle',':','LineWidth',1);
hold on
semilogy(0:8,wrpe_cn3_s1_tn10(1:9),'Color','#7E2F8E','Marker','*','LineStyle',':','LineWidth',1);
hold on

ylim([10^(-7.3),10^(4)]);
legend('WR T=1','WRP T=1','WR T=2','WRP T=2','WR T=3','WRP T=3','WR T=4','WRP T=4','WR T=10','WRP T=10');
title('Newton WR');
xlabel('Iteration number');
ylabel('Error');