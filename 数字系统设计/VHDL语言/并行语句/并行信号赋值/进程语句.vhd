-- [进程标号： ] process [(敏感信号表)]
-- [进程声明部分] 
-- begin 
-- 顺序描述语句
-- end process [进程标号]；

--[] 内为可选部分 ，进程标号的作用只是作为该进程的标识符
--敏感信号表 内的信号变化 会影响 进程的执行
--进程声明部分 用于声明 该进程要用的局部变量

--2输入与非门的设计
library ieee;
use ieee.std_logic_1164.all;

entity nand2 is
  port (a,b : in std_logic;
          c : out std_logic) ;
end nand2;

architecture arch of nand2 is
begin
    process(a,b) -- 进程 信号为 a b
    variable temp : std_logic; -- 建立一个变量 temp 
    begin
        temp : not (a and b);
        if(temp = '1') then 
        c <= temp after 6 ns; -- 6 ns 后 把 temp送给 c
        elsif (temp = '0') then
            c <= after 5 ns;  -- 5 ns 后 把 temp 送给 c
        else
            c <= temp after 6 ns;
        end if;
    end process;
end arch ; -- arch

-- 仿真的时候 after 才有用