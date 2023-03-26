LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity adder is
	PORT(Cin, x,y : IN STD_LOGIC;
	     s, Cout : OUT STD_LOGIC);
	END adder;

	
ARCHITECTURE arch of adder IS
BEGIN 
	s<= x XOR y XOR Cin;
	Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y);
END arch;	
