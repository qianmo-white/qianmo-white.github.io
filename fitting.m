%得到的拟合函数

%枪身第一部分的拟合函数
jav_b1_1 = @(x)13.68*sin(0.006531*x+1.078);
a = integral(jav_b1_1,0,1200);%求枪身第1部分的面积

%枪身第4部分的拟合函数
jav_b4_1= @(x) 25.57 + 4.264*cos(x*0.00230) - 3.007 * sin(x * 0.002302);
b = integral(jav_b4_1,1750,2362);%求枪身第4部分的面积

%枪头部分拟合函数
jav_head_121 = @(x) 13.68 * sin(x * 0.6673 +2.397);
c = integral(jav_head_121,2362,2460);%求枪头面积

%求甚于部分的面积和
d = 0;
for i = 1:3
    if i == 1
        d = d + (jav_b2x(end)-jav_b2x(1)) * jav_b2y(end);
    elseif i == 2
        d = d + (handx(end)-handx(1)) * handy(end);    
    else
        d = d + (jav_b3x(end)-jav_b3x(1)) * jav_b3y(end);
    end
end

%标枪中轴线剖面面积
area = (a + b + c +d) * 2