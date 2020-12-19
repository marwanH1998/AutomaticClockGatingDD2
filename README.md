<pre>
<p align="center">

<img width="468" alt="pic2" src="https://user-images.githubusercontent.com/60003290/100896572-6d310f00-34c7-11eb-960c-9ff59812e98d.png"><br />
CSCE3304-Digital Design II<br />

Project II

Automatic Clock Gating <br />

<img width="406" alt="Picture1" src="https://user-images.githubusercontent.com/60003290/100896517-5ee2f300-34c7-11eb-9fe4-9dac5985eda4.png">


**Fall 2020**

**Mariam Farghaly-900170254**

**Marwan Hazem-900170054**

**Mahmoud Sultan-900153402**

We started by learning. More about Pyverilog and about its data structure and how to
add, remove, adjust cells. after reading the documentation of pyverilog, We were able
to start coding by reading the Verilog file and parsing the required cells and adjusting
it till we reached the output of out program which is TestUpdated.v

TestUpdated.v replaced the multiplexer with the clock gate and adjust all the required 
wire supporting the sky130A pdk which enhances the power consumption of the circuit.

We started by generating the gl which we did in the last milestone, now we did it on multiple bits, 
and then we made our python program.  We made a test bench and it showed the correct signals and output.

We added the spm.v and the spm_gl.v and we tried to test it using our utlity program the thing is 
that the spm_gl does not have the problem of the bank of flipflops that's why it does zero changes 
to our utility program.
<div style="text-align: right"> 

To run our program :  1- Clone the repository into your machine.<br />
                      2-make sure you have python3.9 installed by running command <br />
                             python3 --version to get your current version<br />
                      3-make sure you have pyverilog installed by running this command<br />
                             pip3 install pyverilog <br />
                      4-open main.py and change test.v to your required verilog file "can 
                      be changed later as a user input or an argument"<br />
                      5- open a terminal in the cloned directory and run the script by<br />
                              python3 main.py filenamewithoutextension<br />
                      6-a file called testUpdated.v will appear in your directory this 
                      is the enhanced version of the gl. "currently supporting sky130A only"<br />
                      7- We found out the output of the testbench file(tb.v) using gtk-wave.
                      
We have implemented many testcases that represented our code. We have also added 2registers with 2enable lines.
We have generated many testcases for testing different bits; [1bit, 2bits,4bit, 8bits,32bits]
The technique of clock gating is used to reduce the clock power consumption for each of the test cells so we started to analyze our signals before and after the clock gating in the vcd files.
                      
Languages were are using: Verilog and Python

Libraries used:
                      1-sky130_fd_sc_hd.v 
                      2-primitives.v
                      This can be found inside 
                      /pdks/sky130A/libs.ref/sky130_fd_sc_hd
                      
extra command to run the output,testbench,how did we reach the gatelevel netlist can be found in read.txt
<img src="https://user-images.githubusercontent.com/60003290/101016244-2dbefd00-3571-11eb-9853-3d0c289ceda4.jpeg">
<img src="https://user-images.githubusercontent.com/60003290/101016874-07e62800-3572-11eb-989d-a5bd6ec449c1.jpeg">

 </div>
                    
</p>
</pre>
