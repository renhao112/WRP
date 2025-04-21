clear;
clc;

fileID = fopen('WR_cn_t1.dat','r');
wr_cn_t1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('WR_cn_t2.dat','r');
wr_cn_t2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('WR_cn_t3.dat','r');
wr_cn_t3 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('WR_cn_t4.dat','r');
wr_cn_t4 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_cn_t1_s1_n3.dat','r');
wrp_cn_t1_s1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_cn_t1_s2_n3.dat','r');
wrp_cn_t1_s2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_cn_t2_s1_n3.dat','r');
wrp_cn_t2_s1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_cn_t2_s2_n3.dat','r');
wrp_cn_t2_s2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_cn_t3_s1_n3.dat','r');
wrp_cn_t3_s1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_cn_t3_s2_n3.dat','r');
wrp_cn_t3_s2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_cn_t4_s1_n3.dat','r');
wrp_cn_t4_s1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_cn_t4_s2_n3.dat','r');
wrp_cn_t4_s2 = fread(fileID, 'double');
fclose(fileID);






