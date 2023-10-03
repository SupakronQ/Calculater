library ieee;
use ieee.std_logic_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;

entity Mode is 
	
	generic( N :integer := 5 );
	port(A_i,B_i 		: in std_logic_vector( N-1 downto 0);
	RST_N_i					: in std_logic;
	CLK_i					: in std_logic;
	Start_i					: in std_logic;
	Operation 			: in std_logic_vector  ( 1 downto 0);
	
	seven_seg_digit_0 : out std_logic_vector ( 6 downto 0 );
	seven_seg_digit_1 : out std_logic_vector ( 6 downto 0 );
	seven_seg_digit_2 : out std_logic_vector ( 6 downto 0 );
	seven_seg_digit_3 : out std_logic_vector ( 6 downto 0 );
	seven_seg_digit_4 : out std_logic_vector ( 6 downto 0 );
	seven_seg_digit_5 : out std_logic_vector ( 6 downto 0 ));

end Mode;

architecture Behave of Mode is

--component Binary_Adder_and_subtractor
--	
--	generic (N => N)
--	port( CLK, RST_N, START : in std_logic;
--			A, B : in std_logic_vector(N-1 downto 0 ) := (others => '0');
--			M : in std_logic;
--			R : out std_logic_vector(2*N-1 downto 0 ) := (others => '0');
--			Remains : out std_logic_vector(2*N downto 0 ) := (others => '0');
--			DONE : out std_logic := '0';
--			over : out std_logic := '0');
--end component;
--
--component Multiplication
--	
--	generic (N => N)
--	port( CLK, RST_N, START : in std_logic;
--			A, B : in std_logic_vector(N-1 downto 0 ) := (others => '0');
--			R : out std_logic_vector(2*N-1 downto 0 ) := (others => '0');
--			Remains : out std_logic_vector(2*N downto 0 ) := (others => '0');
--			over : out std_logic := '0';
--			DONE : out std_logic := '0');	
--			
--end component;
--
--component Division
--
--	generic (N => N)
--	port( CLK,RST_N,START : in std_logic;
--			A, B : in std_logic_vector( N-1 downto 0 ) := ( others => '0');
--			Q : out std_logic_vector( 2*N-1 downto 0 ) := ( others => '0');
--			R : out std_logic_vector( 2*N downto 0 ) := ( others => '0');
--			over : out std_logic := '0';
--			DONE : out std_logic := '0');
--
--			end component;
			
	
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
--main result
signal Results_main 			: std_logic_vector( 2*N-1 downto 0 ) := ( others => '0');
signal Remainder_main			: std_logic_vector( 2*N downto 0 ) := ( others => '0');
signal DONE_o_main 			: std_logic := '0';
signal overflow_main			: std_logic := '0';

-- Secsion convert

-- result
signal BCD_data_result_digit_1 : std_logic_vector ( 3 downto 0);
signal BCD_data_result_digit_2 : std_logic_vector ( 3 downto 0);
signal BCD_data_result_digit_3 : std_logic_vector ( 3 downto 0);
-- Remainder
signal BCD_data_remainder_digit_1 : std_logic_vector ( 3 downto 0);
signal BCD_data_remainder_digit_2 : std_logic_vector ( 3 downto 0);
signal BCD_data_remainder_digit_3 : std_logic_vector ( 3 downto 0);

begin 
	
	select_operation: entity work.select_operation(Behave)
	
						generic map(N => N)
						port map (A_i_s 		=> A_i;
						B_i_s						=> B_i;
						RST_N_i_s				=> RST_N_i;
						CLK_i_s					=> CLK_i,
						Start_i_s				=> Start_i;
						Operation_s				=> Operation;
						
						--main result
						Results_main 		=> Results_main;
						Remainder_main		=> Remainder_main;
						DONE_o_main 		=> DONE_o_main;
						overflow_main		=> overflow_main);


	-- Secsion convert --------------
	
	convert_binary_Results:	entity work.BCD_2_digit_7_seg_display(Behavioral)
						
											port map(
												clk_i 		=> CLK_i,
												rst_i 		=>	RST_N_i,
												data			=>	Results_main,
												over_i		=>	overflow_main,
												
												BCD_digit_1	=> BCD_data_result_digit_1,
												BCD_digit_2	=> BCD_data_result_digit_2,
												BCD_digit_3	=> BCD_data_result_digit_3);

	convert_binary_Remainder:	entity work.BCD_2_digit_7_seg_display(Behavioral)
	
											port map(
												clk_i 		=> CLK_i,
												rst_i 		=>	RST_N_i,
												data			=>	Remainder_main(2*N-1 downto 0 ),
												over_i		=>	overflow_main,
												
												BCD_digit_1	=> BCD_data_remainder_digit_1,
												BCD_digit_2	=> BCD_data_remainder_digit_2,
												BCD_digit_3	=> BCD_data_remainder_digit_3);
												
	-- Secsion display -----
	
	-- Remainder ---------------------------------------------------------
	
	seven_seg_display_0:				entity work.BDC_to_7_segmen(data_process)
											port map(
												BCD_i			=> BCD_data_remainder_digit_1,
												clk_i			=> CLK_i,
												seven_seg	=> seven_seg_digit_0);
	seven_seg_display_1:				entity work.BDC_to_7_segmen(data_process)
											port map(
												BCD_i			=> BCD_data_remainder_digit_2,
												clk_i			=> CLK_i,
												seven_seg	=> seven_seg_digit_1);
	seven_seg_display_2:				entity work.BDC_to_7_segmen(data_process)
											port map(
												BCD_i			=> BCD_data_remainder_digit_3,
												clk_i			=> CLK_i,
												seven_seg	=> seven_seg_digit_2);
	-- Results ----------------------------------------------------------
	
	seven_seg_display_3:				entity work.BDC_to_7_segmen(data_process)
											port map(
												BCD_i			=> BCD_data_result_digit_1,
												clk_i			=> CLK_i,
												seven_seg	=> seven_seg_digit_3);
	
	seven_seg_display_4:				entity work.BDC_to_7_segmen(data_process)
											port map(
												BCD_i			=> BCD_data_result_digit_2,
												clk_i			=> CLK_i,
												seven_seg	=> seven_seg_digit_4);
												
	seven_seg_display_5:				entity work.BDC_to_7_segmen(data_process)
											port map(
												BCD_i			=> BCD_data_result_digit_3,
												clk_i			=> CLK_i,
												seven_seg	=> seven_seg_digit_5);
end Behave;