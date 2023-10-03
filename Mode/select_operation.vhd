library ieee;
use ieee.std_logic_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;

entity select_operation is 
	
	generic( N :integer := 5 );
	port(A_i_s,B_i_s 		: in std_logic_vector( N-1 downto 0);
	RST_N_i_s				: in std_logic;
	CLK_i_s					: in std_logic;
	Start_i_s				: in std_logic;
	Operation_s 			: in std_logic_vector  ( 1 downto 0);
	
	--main result
	Results_main_s 		: out std_logic_vector( 2*N-1 downto 0 ) := ( others => '0');
	Remainder_main_s		: out std_logic_vector( 2*N downto 0 ) := ( others => '0');
	DONE_o_main_s 		: out std_logic := '0';
	overflow_main_s		: out std_logic := '0');

end select_operation;

architecture Behave of select_operation is

signal Op 					: std_logic_vector  ( 1 downto 0);
--Multiplication
signal Results_Mul 			: std_logic_vector( 2*N-1 downto 0 ) := ( others => '0');
signal Remainder_Mul			: std_logic_vector( 2*N downto 0 ) := ( others => '0');
signal DONE_o_Mul 			: std_logic := '0';
signal overflow_Mul			: std_logic := '0';
--Division
signal Results_Div 			: std_logic_vector( 2*N-1 downto 0 ) := ( others => '0');
signal Remainder_Div			: std_logic_vector( 2*N downto 0 ) := ( others => '0');
signal DONE_o_Div 			: std_logic := '0';
signal overflow_Div			: std_logic := '0';
--adder
signal Results_add 			: std_logic_vector( 2*N-1 downto 0 ) := ( others => '0');
signal Remainder_add			: std_logic_vector( 2*N downto 0 ) := ( others => '0');
signal DONE_o_add 			: std_logic := '0';
signal overflow_add			: std_logic := '0';
--sub
signal Results_sub 			: std_logic_vector( 2*N-1 downto 0 ) := ( others => '0');
signal Remainder_sub			: std_logic_vector( 2*N downto 0 ) := ( others => '0');
signal DONE_o_sub 			: std_logic := '0';
signal overflow_sub			: std_logic := '0';

	begin 
	Binary_Adder : entity work.Binary_Adder_and_subtractor(Behave)
		generic map(N => N)
		port map( A 			=> A_i_s,
					 B 			=> B_i_s,
					 RST_N		=> RST_N_i_s,
					 CLK 			=> CLK_i_s,
					 START		=> Start_i_s,
					 M				=> '0',
					 
					 R 			=> Results_add,
					 DONE			=> DONE_o_add,
					 Remains 	=> Remainder_add,
					 over  		=> overflow_add);
					 
	Binary_subtractor : entity work.Binary_Adder_and_subtractor(Behave)
		generic map(N => N)
		port map( A 			=> A_i_s,
					 B 			=> B_i_s,
					 RST_N		=> RST_N_i_s,
					 CLK 			=> CLK_i_s,
					 START		=> Start_i_s,
					 M				=> '1',
					 
					 R 			=> Results_sub,
					 DONE			=> DONE_o_sub,
					 Remains 	=> Remainder_sub,
					 over  		=> overflow_sub);
		
	
	Multiplication : entity work.Multiplication(Behave)
		generic map(N => N)
		port map( A 			=> A_i_s,
					 B 			=> B_i_s,
					 RST_N		=> RST_N_i_s,
					 CLK 			=> CLK_i_s,
					 START		=> Start_i_s,
					 
					 R 			=> Results_Mul,
					 DONE			=> DONE_o_Mul,
					 Remains 	=> Remainder_Mul,
					 over  		=> overflow_Mul);
					 
	Division : entity work.Division(Behave)
		generic map(N => N)
		port map(
						A 			=> A_i_s,
						B 			=> B_i_s,
						RST_N		=> RST_N_i_s,
						CLK 		=> CLK_i_s,
						START		=> Start_i_s,
						
						Q 			=> Results_Div,
						R 			=> Remainder_Div,
						DONE		=> DONE_o_Div,
						over  	=> overflow_Div);
						
	process(RST_N_i,CLK_i,Start_i)
	
	begin 
	
		if Start_i_s = '0' or RST_N_i_s	= '0' then
					
				Op <= Operation;
						
		end if;
		
		
		if  	 (Op = "11") then	
		
			Results_main_s 					<= Results_add;
			Remainder_main_s					<= Remainder_add;
			DONE_o_main_s 					<= DONE_o_add;
			overflow_main_s					<= overflow_add;

		elsif  (Op = "10") then	
		
			Results_main_s 					<= Results_sub;
			Remainder_main_s					<= Remainder_sub;
			DONE_o_main_s 					<= DONE_o_sub;
			overflow_main_s					<= overflow_sub;			
	
		elsif  (Op = "01") then	
		
			Results_main_s 					<= Results_Mul;
			Remainder_main_s					<= Remainder_Mul;
			DONE_o_main_s 					<= DONE_o_Mul;
			overflow_main_s					<= overflow_Mul;

		elsif  (Op = "00") then	
		
			Results_main_s 					<= Results_Div;
			Remainder_main_s					<= Remainder_Div;
			DONE_o_main_s 					<= DONE_o_Div;
			overflow_main_s					<= overflow_Div;	
	
		end if;
		
	end process;

end Behave;
