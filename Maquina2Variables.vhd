-- COntador 3 bits, x = 0 pares, x = 1 primos

library ieee; 
use ieee.std_logic_1164.all; 
use IEEE.NUMERIC_STD.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity Maquina2Variables is
    port (
        clk    : in STD_LOGIC;
        x      : in STD_LOGIC_VECTOR(1 downto 0);
        salida : out std_logic_vector(16 downto 0)
    );
end Maquina2Variables;

architecture estados of Maquina2Variables is

    signal counTime : STD_LOGIC_VECTOR(23 downto 0); -- Contador de flancos de la señal interna de reloj
    signal clkint   : STD_LOGIC;                    -- Señal creada para manipular el reloj internamente
    signal q        : STD_LOGIC_VECTOR(3 downto 0); -- Contador en señal para retroalimentar la señal

    -- Tipo enumerado para la máquina de estados
    type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11);
    -- Registro para el estado actual
    signal state : state_type;
	 
begin

-- Generador de reloj interno
RELOJ: process(clk)
begin
    if clk'event and clk = '1' then -- Comprobar flanco de subida
        if counTime = "100110001001011010000000" then -- Conteo alcanzado
            counTime <= "000000000000000000000000";  -- Reinicia el contador
            clkint <= not clkint;        -- Cambia el estado del reloj interno
        else
            counTime <= counTime + '1';
        end if;
    end if;
end process;

-- Máquina de estados
contador: process(clkint)
begin
    if rising_edge(clkint) then
        case state is
		  
            when s0 =>
				
               if x = "00" then
                    state <= s1;
					elsif x= "01" then 
                   state <= s0;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s5;
               end if;
					
				when s1 =>
				
               if x = "00" then
                    state <= s2;
					elsif x = "01" then 
                   state <= s1;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s5;
               end if;
					
				when s2 =>
				
               if x = "00" then
                    state <= s3;
					elsif x = "01" then 
                   state <= s2;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s5;
               end if;
					
				when s3 =>
				
               if x = "00" then
                    state <= s4;
					elsif x = "01" then 
                   state <= s3;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s1;
               end if;
					
				when s4 =>
				
               if x = "00" then
                    state <= s0;
					elsif x = "01" then 
                   state <= s4;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s5;
               end if;
					
				when s5 =>
				
               if x = "00" then
                    state <= s0;
					elsif x = "01" then 
                   state <= s5;
					elsif x = "10" then 
						state <= s0;
					else -- "11"
						state <= s6;
               end if;
					
				when s6 =>
				
               if x = "00" then
                    state <= s0;
					elsif x = "01" then 
                   state <= s6;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s7;
               end if;
					
				when s7 =>
				
               if x = "00" then
                    state <= s0;
					elsif x = "01" then 
                   state <= s7;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s8;
               end if;
					
				when s8 =>
				
               if x = "00" then
                    state <= s0;
					elsif x = "01" then 
                   state <= s8;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s9;
               end if;
					
				when s9 =>
				
               if x = "00" then
                    state <= s0;
					elsif x = "01" then 
                   state <= s9;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s10;
               end if;
					
				when s10 =>
				
               if x = "00" then
                    state <= s0;
					elsif x = "01" then 
                   state <= s10;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s11;
               end if;
					
				when s11 =>
				
               if x = "00" then
                    state <= s0;
					elsif x = "01" then 
                   state <= s11;
					elsif x = "10" then 
						state <= s0;
					else 
						state <= s5;
               end if;
					
				
        end case;
    end if;
end process;

-- Asignación de valores a `q` basados en el estado
asignar_valor_q: process(state)
begin
    case state is
        when s0 => q <= "0000"; -- Valor para estado s0, 0
        when s1 => q <= "0111"; -- Valor para estado s1, 7
        when s2 => q <= "0101"; -- Valor para estado s2, 5
        when s3 => q <= "0010"; -- Valor para estado s3, 2
        when s4 => q <= "0100"; -- Valor para estado s4, 4
        when s5 => q <= "0011"; -- (3) Valor para estado s5, S
        when s6 => q <= "0110"; -- Valor para estado s6, I
        when s7 => q <= "1100"; --  (12) Valor para estado s7, _
        when s8 => q <= "0100"; -- Valor para estado s8, P
        when s9 => q <= "0101"; -- Valor para estado s9, A
        when s10 => q <= "1010"; -- Valor para estado s10, S
        when s11 => q <= "1011"; -- Valor para estado s11, O
        when others => q <= "1111"; -- Valor por defecto (no debería ocurrir)
    end case;
end process;

-- Decodificador de salida
DECODIFICADOR: process(q)
begin
    case q is
        when "0000" => salida <= "00000000110110111"; -- 0
        when "0010" => salida <= "10010111111101011"; -- 2
        when "0100" => salida <= "11001111101101111"; -- 4
        when "0101" => salida <= "10100111101101111"; -- 5
		  when "0111" => salida <= "10001111111111111"; -- 7
		  when "0011" => salida <= "10100111101101111"; -- S
		  when "0110" => salida <= "00110011101111011"; -- I
        when "1100" => salida <= "11110011111111111"; --  (12) Valor para estado s7, _
        when "1000" => salida <= "00011100110011111"; -- P
        when "1001" => salida <= "00001100111001111"; -- A
        when "1010" => salida <= "10100111101101111"; -- S
        when others => salida <= "10001111111111111"; -- O
    end case;
end process;

end estados;
