function [baseMVA, bus, gen, branch, areas, gencost] = caseIEEE
%CASE14    Power flow data for IEEE 14 bus test case.
%   Please see 'help caseformat' for details on the case file format.
%   This data was converted from IEEE Common Data Format
%   (ieee14cdf.txt) on 20-Sep-2004 by cdf2matp, rev. 1.11
%   See end of file for warnings generated during conversion.
%
%   Converted from IEEE CDF file from:
%       http://www.ee.washington.edu/research/pstca/
% 
%  08/19/93 UW ARCHIVE           100.0  1962 W IEEE 14 Bus Test Case

%   MATPOWER
%   $Id: case14.m,v 1.6 2007/09/17 16:07:48 ray Exp $

%%-----  Power Flow Data  -----%%
%% system MVA base
baseMVA = 10;

%% bus data													
%	bus_i	type	Pd	    Qd	    Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
bus = [													
	1	    1	    0	    0	    0	0	1	    1	0	69	    1	    1.1	    0.9
	2	    1	    0	    0   	0	0	1	    1	0	69   	1	    1.1	    0.9
	3	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	4	    2	    0	    0   	0	0	1	    1	0	13.8	1	    1.1	    0.9
	5	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	6	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	7	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	8	    1	    6.361	0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	9	    1	    0	    0	    0	0	1	    1	0	0.48	1	    1.1	    0.9
	10	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	11	    1	    0.353	0.2	    0	0	1	    1	0	2.4	    1	    1.1	    0.9
	12	    1	    0	    0       0	0	1	    1	0	13.8	1	    1.1	    0.9
	13	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	15	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	16	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	17	    1	    0.831	0.521	0	0	1	    1	0	0.48	1	    1.1	    0.9
	18	    1	    0.831	0.521	0	0	1	    1	0	0.48	1	    1.1	    0.9
	19	    1	    2.65	1.502	0	0	1	    1	0	2.4	    1	    1.1	    0.9
	20	    1	    2.65	1.502	0	0	1	    1	0	2.4   	1	    1.1	    0.9
	21	    1	    0.421	0.283	0	0	1	    1	0	0.48	1	    1.1	    0.9
	22	    1	    0.084	0.057	0	0	1	    1	0	0.48	1	    1.1	    0.9
	23	    1	    0.084	0.057	0	0	1	    1	0	0.48	1	    1.1	    0.9
	24	    1	    0	    0	    0	0	1	    1	0	0.48	1	    1.1	    0.9
	25	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	26	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	27	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	28	    1	    0.578	0.351	0	0	1	    1	0	0.48	1	    1.1	    0.9
	29	    1	    0.703	0.426	0	0	1	    1	0	0.48	1	    1.1	    0.9
	30	    1	    0.563	0.349	0	0	1	    1	0	0.48	1	    1.1	    0.9
	31	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	32	    1	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	33	    1	    0.168	0.113	0	0	1	    1	0	0.48	1	    1.1	    0.9
	34	    1	    0.062	0.042	0	0	1	    1	0	0.48	1	    1.1	    0.9
	35	    1	    0.168	0.113	0	0	1	    1	0	0.48	1	    1.1	    0.9
	36	    1	    1.767	1.001	0	0	1	    1	0	2.4	    1	    1.1	    0.9
	37	    1	    0.663	0.394	0	0	1	    1	0	0.48	1	    1.1	    0.9
	38	    1	    0	    0	    0	0	1	    1	0	0.48	1	    1.1	    0.9
	39	    1	    1.237	0.701	0	0	1	    1	0	4.16	1	    1.1	    0.9
	41	    1	    0.15	0.049	0	0	1	    1	0	0.48	1	    1.1	    0.9
	49	    1	    0.963	0.52	0	0	1	    1	0	0.48	1	    1.1	    0.9
	50	    2	    0	    0	    0	0	1	    1	0	13.8	1	    1.1	    0.9
	51	    1	    0.478	0.307	0	0	1	    1	0	0.48	1	    1.1	    0.9
   100	    3	    0	    0	    0	0	1	    1	0	69	    1	    1.1	    0.9
];													
																						
												
							
%% generator data										
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin
gen = [										
	4	8	8	250	    -100	1	100	    1	    500	    0;
	50	11	8	250	    -100	1	100	    1	    500	    0;
   100	2	99	250	    -100	1	100	    1	    500	    0;
];										
																

																																
	%% branch data											
%	fbus	tbus	r	        x	        b	    rateA	rateB	rateC	ratio	angle	status
branch = [											
	3	    9	    0.0015	    0.00125	    0	    9900	0	    0	    0	    0	    1;
	9	    25	    0.00424	    0.00353	    0	    9900	0	    0	    0	    0	    1;
	9	    12	    0.00038	    0.00032	    0	    9900	0	    0	    0	    0	    1;
	3	    5	    0.00075	    0.00063	    0	    9900	0	    0	    0	    0	    1;
	3	    26	    0.00157	    0.00131	    0	    9900	0	    0	    0	    0	    1;
	3	    6	    0.00109	    0.00091	    0	    9900	0	    0	    0	    0	    1;
	4	    15	    0.00227	    0.00189	    0	    9900	0	    0	    0	    0	    1;
	4	    7	    0    	    0.0001	    0	    9900	0	    0	    0	    0	    1;
	7	    27	    0.00143	    0.00119	    0	    9900	0	    0	    0	    0	    1;
	7	    16	    0.00275	    0.00229	    0	    9900	0	    0	    0	    0	    1;
	10      13	    0.00046	    0.00039	    0	    9900	0	    0	    0	    0	    1;
	10	    27	    0.0011	    0.00091	    0	    9900	0	    0	    0	    0	    1;
	4	    8	    0.00076	    0.00092	    0	    9900	0	    0	    0	    0	    1;
	4	    24      0.00118	    0.00098	    0	    9900	0	    0	    0	    0	    1;
	24	    31	    0.00079	    0.00065	    0	    9900	0	    0	    0	    0	    1;
	24	    32	    0.00112	    0.00093	    0	    9900	0	    0	    0	    0	    1;
	33	    28	    0.03813	    0.0245	    0	    9900	0	    0	    0	    0	    1;
	29	    38	    0.04012	    0.03866	    0	    9900	0	    0	    0	    0	    1;
	34	    29	    0.03813	    0.0245	    0	    9900	0	    0	    0	    0	    1;
	35	    30	    0.03813	    0.0245	    0	    9900	0	    0	    0	    0	    1;
	22	    17	    0.03813	    0.0245	    0	    9900	0	    0	    0	    0	    1;
	23	    18	    0.03813	    0.0245	    0	    9900	0	    0	    0	    0	    1;
	50	    3	    0.00122	    0.00243	    0	    9900	0	    0	    0	    0	    1;
	1	    3	    0.00313	    0.05324	    0	    9900	0	    0	    0	    0	    1;
	2	    4	    0.00313	    0.05324	    0	    9900	0	    0	    0	    0	    1;
	5	    39      0.04314	    0.34514	    0	    9900	0	    0	    0	    0	    1;
	6	    11	    0.05575	    0.3624	    0	    9900	0	    0	    0	    0	    1;
	12	    17	    0.06843	    0.44477	    0	    9900	0	    0	    0	    0	    1;
	13	    18	    0.05829	    0.37888	    0	    9900	0	    0	    0	    0	    1;
	6	    19	    0.01218	    0.14616	    0	    9900	0	    0	    0	    0	    1;
	15	    20	    0.01218	    0.14616	    0	    9900	0	    0	    0	    0	    1;
	16	    21	    0.15036	    0.75178	    0	    9900	0	    0	    0	    0	    1;
	25	    28	    0.05829	    0.37888	    0	    9900	0	    0	    0	    0	    1;
	26	    29	    0.05829	    0.37888	    0	    9900	0	    0	    0	    0	    1;
	27	    30	    0.05829	    0.37888	    0	    9900	0	    0	    0	    0	    1;
	31      36	    0.02289	    0.22886	    0	    9900	0	    0	    0	    0	    1;
	32	    37	    0.10286	    0.56573	    0	    9900	0	    0	    0	    0	    1;
	5	    49	    0.05918	    0.3551	    0	    9900	0	    0	    0	    0	    1;
	50	    51	    0.06391	    0.37797	    0	    9900	0	    0	    0	    0	    1;
   100      1       0.00139     0.00296     0.0048  9900    0       0       0       0       1;
   100      2       0.00139     0.00296     0.0048  9900    0       0       0       0       1;
    28      41      0.03429     0.02094     0       9900    0       0       0       0       1;
];											
										



% Warnings from cdf2matp conversion:
%
% ***** Qmax = Qmin at generator at bus    1 (Qmax set to Qmin + 10)
% ***** area data conversion not yet implemented (creating dummy area data)
% ***** MVA limit of branch 1 - 2 not given, set to 9900
% ***** MVA limit of branch 1 - 5 not given, set to 9900
% ***** MVA limit of branch 2 - 3 not given, set to 9900
% ***** MVA limit of branch 2 - 4 not given, set to 9900
% ***** MVA limit of branch 2 - 5 not given, set to 9900
% ***** MVA limit of branch 3 - 4 not given, set to 9900
% ***** MVA limit of branch 4 - 5 not given, set to 9900
% ***** MVA limit of branch 4 - 7 not given, set to 9900
% ***** MVA limit of branch 4 - 9 not given, set to 9900
% ***** MVA limit of branch 5 - 6 not given, set to 9900
% ***** MVA limit of branch 6 - 11 not given, set to 9900
% ***** MVA limit of branch 6 - 12 not given, set to 9900
% ***** MVA limit of branch 6 - 13 not given, set to 9900
% ***** MVA limit of branch 7 - 8 not given, set to 9900
% ***** MVA limit of branch 7 - 9 not given, set to 9900
% ***** MVA limit of branch 9 - 10 not given, set to 9900
% ***** MVA limit of branch 9 - 14 not given, set to 9900
% ***** MVA limit of branch 10 - 11 not given, set to 9900
% ***** MVA limit of branch 12 - 13 not given, set to 9900
% ***** MVA limit of branch 13 - 14 not given, set to 9900
