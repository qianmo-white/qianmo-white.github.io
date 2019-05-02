%数据准备
clear,clc;
%导入数据
data = xlsread('data.xlsx');

%X轴坐标
jav_b1x = data(1:29,1);%枪身第1部分
jav_b2x = data(29:33,1);%枪身第2部分
jav_b3x = data(39:42,1);%枪身第3部分
jav_b4x = data(42:55,1);%枪身第4部分
handx   = data(66:70,1);%把手
jav_hx   = data(56:65,1);%枪头

%Y轴坐标
jav_b1y = data(1:29,2);%枪身第1部分
jav_b2y = data(29:33,2);%枪身第2部分
jav_b3y = data(39:42,2);%枪身第3部分
jav_b4y = data(42:55,2);%枪身第4部分
handy   = data(66:70,2);%把手
jav_hy  = data(56:65,2);%枪头
