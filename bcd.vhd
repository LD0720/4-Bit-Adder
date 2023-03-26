library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all;
 
entity bcd is 
port ( A: in STD_LOGIC_VECTOR (3 downto 0) ;
B: in STD_LOGIC_VECTOR (3 downto 0); 
CIN: in STD_LOGIC; 
SUM : out STD_LOGIC_VECTOR (4 downto 0)
);
end bcd;
  
 architecture bcd_arch of bcd is 
signal z: std_logic_vector(4 downto 0);
begin 
z <= ('0'& A)+B+CIN;
SUM <= z when (z<=9) Else Z+6;
end bcd_arch;