-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/30/2018 12:11:01"
                                                            
-- Vhdl Test Bench template for design  :  recSeq
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY recSeq_vhd_tst IS
END recSeq_vhd_tst;
ARCHITECTURE recSeq_arch OF recSeq_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT recSeq
	PORT (
	CLOCK : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	S : OUT STD_LOGIC;
	X : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : recSeq
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	RESET => RESET,
	S => S,
	X => X
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once   
      -- ciclo do clock 1 (A->B)
      CLOCK <= '1';
      RESET <= '0';
      X <= '1';
      wait for 100 ns;
      
      -- ciclo do clock 2 (B->C)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;
      
      -- ciclo do clock 3 (C->D)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      
      -- ciclo do clock 4 (D->E)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      
      -- ciclo do clock 5 (E->B)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;

      -- ciclo do clock 6 (B->C)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;

      -- ciclo do clock 7 (C->D)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;

      -- ciclo do clock 8 (D->E)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;

      -- ciclo do clock 9 (reset: E->A)
      CLOCK <= '0';
      RESET <= '1';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '1';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;

      -- ciclo do clock 10 (A->B)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;

      -- ciclo do clock 11 (B->B)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;

      -- ciclo do clock 12 (B->C)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;

      -- ciclo do clock 13 (C->A)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;

       -- ciclo do clock 14 (A->B)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;

      -- ciclo do clock 15 (B->C)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '0';
      wait for 100 ns;

      -- ciclo do clock 16 (C->D)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;

      -- ciclo do clock 17 (D->E)
      CLOCK <= '0';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
      CLOCK <= '1';
      RESET <= '0';
      wait for 50 ns;
      X <= '1';
      wait for 100 ns;
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END recSeq_arch;
