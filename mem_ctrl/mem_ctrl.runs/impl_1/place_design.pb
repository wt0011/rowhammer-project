
O
*Debug cores have already been implemented
153*	chipscopeZ16-240h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
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
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.032default:default2
5215.5942default:default2
0.0002default:default2
5442default:default2
172392default:defaultZ17-722h px� 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 127d39a51
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.13 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 544 ; free virtual = 172392default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.032default:default2
5215.5942default:default2
0.0002default:default2
5432default:default2
172392default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1504678aa
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:12 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 430 ; free virtual = 171402default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1dfb5cad1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:07 ; elapsed = 00:00:26 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 301 ; free virtual = 170172default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1dfb5cad1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:07 ; elapsed = 00:00:27 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 298 ; free virtual = 170142default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 1dfb5cad1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:07 ; elapsed = 00:00:27 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 297 ; free virtual = 170142default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 120b7a305
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:46 ; elapsed = 00:00:43 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 195 ; free virtual = 169162default:defaulth px� 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
12default:default2
net2default:defaultZ32-76h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Nphy/inst/u_ddr_cal_top/u_ddr_cal/u_ddr_cal_addr_decode/u_ddr_cal_cplx/cplx_calNphy/inst/u_ddr_cal_top/u_ddr_cal/u_ddr_cal_addr_decode/u_ddr_cal_cplx/cplx_cal2default:default2
62default:default8Z32-81h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
12default:default2
net2default:default2
62default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12default:default2
net or cell2default:default2
62default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.062default:default2
00:00:00.062default:default2
5215.5942default:default2
0.0002default:default2
1892default:default2
169142default:defaultZ17-722h px� 
�
0No setup violation found.  %s was not performed.344*physynth2-
DSP Register Optimization2default:defaultZ32-670h px� 
�
0No setup violation found.  %s was not performed.344*physynth2/
Shift Register Optimization2default:defaultZ32-670h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
BRAM Register Optimization2default:defaultZ32-670h px� 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.032default:default2
5215.5942default:default2
0.0002default:default2
1902default:default2
169162default:defaultZ17-722h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Very High Fanout              |            6  |              0  |                     1  |           0  |           1  |  00:00:01  |
|  DSP Register                  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                 |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  HD Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                         |            6  |              0  |                     1  |           0  |           2  |  00:00:02  |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 179ff39ac
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:22 ; elapsed = 00:01:32 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 185 ; free virtual = 169112default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 1b4143e0d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:29 ; elapsed = 00:01:34 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 199 ; free virtual = 169252default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1b4143e0d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:29 ; elapsed = 00:01:34 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 198 ; free virtual = 169242default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1887e08f3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:56 ; elapsed = 00:01:50 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 180 ; free virtual = 169072default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 19a8521d0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:56 ; elapsed = 00:01:50 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 181 ; free virtual = 169082default:defaulth px� 
y

Phase %s%s
101*constraints2
3.4 2default:default2*
Small Shape Clustering2default:defaultZ18-101h px� 
L
7Phase 3.4 Small Shape Clustering | Checksum: 1886f455b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:02 ; elapsed = 00:01:55 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 139 ; free virtual = 168662default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Flow Legalize Slice Clusters2default:defaultZ18-101h px� 
R
=Phase 3.5 Flow Legalize Slice Clusters | Checksum: 16a70049b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:03 ; elapsed = 00:01:56 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 138 ; free virtual = 168652default:defaulth px� 
r

Phase %s%s
101*constraints2
3.6 2default:default2#
Slice Area Swap2default:defaultZ18-101h px� 
E
0Phase 3.6 Slice Area Swap | Checksum: 1acae683b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:07 ; elapsed = 00:01:59 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 179 ; free virtual = 168322default:defaulth px� 
x

Phase %s%s
101*constraints2
3.7 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px� 
K
6Phase 3.7 Commit Slice Clusters | Checksum: 19fe70901
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:22 ; elapsed = 00:02:04 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 178 ; free virtual = 168312default:defaulth px� 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 17b29c817
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:25 ; elapsed = 00:02:07 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 180 ; free virtual = 168342default:defaulth px� 
�

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
S
>Phase 3.9 Pipeline Register Optimization | Checksum: e5cf3816
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:25 ; elapsed = 00:02:07 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 193 ; free virtual = 168472default:defaulth px� 
C
.Phase 3 Detail Placement | Checksum: e5cf3816
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:26 ; elapsed = 00:02:07 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 193 ; free virtual = 168472default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
U
@Post Placement Optimization Initialization | Checksum: d7e53ed0
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
�
�BUFG insertion identified %s candidate nets, %s success, %s bufg driver replicated, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason40*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-46h px� 
G
2Phase 4.1.1.1 BUFG Insertion | Checksum: d7e53ed0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:32 ; elapsed = 00:02:24 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 243 ; free virtual = 168982default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.3542default:defaultZ30-746h px� 
R
=Phase 4.1.1 Post Placement Optimization | Checksum: 8922fca6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:52 ; elapsed = 00:02:37 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 233 ; free virtual = 168882default:defaulth px� 
M
8Phase 4.1 Post Commit Optimization | Checksum: 8922fca6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:52 ; elapsed = 00:02:37 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 231 ; free virtual = 168892default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
K
6Phase 4.2 Post Placement Cleanup | Checksum: 8922fca6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:53 ; elapsed = 00:02:38 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 241 ; free virtual = 168992default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.032default:default2
5215.5942default:default2
0.0002default:default2
2192default:default2
168792default:defaultZ17-722h px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
E
0Phase 4.3 Placer Reporting | Checksum: b5347697
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:01 ; elapsed = 00:02:46 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 219 ; free virtual = 168792default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
5215.5942default:default2
0.0002default:default2
2192default:default2
168792default:defaultZ17-722h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 128e9bbdb
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:01 ; elapsed = 00:02:46 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 219 ; free virtual = 168792default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 128e9bbdb
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:02 ; elapsed = 00:02:46 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 219 ; free virtual = 168792default:defaulth px� 
>
)Ending Placer Task | Checksum: 125de834a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:02 ; elapsed = 00:02:46 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 341 ; free virtual = 170012default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
902default:default2
142default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:06:122default:default2
00:02:532default:default2
5215.5942default:default2
0.0002default:default2
3412default:default2
170012default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.022default:default2
5215.5942default:default2
0.0002default:default2
3412default:default2
170012default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.122default:default2
00:00:00.022default:default2
5215.5942default:default2
0.0002default:default2
2892default:default2
169882default:defaultZ17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:112default:default2
00:00:032default:default2
5215.5942default:default2
0.0002default:default2
1842default:default2
169662default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2N
:/home/serlop/mem_ctrl/mem_ctrl.runs/impl_1/Root_placed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:302default:default2
00:00:252default:default2
5215.5942default:default2
0.0002default:default2
2942default:default2
169872default:defaultZ17-722h px� 
_
%s4*runtcl2C
/Executing : report_io -file Root_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.29 ; elapsed = 00:00:00.74 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 260 ; free virtual = 16957
*commonh px� 
�
%s4*runtcl2t
`Executing : report_utilization -file Root_utilization_placed.rpt -pb Root_utilization_placed.pb
2default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_utilization: 2default:default2
00:00:102default:default2
00:00:052default:default2
5215.5942default:default2
0.0002default:default2
2882default:default2
169862default:defaultZ17-722h px� 
|
%s4*runtcl2`
LExecuting : report_control_sets -verbose -file Root_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.31 ; elapsed = 00:00:00.38 . Memory (MB): peak = 5215.594 ; gain = 0.000 ; free physical = 287 ; free virtual = 16985
*commonh px� 


End Record