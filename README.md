
https://www.ics.uci.edu/~jmoorkan/vhdlref/vhdl.html

https://www.ics.uci.edu/~jmoorkan/vhdlref/Synario%20VHDL%20Manual.pdf

---
## Variables

```vhdl
variable variable_name : type := initial_value;
```

**Arrays**
```vhdl
type type_name is array(range) of element_type;
type WORD is array (0 to 31) of integer range 0 to 255;
type RAM is array (0 to 7) of WORD;

signal RAM_0 : RAM;
```

[**Memory**](http://people.sabanciuniv.edu/erkays/el310/MemoryModels.pdf)
```vhdl
type ram_type is array (0 to 64) of std_logic_vector(7 downto 0);
```

## Entity
Used to describe the interface of the VHDL module to other modules. 

```vhdl
ENTITY and2 IS
  PORT(A : in std_logic;
       B : in std_logic;
       F : out std_logic
  );

  GENERIC (
    gate_delay: time := 5ns;
  );
END and2;
```

Generics allow static information to be communicated to a block from its environment for all architectures of a design unit.

## Processes 	

```vhdl
process(input_1, input_2)
begin
  and_gate <= input_1 and input_2;
end process;
```
Process executes when input_1 or input_2 (sensitivity list) changes.

```vhdl
process(i_clock)
begin
  if rising_edge(i_clock) then
    and_gate <= input_1 and input_2;
  end if;
end process;
```

In sequential logic, sensitivity list includes the clock signal.

## Components

```vhdl
component C is
  port(
  	clk: out std_logic;
  	Q: in std_logic;
    ...
  )
end component C;
```

```vhdl
architecture behavioral of MODULE is
...
  name: component C
    port map(
    	clk => sClk,
    	Q => sQ,
    	...
    	);
...
end architecture behavioral;
```

















