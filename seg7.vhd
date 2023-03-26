LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

entity seg7 is
	port( bcd : IN STD_LOGIC_VECTOR (3 DownTo 0);
		  leds1 : out STD_logic_vector (1 To 7));
end seg7;

Architecture behaviour of seg7 is
begin
process (bcd)
begin
CASE bcd IS
			WHEN "0000" => leds1 <= "0000001";
			WHEN "0001" => leds1 <= "1001111";
			WHEN "0010" => leds1 <= "0010010";
			WHEN "0011" => leds1 <= "0000110";
			WHEN "0100" => leds1 <= "1001100";
			WHEN "0101" => leds1 <= "0100100";
			WHEN "0110" => leds1 <= "0100000";
			WHEN "0111" => leds1 <= "0001111";
			When "1000" => leds1 <= "0000000";
			WHEN others => leds1 <= "0001100";
		END CASE;
end process;
end behaviour;