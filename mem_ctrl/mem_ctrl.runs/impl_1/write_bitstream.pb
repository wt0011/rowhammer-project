
h
Command: %s
1870*	planAhead23
open_checkpoint Root_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.11 . Memory (MB): peak = 1297.227 ; gain = 0.000 ; free physical = 2516 ; free virtual = 192142default:defaulth px� 
i
-Analyzing %s Unisim elements for replacement
17*netlist2
101582default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
22default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.32default:defaultZ1-479h px� 
[
Loading part %s157*device2(
xczu7ev-ffvc1156-2-e2default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2
DRIVE2default:default2<
&phy/inst/u_mig_ddr4_phy/cal_RESET_n[0]2default:default2
DRIVE2default:default8Z18-550h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2
SLEW2default:default2<
&phy/inst/u_mig_ddr4_phy/cal_RESET_n[0]2default:default2
SLEW2default:default8Z18-550h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default28
"phy/inst/u_mig_ddr4_phy/sys_clk_in2default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
Read XDEF File: 2default:default2
00:00:052default:default2
00:00:052default:default2
3451.9532default:default2
56.9612default:default2
2592default:default2
171422default:defaultZ17-722h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
4.9400002default:default2
	70.6103742default:defaultZ20-1924h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common20
Finished XDEF File Restore: 2default:default2
00:00:052default:default2
00:00:052default:default2
3451.9532default:default2
56.9612default:default2
2592default:default2
171422default:defaultZ17-722h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2018.3/data/ip2default:defaultZ19-2313h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.042default:default2
00:00:00.052default:default2
3513.4612default:default2
0.0002default:default2
2182default:default2
171212default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 7457 instances were transformed.
  CFGLUT5 => CFGLUT5 (SRLC32E, SRL16E): 7304 instances
  DSP48E1 => DSP48E2 (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD_DATA, DSP_PREADD): 3 instances
  IBUF => IBUF (IBUFCTRL, INBUF): 1 instances
  IBUFDS => IBUFDS (DIFFINBUF, IBUFCTRL): 1 instances
  IOBUFDS => IOBUFDS (DIFFINBUF, IBUFCTRL, INV, OBUFT, OBUFT): 8 instances
  IOBUFE3 => IOBUFE3 (IBUFCTRL, INBUF, OBUFT_DCIEN): 72 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 31 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUF, OBUF): 1 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 16 instances
  RAM32M16 => RAM32M16 (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 4 instances
  RAM64M8 => RAM64M8 (RAMD64E, RAMD64E, RAMD64E, RAMD64E, RAMD64E, RAMD64E, RAMD64E, RAMD64E): 16 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2018.3 (64-bit)2default:default2
24059912default:defaultZ1-604h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
open_checkpoint: 2default:default2
00:01:142default:default2
00:02:072default:default2
3513.4612default:default2
2216.2342default:default2
2182default:default2
171212default:defaultZ17-722h px� 
d
Command: %s
53*	vivadotcl23
write_bitstream -force Root.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
aNo routable loads: 125 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�
 "�
5phy/inst/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[12]5phy/inst/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[12]2default:default"�
5phy/inst/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[13]5phy/inst/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[13]2default:default"�
5phy/inst/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[14]5phy/inst/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[14]2default:default"�
5phy/inst/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[15]5phy/inst/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[15]2default:default"|
2phy/inst/u_phy2clb_phy_rdy_low/SYNC[0].sync_reg[1]2phy/inst/u_phy2clb_phy_rdy_low/SYNC[0].sync_reg[1]2default:default"�
5phy/inst/u_phy2clb_fixdly_rdy_upp/SYNC[0].sync_reg[1]5phy/inst/u_phy2clb_fixdly_rdy_upp/SYNC[0].sync_reg[1]2default:default"�
5phy/inst/u_phy2clb_fixdly_rdy_low/SYNC[0].sync_reg[1]5phy/inst/u_phy2clb_fixdly_rdy_low/SYNC[0].sync_reg[1]2default:default"|
2phy/inst/u_phy2clb_phy_rdy_upp/SYNC[0].sync_reg[1]2phy/inst/u_phy2clb_phy_rdy_upp/SYNC[0].sync_reg[1]2default:default"�
5phy/inst/u_phy2clb_fixdly_rdy_low/SYNC[1].sync_reg[1]5phy/inst/u_phy2clb_fixdly_rdy_low/SYNC[1].sync_reg[1]2default:default"�
5phy/inst/u_phy2clb_fixdly_rdy_upp/SYNC[1].sync_reg[1]5phy/inst/u_phy2clb_fixdly_rdy_upp/SYNC[1].sync_reg[1]2default:default"|
2phy/inst/u_phy2clb_phy_rdy_low/SYNC[1].sync_reg[1]2phy/inst/u_phy2clb_phy_rdy_low/SYNC[1].sync_reg[1]2default:default"|
2phy/inst/u_phy2clb_phy_rdy_upp/SYNC[1].sync_reg[1]2phy/inst/u_phy2clb_phy_rdy_upp/SYNC[1].sync_reg[1]2default:default"|
2phy/inst/u_phy2clb_phy_rdy_upp/SYNC[2].sync_reg[1]2phy/inst/u_phy2clb_phy_rdy_upp/SYNC[2].sync_reg[1]2default:default"�
5phy/inst/u_phy2clb_fixdly_rdy_low/SYNC[2].sync_reg[1]5phy/inst/u_phy2clb_fixdly_rdy_low/SYNC[2].sync_reg[1]2default:default"x
2phy/inst/u_phy2clb_phy_rdy_low/SYNC[2].sync_reg[1]2phy/inst/u_phy2clb_phy_rdy_low/SYNC[2].sync_reg[1]2default:..."0
(the first 15 of 123 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 1 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
�
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2{
g/home/serlop/mem_ctrl/mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/sw/calibration_0/Debug/calibration_ddr.elf 2default:defaultZ28-144h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
82default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
[
Writing bitstream %s...
11*	bitstream2

./Root.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
s
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118h px� 
�
�'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2[
G/home/serlop/mem_ctrl/mem_ctrl.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Wed May  1 10:57:28 20192default:default2M
9/tools/Xilinx/Vivado/2018.3/doc/webtalk_introduction.html2default:defaultZ17-186h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
252default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:01:202default:default2
00:00:462default:default2
3978.9882default:default2
457.5232default:default2
4052default:default2
170062default:defaultZ17-722h px� 


End Record