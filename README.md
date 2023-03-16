# PWMVerilog
implemented Pulse Width Modulation on Verilog
the module takes 3 inputs: 
- Clock: the reference clock to work by
- Reset: if 1, will reset the module and set all values to 0
- On_time: percentage we want the width to be of.

The output is a one bit that will give positive pulses corresponding to the on_time.
