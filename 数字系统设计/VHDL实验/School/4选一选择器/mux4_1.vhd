-- 四选一数据选择器

-- 使用库
library ieee;
use ieee.std_logic_1164.all;

--实体
entity mux4_1 is
    port(s: in std_logic_vector(1 downto 0); --使用数组输入判断条件
         d: in std_logic_vector(3 downto 0) ; --使用数组输入四位数据
                 y: out std_logic); -- 输出
end mux4_1;

--结构体
architecture rtl of mux4_1 is --使用数据流结构体
   begin
      y <= d(0) when s = "00"  else  -- 当 s == 00 时 把 d(0) 送给 y
           d(1) when s = "01"  else
           d(2) when s = "10"  else
			  d(3) ;
end architecture rtl;
