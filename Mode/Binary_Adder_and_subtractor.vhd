library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Binary_Adder_and_subtractor	
 is 
	
	generic (N : integer := 5);
	
	port( CLK, RST_N, START : in std_logic;
			A, B : in std_logic_vector(N-1 downto 0 ) := (others => '0');
			M : in std_logic;
			R : out std_logic_vector(2*N-1 downto 0 ) := (others => '0');
			Remains : out std_logic_vector(2*N downto 0 ) := (others => '0');
			DONE : out std_logic := '0';
			over : out std_logic := '0');
			
end Binary_Adder_and_subtractor	
;

architecture Behave of Binary_Adder_and_subtractor	
 is

	type State_type is (S0,S1);
	signal Data_A 		 : std_logic_vector(N-1 downto 0 ) := (others => '0');
	signal Data_B 		 : std_logic_vector(N-1 downto 0 ) := (others => '0');
	signal carry 		 : std_logic_vector(N downto 0);
	signal Mode 		 : std_logic := '0';
	
	signal Data_Poduct : std_logic_vector(2*N-1 downto 0 ) := (others => '0');
	signal bit_counter : integer := 0 ;
	signal state 		 : state_type := S0;
	signal P_done 		 : std_logic := '0';
	signal S_Start 	 : std_logic := '0';
	
	begin 
	
		S_Start <= START;
		
		process(RST_N,CLK,START)
		
		begin 
			if RST_N = '0' then
			
				state <= S0;
				Data_A <= (others => '0');
				Data_B <= (others => '0');
				Data_Poduct <= (others => '0');
				R <= (others => '0');
				
			elsif rising_edge(CLK) then 
				case state is
				
					when S0 => 
						if S_Start = '0' then
						
							Data_A 	 <= A;
							Data_B 	 <= B;
							carry(0)  <= M;
							Mode		 <= M;
							state <= S1;
							
						else
						
							state <= S0;
							DONE <= '0';
							
						end if;
						
					when S1 => 

						if (bit_counter < (N) ) then 
							
							state <= S1;
							
							Data_Poduct(bit_counter) <= ((Data_A(bit_counter) xor (Data_B(bit_counter) xor Mode)) xor carry(bit_counter));
							carry(bit_counter+1) 	 <= ((( Data_A(bit_counter) xor (Data_B(bit_counter) xor Mode)) and carry(bit_counter)) or (Data_A(bit_counter) and (Data_B(bit_counter) xor Mode)));						
							bit_counter 				 <= (bit_counter + 1);
							R 	<= Data_Poduct;
							
						elsif bit_counter = (N) and Mode = '0' and carry(bit_counter) = '1' then
						
							Data_Poduct(bit_counter) <= '1' ;
							state <= S1;
							R 	<= Data_Poduct;
							bit_counter 				 <= (bit_counter + 1);
							
						else 
							
							R 				<= Data_Poduct;
							over 			<= '0';
							Remains 		<= (others => '0');
							
							if Data_B > Data_A and Mode = '1' then

								over 		<= '1';
								
							end if;
											
							bit_counter <= 0;
							Data_Poduct <= (others => '0');
							Data_A 		<= (others => '0');
							Data_B 		<= (others => '0');
							state 		<= S0;
							DONE 			<= '1';
							
						end if;
						
					when others =>
					
						state <= S0;
						
				end case;
				
			end if;
			
		end process;
end Behave;