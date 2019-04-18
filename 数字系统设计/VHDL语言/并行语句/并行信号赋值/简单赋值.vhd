-- 赋值目标信号 <= 表达式 ;

--描述与非门

entity nand_circuit is
    port(a : in bit( 1 downto 0);
         b : out bit);
end nand_circuit;

architecture arch1 of nand_circuit is
begin
    b <= not(a(0) and a(1)); 
end arch1 ;