-- Nome: Bruno Tatsuya Masunaga Santos
-- Turma: A2 - Sistemas Digitais 2018.2
-- Chave de Carro Segura 1011 utilizando MEF de Moore (TestBench)

library ieee;
use ieee.std_logic_1164.all;

entity recSeq_tb is
end recSeq_tb;

architecture behavior_tb of recSeq_tb is
   signal t_CLOCK, t_RESET, t_X: std_logic;
   signal t_S: std_logic;
   begin
   
   uut: entity work.recSeq(behavior)
   port map(CLOCK => t_CLOCK, RESET => t_RESET, X => t_X, S => t_S);

-- Casos de teste
   test_cases: process
   begin
      -- ciclo do clock 1 (A->B)
      t_CLOCK <= '1';
      t_RESET <= '0';
      t_X <= '1';
      wait for 100 ns;
      
      -- ciclo do clock 2 (B->C)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;
      
      -- ciclo do clock 3 (C->D)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      
      -- ciclo do clock 4 (D->E)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      
      -- ciclo do clock 5 (E->B)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;

      -- ciclo do clock 6 (B->C)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;

      -- ciclo do clock 7 (C->D)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;

      -- ciclo do clock 8 (D->E)
      t_CLOCK <= '0';
         t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;

      -- ciclo do clock 9 (reset: E->A)
      t_CLOCK <= '0';
      t_RESET <= '1';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '1';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;

      -- ciclo do clock 10 (A->B)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;

      -- ciclo do clock 11 (B->B)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;

      -- ciclo do clock 12 (B->C)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;

      -- ciclo do clock 13 (C->A)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;

       -- ciclo do clock 14 (A->B)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;

      -- ciclo do clock 15 (B->C)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '0';
      wait for 100 ns;

      -- ciclo do clock 16 (C->D)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;

      -- ciclo do clock 17 (D->E)
      t_CLOCK <= '0';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      t_CLOCK <= '1';
      t_RESET <= '0';
      wait for 50 ns;
      t_X <= '1';
      wait for 100 ns;
      wait;
      
   end process;
end behavior_tb;
