1 REM ****** AUTORENNEN ********
2 POKE 650,128:POKE 53281,12:PRINT CHR$(147):POKE53269,0
5 REM ****** SPRITE AKTIVIEREN ***
10 V=53248:POKE V+21,0:POKEV+41,7 : POKE2042,13:POKE V+23,4:POKEV+29,4
15 POKE2043,15:POKE2044,14
20 FOR N=0 TO 62: READ Q:POKE 832+N,Q:NEXT
21 FOR N=0 TO 62: READ Q:POKE 896+N,Q:NEXT
22 FOR N=0 TO 62: READ Q:POKE 960+N,Q:NEXT
25 REM GOSUB2000
26 V=53248:POKE V+21,4,4:POKEV+41,7 :POKE2042,13:POKE V+23,4:POKEV+29,4
30 REM ******** STARTTRECKE AUFBAUEN ***
40 FOR N=0To6
41 PRINT TAB(09)"?I?????????????????I":REMPRINTTAB(!=)"?????"
42 NEXT
43 PRINTTAB( 9)"?I?????????????????I":REMPRINTTAB(!=)"?????"
44 PRINTTAB( 9)"?I?????START???????I":REMPRINTTAB(!=)"?????"
45 PRINTTAB( 9)"?I?????????????????I":REMPRINTTAB(!=)"?????"
46 FOR N=0TO15
47 PRINT TAB(09)"?I?????????????????I":REMPRINTTAB(!=)"?????"
48 NEXT
50 REM ***** AUTO ZUM START ******
51 FOR X=0TO  50
52 POKE V+4,140
53 POKE V+5,X
54 NEXTX
60 UW=48
65 FORUI=0TO9
70 UT(UI)=UW:UW=UW+1
75 next
80 POKE 1109,112:POKE55381,0
81 POKE 1110, 67:POKE55382,0
82 POKE 1111,110:POKE55423,0
83 POKE 1151, 66:POKE55423,0
84 POKE 1149, 66:POKE55421,0
85 POKE 1191, 66:POKE55463,0
86 POKE 1189, 66:POKE55461,0
87 POKE 1231, 66:POKE55503,0
88 POKE 1229, 66:POKE55501,0
89 POKE 1269,109:POKE55541,0
90 POKE 1270, 67:POKE55542,0
91 POKE 1271,125:POKE55543,0
92 POKE 1150, 87:POKE55422,0
93 POKE 1190, 87:POKE55462,0
94 POKE 1230, 87:POKE55502,0
95 POKE 1150, 81:POKE55422,2
96 FORAM=0TO850:NEXT
97 POKE 1190, 81:POKE55422,7
98 FORAM=0TO850:NEXT
99 POKE 1150, 87:POKE55422,0
100 POKE 1190, 87:POKE55462,0
101 POKE 1230, 81POKE55502,5
109 SB=PEEK(56322):POKE56322,SBAND224
110 SP=PEEK(56320):POKE56322,SB
120 IF(SP AND 16)<>0THENGOTO100
195 A= 9:B=1:Z=155:S=65TI$"000000"
200 REM ** STEUERUNG MIT JOYSTICK ***
205 IF PEEK (V+31)=0THEN GOTO700
210 SB=PEEK(56322):POKE 56322,SB AND 224
215 SP=PEEK(56320):POKE 56322,SB
220 IF (SP AND 1)=0 THEN S=S-5
225 IF (SP AND 2)=0 THEN S=S+5
230 IF (SP AND 4)=0 THEN Z=Z-8
235 IF (SP AND 5)=0 THEN Z=Z+8
240 IF PEEK (V+31)=0THEN GOTO 700
250 POKE V+4,Z
255 POKE V+5,S
270 IFZ>245 THEN Z=245
275 IFZ<20  THEN Z=20
280 IFS<20  THEN S=20
285 IFS>180 THEN S=180
290 IF PEEK (V+31)= 0THEN GOTO700
300 REM **** STECKE *****
310 PRINTTAB(A)"?I????????.????????I"
315 A=A+B:XX=30-(A+13)
320 IF A=15 THENB=-1
325 IF A= 0 THENB=+1
340 ZIEL=ZIEL+1
350 IF ZIEL =15THEN2500
400 GOTO 200
690 REM *** CRASH****
700 FOREX=0TO15
710 POKE V+41,EX
720 FORXX=1TO40:NEXT
740 NEXT
750 SB=PEEK(56322):POKE56322,SBAND224
760 SP=PEEK(56320):POKE56322,SB
770 IF(SP AND 16)<>0THENGOTO750
775 Z=139
780 POKE V+4,Z:POKEV+41,7
785 ZIEL=ZIEL+1
786 IF ZIEL =15 THEN2500
790 GOTO210
1000 DATA 0,0,0
1010 DATA 7,57,192
1020 DATA 7,25,192
1030 DATA 7,255,192
1040 DATA 7, 69,192
1050 DATA 7, 69,192
1060 DATA 0, 68,0
1070 DATA 0,108,0
1080 DATA 0,124,0
1090 DATA 0,124,0
1100 DATA 0,124,0
1110 DATA 0,124,0
1120 DATA 0, 56,0
1130 DATA 0, 56,0
1140 DATA 3, 57,128
1150 DATA 3, 57,128
1160 DATA 3,255,128
1170 DATA 3, 57,128
1180 DATA 3, 57,128
1190 DATA 0, 16,0
1200 DATA 0,254,0
1300 REM** A **
1300 DATA   0,  0,  0
1302 DATA   0,  0,  0
1303 DATA   0, 56,  0
1304 DATA   0,124,  0
1305 DATA   0,124,  0
1306 DATA   0,238,  0
1307 DATA   0,238,  0
1308 DATA   1,199,  0
1309 DATA   1,199,  0
1310 DATA   3,131,128
1311 DATA   3,131,128
1312 DATA   7,255,192
1313 DATA   7,255,192
1314 DATA  14,  0,224
1315 DATA  14,  0,224
1316 DATA  28,  0,112
1317 DATA  28,  0,112
1318 DATA  56,  0, 56
1319 DATA  56,  0, 56
1320 DATA   0,  0,  0
1321 DATA   0,  0,  0









































