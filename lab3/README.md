# FIR - Verilog implementation

## Specification

- Data_Width  32
- Tape_Num    11
- Data_Num    To be determined by data size

## Interface

-- data_in  stream （Xn）
-- data_out: stream ( Yn)
-- coef[Tape_Num-1:0]  axilite
-- len: axilite
-- ap_start:  axilite
-- ap_done: axilite

- Using one Multiplier and one Adder
- - Shift register implemented with SRAM (Shift_RAM, size = 10 DW) – size = 10 DW
- Tap coefficient implemented with SRAM (Tap_RAM = 11 DW) and initialized by axilite write
  Operation
- ap_start to initiate FIR engine (ap_start valid for one clock cycle)
- Stream-in Xn. The rate is depending on the FIR processing speed. Use axi-stream valid/ready for flow control
- Stream out Yn, the output rate depends on FIR processing speed.

![圖片](https://github.com/ZheChen-Bill/lab3_workbook/assets/88698677/b5413f7f-7840-4c4a-85b5-eb66905cc60e)

## Implementation
1. Top Level of FIR Filter

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/fir_top_level.jpg)

The design consists of two major parts - the interface and the core compuation part. The core gets input from tap ram and data ram to perform multiply and add operation. The axi interface part is further split into the left part and the right part. The left part processes the read/write operation to tap ram and write operation to data ram. It also contains the FSM for data arrival and core running status. The right part is relatively simple and only consists of detecting last data and sends computed result to the output through sm_tdata.

2. AXI Interface and State Machine

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/axi_interface_left.jpg)

The left part interfaces the input data of data ram and tap ram, the state machine and schematic for handling data arrival for tap ram is shown below.

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/fsm_write_tap.jpg)

The state machine has 3 states, 
NOT_ARRIVED : when nor tap data or address arrived, can happen when both are arrived as well
A_ARRIVED : when address arrived, now waiting for data to arrive
D_ARRIVED : when data arrived, now waiting for address to arrive

The circuit to detect whether address or data arrives and store the data is as follows

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/schematic_address_tap.jpg)

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/schematic_data_tap.jpg)

This is the state machine for the state running in FIR filter

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/fsm_status_running.jpg)

The states will further affect ap_start, ap_done and ap_idle

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/axi_interface_right.jpg)

the right part interfaces the output data of fir core and the output of the fir filter

3. FIR Core

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/fir_core.jpg)

the core takes input from tap ram and control signals from interface to signal the core to start, the shift registers shift the data out from the data ram, and the mechanism will be discussed below

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/clock_gate_and_shift_reg.jpg)

The data is shifted out every time the core starts a new computation or uses a new set of tap data. In this case, the shift register is only shifted by one position and will occurr every (number of tap data + pipeline stages of fir core) cycles. Hence, a clock gate is used for controling this shifting mechanism. The clock signal that connects to shift registers will only toggle every few cycles.

## Simulation Results
![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/behav_sim_wave1.jpg)
This is the full simulation waveform

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/behav_sim_wave2.jpg)

This is the simulation of the beginning only, this includes writing to tap ram and data ram.

![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/behav_sim_1.jpg)
![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/behav_sim_2.jpg)

Synthesis Reports
![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/syn_rpt_1.jpg)
![alt text](https://github.com/kjyu0622/eesm6000c_ronald/blob/main/lab3/pictures/resource_util.jpg)
