library ieee;
use ieee.std_logic_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;

entity BCD_2_digit_7_seg_display is
	
		generic( N :integer := 5 );
		Port ( clk_i  : in  std_logic;	-- system clock
             rst_i  : in  std_logic; 	-- synchronous reset, active-high
				 data 	: in  STD_LOGIC_VECTOR (2*N-1 downto 0):= ( others => '0');
				 over_i  : in std_logic;
				 BCD_digit_1 : out STD_LOGIC_VECTOR (3 downto 0);
				 BCD_digit_2 : out STD_LOGIC_VECTOR (3 downto 0);
				 BCD_digit_3 : out STD_LOGIC_VECTOR (3 downto 0)) ;

					  
end BCD_2_digit_7_seg_display;

architecture Behavioral of BCD_2_digit_7_seg_display is
signal int_data_1 : integer := 0;
signal int_data_2 : integer := 0;
signal int_data_3 : integer := 0;


	begin
		process(clk_i, rst_i, data)
		
			begin
				if (rst_i='0' ) then  
					int_data_1 <= 0;
					int_data_2 <= 0;
					int_data_3 <= 0;
					
				elsif (clk_i'event and clk_i='1') then  
				
					int_data_1 <= conv_integer(unsigned(data)) mod 10;
					int_data_2 <= (conv_integer(unsigned(data))mod 100) / 10 ;
					int_data_3 <= (conv_integer(unsigned(data))/100) ;


				end if;	
					
					if (over_i = '1') and (rst_i='1' ) then
				
						BCD_digit_1 <= "1111";
						BCD_digit_2 <= "1111";
						BCD_digit_3 <= "1111";
						
					else
		
						BCD_digit_1 <= conv_std_logic_vector(int_data_1, 4);
						BCD_digit_2 <= conv_std_logic_vector(int_data_2, 4);
						BCD_digit_3 <= conv_std_logic_vector(int_data_3, 4);
				
					end if;
					
		end process;
		
end Behavioral;