xvec = 0:10;
semilogy(xvec,wrerr_cn0,'Color','#0072BD','Marker','*','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn0_s1,'Color','#D95319','Marker','square','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn0_s2,'Color','#77AC30','Marker','o','LineStyle',':','LineWidth',1);
hold on
semilogy(xvec,wrerr_cn1,'Color','#0072BD','Marker','*','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn1_s1,'Color','#D95319','Marker','square','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn1_s2,'Color','#77AC30','Marker','o','LineStyle',':','LineWidth',1);
hold on
semilogy(xvec,wrerr_cn2,'Color','#0072BD','Marker','*','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn2_s1,'Color','#D95319','Marker','square','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn2_s2,'Color','#77AC30','Marker','o','LineStyle',':','LineWidth',1);
hold on
semilogy(xvec,wrerr_cn3,'Color','#0072BD','Marker','*','LineStyle','-','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s1,'Color','#D95319','Marker','square','LineStyle','-.','LineWidth',1);
hold on
semilogy(xvec,wrpe_cn3_s2,'Color','#77AC30','Marker','o','LineStyle',':','LineWidth',1);
hold on
semilogy(xvec,referr_cn*ones(11,1),'Color','black','LineStyle','--','HandleVisibility','off');
ylim([10^(-4.3),10^(0)]);
legend('single WR','WRP s_0=1','WRP s_0=2');
title('Be');
xlabel('Iteration number');
ylabel('Error');