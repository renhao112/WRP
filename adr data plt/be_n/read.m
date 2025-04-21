clear;
clc;

fileID = fopen('wrp_be_t2_s1_n2.dat','r');
wrp_be_t2_s1_n2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t2_s1_n3.dat','r');
wrp_be_t2_s1_n3 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t2_s1_n4.dat','r');
wrp_be_t2_s1_n4 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t2_s2_n2.dat','r');
wrp_be_t2_s2_n2 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t2_s2_n3.dat','r');
wrp_be_t2_s2_n3 = fread(fileID, 'double');
fclose(fileID);

fileID = fopen('wrp_be_t2_s2_n4.dat','r');
wrp_be_t2_s2_n4 = fread(fileID, 'double');
fclose(fileID);