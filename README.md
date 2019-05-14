
https://en.wikibooks.org/wiki/Programmable_Logic

https://www.ics.uci.edu/~jmoorkan/vhdlref/Synario%20VHDL%20Manual.pdf

---
## Variables

```vhdl
variable variable_name : type := initial_value;
```

---
## Entity
```vhdl
ENTITY and2 IS
  PORT(A : in std_logic;
       B : in std_logic;
       F : out std_logic
	);
END and2;
```

---
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

---