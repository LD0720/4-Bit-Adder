LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

entity adder4 IS
	port (bigCin :IN STD_LOGIC;
			x,y :IN STD_LOGIC_vector (3 DOWNTO 0);
			S :OUt STD_LOGIC_vector (3 DOWNTO 0);
			Cout : OUT STD_LOGIC;
			leds , leds2 : OUT STD_logic_vector ( 1 to 7));
		END adder4; 
		
ARCHITECTURE Structure OF adder4 IS
	SIGNAL C: STD_LOGIC_VECTor(1 TO 3);
	signal f: std_logic_vector (4 downto 0);
	signal z : STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal a : STD_logic;
	signal sum : STD_logic_vector (3 downto 0);
	
	component Adder 
		PORT(Cin, x,y : IN STD_LOGIC;
	     s, Cout : OUT STD_LOGIC);
		 END component;
   
	component seg7
		port(bcd :IN std_logic_vector(3 DownTo 0);
			leds1 : out std_logic_vector(1 To 7));
		 END component;
		 
		 
	BEGIN 
	stage0: Adder PORT MAP (bigCin, X(0), Y(0), sum(0),C(1)); 
	stage1: Adder PORT MAP (C(1), X(1), Y(1), sum(1),C(2));
	stage2: Adder PORT MAP (C(2), X(2), Y(2), sum(2),C(3));
	stage3: Adder PORT MAP (C(3), X(3), Y(3), sum(3),a );
	Cout <= a;
	S <= sum;
	f <= a & sum(3 downto 0);
	PROCESS (f)
	Begin 
	case f is
                when "00000" => z <= "00000000";
                when "00001" => z <= "00000001";
                when "00010" => z <= "00000010";
                when "00011" => z <= "00000011";
                when "00100" => z <= "00000100";
                when "00101" => z <= "00000101";
                when "00110" => z <= "00000110";
                when "00111" => z <= "00000111";
                when "01000" => z <= "00001000";
                when "01001" => z <= "00001001";
					 when "01010" => z <= "00010000";
					 when "01011" => z <= "00010001";
					 when "01100" => z <= "00010010";
					 when "01101" => z <= "00010011";
					 when "01110" => z <= "00010100";
					 when "01111" => z <= "00010101";
					 when "10000" => z <= "00010110";
					 when "10001" => z <= "00010111";
					 when "10010" => z <= "00011000";
					 when "10011" => z <= "00011001";
					 when "10100" => z <= "00100000";
					 when "10101" => z <= "00100001";
					 when "10110" => z <= "00100010";
					 when "10111" => z <= "00100011";
					 when "11000" => z <= "00100100";
					 when "11001" => z <= "00100101";
					 when "11010" => z <= "00100110";
					 when "11011" => z <= "00100111";
					 when "11100" => z <= "00101000";
					 when "11101" => z <= "00101001";
					 when others  => z <= "00110000";
            end case;
END PROCESS;
	 
	stage6 : seg7 PORT MAP ( z(3 downto 0) , leds);
	stage7 : seg7 port MAP ( z(7 downto 4) , leds2);
	
END Structure;	

