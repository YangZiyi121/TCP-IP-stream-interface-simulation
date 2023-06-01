# TCP-IP-stream-interface-simulation

This repository provides a simulation document for inserting **HLS user kernel** into [100Gbps TCP/IP stack repository](https://github.com/fpgasystems/Vitis_with_100Gbps_TCP-IP). 

<h3>Repo folder organization</h3>

*  `hls_kernel/`  -folder with HLS source file, testbench file and synthesis result
* `vivado-stream-interfaces.srcs` -folder with simulation srouce and testbench
   *  `sources_1/new`  -the tcp-ip loopback rapper + genenrated verilog file from HLS kernel (systhesis result)
       * `pkt_receiver`: user-kernel  tcp-ip input interface from tcp+top_loopback
       
       * `pkt_logic`: user kernel logic
       
       * `pkt_sender`: user-kernel tcp-ip output interface to tcp+top_loopback
       
       * `test`, `test_regslice_both`: generated HLS kernel synthesis result
   *  'sim_1/new'  -the testbench for simulation
* `vivado-stream-interfaces.sim`  -folder with input simulation stream content
   *  `session-data-in.txt`  -each three line represents one packet. The first line is the session ID for tcp-connection. The third line is the packet content [1-bit TLAST + 512-bit data].
   *  `session-event-in.txt` -The first line represents interval between two notifications. The third line is the notification content, containing tcp session ID.


<h3>How to simulate</h3>

**Step 1: Generate verilog file from Vitis_HLS**

Start Vitis HLS using

```
vitis_hls
```

Create a new project and import `hls_kernel/average.cpp` as source file, `hls_kernel/test_average.cpp` as testbench file

Run simulation and synthesis, the synthesis result is located in `solution1/syn`

*This HLS_kernel example performs averaging 16 integers (32-bit) contained in one dataline (512-bit). Please feel free to design your own hls-stream kernel*


**Step 2: Simulate in Vivado**

Start Vivado using

```
vivado
```

Create a new project and import verilog files located in `sources_1/new`. For `test.v` and `test_regslice_both.v`, replace them with the verilog files you generated from Vitis HLS

Modify the instance initialize interface in `pkt_logic` to suit your own kernel. (The module named `test` in the example case)

Import testbench file `testbench_toplevel.vhd` located in `vivado-stream-interfaces.srcs/sim_1/new` and the `.txt` files located in `vivado-stream-interfaces.sim` 

Simulate the design. If `m_axis_tx_data_TDATA` and `m_axis_tx_data_TVALID` give the expected output value, then the kernel simulation is done.

**Step 3: Build the design**

Please refer [here](https://github.com/YangZiyi121/Vitis_with_100Gbps_TCP-IP_top_k) for building steps.

To insert your own design, go to folder `Vitis_with_100Gbps_TCP-IP_top_k/kernel/user_krnl/top_k_krnl/src/hdl
/top_k/`, except for `user_krnl_control_s_axi.v` and `ipcore_top_top_k.v`, replace all the other files with your own design files located in `vivado-stream-interfaces.srcs/sim_1/new`.






       
       
