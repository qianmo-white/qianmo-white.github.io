%�õ�����Ϻ���

%ǹ���һ���ֵ���Ϻ���
jav_b1_1 = @(x)13.68*sin(0.006531*x+1.078);
a = integral(jav_b1_1,0,1200);%��ǹ���1���ֵ����

%ǹ���4���ֵ���Ϻ���
jav_b4_1= @(x) 25.57 + 4.264*cos(x*0.00230) - 3.007 * sin(x * 0.002302);
b = integral(jav_b4_1,1750,2362);%��ǹ���4���ֵ����

%ǹͷ������Ϻ���
jav_head_121 = @(x) 13.68 * sin(x * 0.6673 +2.397);
c = integral(jav_head_121,2362,2460);%��ǹͷ���

%�����ڲ��ֵ������
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

%��ǹ�������������
area = (a + b + c +d) * 2