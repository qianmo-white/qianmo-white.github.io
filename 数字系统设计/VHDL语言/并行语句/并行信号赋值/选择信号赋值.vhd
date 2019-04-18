--[语句标号:] with 选择表达式 select
-- 赋值目标信号 <= 表达式 when 选择值,
--     {表达式 when 选择值,}
--       表达式 when 选择值;

--描述多路选择器电路
entity my_mux is
  port (sel : in bit(0 to 1); --选择条件
        a,b,c,d : in bit(0 to 3); 
        y : out bit) ;
end my_mux;

architecture arch of my_mux is
begin
  with sel select 
   y <= a when "00", -- 当 sel 为 00 时 把 a 送给 y
   b when "01",
   c when "10",
   d when ohters; --选择值不能覆盖所有的选择表达式
end arch ;