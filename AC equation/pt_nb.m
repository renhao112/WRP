%xvec = 2.^[2,3,4,5,6,7];
xvec = 2:7;
be_itn0 = [9,9,9,9,9,9];
bes0 = 9*ones(1,6);
be_itn1 = [7,7,7,7,7,7];
bes1 = 7*ones(1,6);
be_itn2 = [6,6,6,6,6,6];
bes2 = 6*ones(1,6);
be_itn3 = [4,4,4,5,4,4];
bes3 = 4*ones(1,6);
cn_itn0 = [12,12,12,12,12,12];
cns0 = 12*ones(1,6);
cn_itn1 = [10,10,10,10,10,10];
cns1 = 10*ones(1,6);
cn_itn2 = [8,8,8,8,8,8];
cns2 = 8*ones(1,6);
cn_itn3 = [5,5,5,5,5,5];
cns3 = 5*ones(1,6);
%% be
plot(be_itn0,'Color','#4DBEEE','Marker','*','LineStyle','-');
hold on
plot(bes0,'Color','#4DBEEE','LineStyle','-');
hold on
plot(be_itn1,'Color','#7E2F8E','Marker','o','LineStyle','--');
hold on
plot(bes1,'Color','#7E2F8E','LineStyle','--');
hold on
plot(be_itn2,'Color','#A2142F','Marker','x','LineStyle','-.');
hold on
plot(bes2,'Color','#A2142F','LineStyle','-.');
hold on
plot(be_itn3,'Color','#D95319','Marker','square','LineStyle',':');
hold on
plot(bes3,'Color','#D95319','LineStyle',':');
hold on
xticks(1:6)
xticklabels({'2^2','2^3','2^4','2^5','2^6','2^7'})
ylim([3.4,12.4])
legend('WRP \xi=0','WR \xi=0','WRP \xi=1/3','WR \xi=1/3','WRP \xi=2/3','WR \xi=2/3','WRP \xi=1','WR \xi=1')
xlabel('Number of time subintervals N')
ylabel('iteration numbers')
title('Be')
%% cn
plot(cn_itn0,'Color','#4DBEEE','Marker','*','LineStyle','-');
hold on
plot(cns0,'Color','#4DBEEE','LineStyle','-');
hold on
plot(cn_itn1,'Color','#7E2F8E','Marker','o','LineStyle','--');
hold on
plot(cns1,'Color','#7E2F8E','LineStyle','--');
hold on
plot(cn_itn2,'Color','#A2142F','Marker','x','LineStyle','-.');
hold on
plot(cns2,'Color','#A2142F','LineStyle','-.');
hold on
plot(cn_itn3,'Color','#D95319','Marker','square','LineStyle',':');
hold on
plot(cns3,'Color','#D95319','LineStyle',':');
hold on
xticks(1:6)
xticklabels({'2^2','2^3','2^4','2^5','2^6','2^7'})
ylim([4.4,14.8])
legend('WRP \xi=0','WR \xi=0','WRP \xi=1/3','WR \xi=1/3','WRP \xi=2/3','WR \xi=2/3','WRP \xi=1','WR \xi=1')
xlabel('Number of time subintervals N')
ylabel('iteration numbers')
title('CN')
%grid on