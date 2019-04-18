-- [语句标号:] 赋值目标信号 <= 表达式 when 赋值条件 else
-- { 表达式 when 赋值条件 else }
-- 表达式;

--描述多选择电路
library ieee;
use ieee.std_logic_1164.all;

entity my_mux is
  port (sel : in std_logic(0 to 1); -- 判断条件
        a,b,c,d : in std_logic(0 to 3); -- 4个输入
        y : out std_logic) ; -- 输出
end my_mux ;

architecture arch of my_mux is
begin
    y <= a when sel = "00" else -- 当 sel 为 00 时，把 a 送给 y
         b when sel = "01" else
         c when sel = "10" else
         d; -- 如果上述条件都不满足 就把 d 送给 y
end architecture arch; -- arch