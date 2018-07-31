-- Nome: Bruno Tatsuya Masunaga Santos
-- Turma: A2 - Sistemas Digitais 2018.2
-- Reconhecedor de Sequencia 1011 utilizando MEF de Moore

library ieee;
use ieee.std_logic_1164.all;

entity recSeq is
   port(CLOCK, RESET, X: in std_logic;
        S: out std_logic);
end recSeq;

architecture behavior of recSeq is
   type state is (A, B, C, D, E);
   signal current_state, next_state: state;
   begin
  
-- Implementa a passagem de estado a partir da subida do clock.
-- Tambem implementa o reset assincrono do registro.
   state_register: process (CLOCK, RESET)
   begin
      if (RESET = '1') then
         current_state <= A;
      elsif (CLOCK'event and CLOCK = '1') then
         current_state <= next_state;
      end if;
   end process;

-- Implementa a funcao de proximo estado com base no estado 
-- atual e na entrada X.
   next_state_function: process (X, current_state)
   begin
      case current_state is
         when A =>
            if X = '0' then
               next_state <= A;
            else
               next_state <= B;
            end if;
         when B =>
            if X = '0' then
               next_state <= C;
            else
               next_state <= B;
            end if;
         when C =>
            if X = '0' then
               next_state <= A;
            else
               next_state <= D;
            end if;
         when D =>
            if X = '0' then
               next_state <= C;
            else
               next_state <= E;
            end if;
         when E =>
            if X = '0' then
               next_state <= C;
            else
               next_state <= B;
            end if;
      end case;
   end process;

-- Implementa a funcao de saida com base no estado atual.
   output: process (current_state)
   begin
      case current_state is
         when A =>
            S <= '0';
         when B =>
            S <= '0';
         when C =>
            S <= '0';
         when D =>
            S <= '0';
         when E =>
            S <= '1';
      end case;
   end process;
end behavior;
