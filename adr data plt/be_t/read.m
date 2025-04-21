
clear;
clc;

fileID = fopen('WR_be_t1.dat','r');
wr_be_t1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('WR_be_t2.dat','r');
wr_be_t2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('WR_be_t3.dat','r');
wr_be_t3 = fread(fileID, 'double');
fclose(fileID);

% fileID = fopen('WR_be_t4.dat','r');
% wr_be_t4 = fread(fileID, 'double');
% fclose(fileID);

fileID = fopen('wrp_be_t1_s1.dat','r');
wrp_be_t1_s1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t1_s2.dat','r');
wrp_be_t1_s2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t2_s1.dat','r');
wrp_be_t2_s1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t2_s2.dat','r');
wrp_be_t2_s2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t3_s1.dat','r');
wrp_be_t3_s1 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t3_s2.dat','r');
wrp_be_t3_s2 = fread(fileID, 'double');
fclose(fileID);

% fileID = fopen('wrp_be_t4_s1_n3.dat','r');
% wrp_be_t4_s1 = fread(fileID, 'double');
% fclose(fileID);
% 
% fileID = fopen('wrp_be_t4_s2_n3.dat','r');
% wrp_be_t4_s2 = fread(fileID, 'double');
% fclose(fileID);
