%����׼��
clear,clc;
%��������
data = xlsread('data.xlsx');

%X������
jav_b1x = data(1:29,1);%ǹ���1����
jav_b2x = data(29:33,1);%ǹ���2����
jav_b3x = data(39:42,1);%ǹ���3����
jav_b4x = data(42:55,1);%ǹ���4����
handx   = data(66:70,1);%����
jav_hx   = data(56:65,1);%ǹͷ

%Y������
jav_b1y = data(1:29,2);%ǹ���1����
jav_b2y = data(29:33,2);%ǹ���2����
jav_b3y = data(39:42,2);%ǹ���3����
jav_b4y = data(42:55,2);%ǹ���4����
handy   = data(66:70,2);%����
jav_hy  = data(56:65,2);%ǹͷ
