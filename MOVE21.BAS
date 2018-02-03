'Press the F5 key to run this program

















'Beginning Sequence
CLS
COLOR 7
V = 1
H = 1
PLQ = 2
PRINT "Welcome to Movement 2.0"
PRINT "Please turn on CAPSLOCK and then press a key."
DO
LOOP UNTIL INKEY$ <> ""
CLS
PRINT "  œ There is a note about what to do with move that is being worked œ "
PRINT "Press any key."
DO
LOOP UNTIL INKEY$ <> ""
'The Variables
V = 1
H = 1
FC = 7
BC = 8
TC = 7
C = 2
10 COLOR FC, BC
PLQ = 2
CLS
'Redos the screen and readys the command
0 LOCATE 22
PRINT "                                                   "
LOCATE 23
PRINT "                                                   "
'Checks ALL variables before locating VH because of chance for illegal
'function call
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
IF H < 1 THEN H = 80
IF H > 80 THEN H = 1
COLOR FC, BC
LOCATE V, H
PRINT STRING$(1, C)
LOCATE 21
COLOR TC, BC
PRINT STRING$(80, 219)
LINE INPUT "Command: "; COM$
LOCATE V, H
PRINT " "
IF COM$ = "XT" THEN END
IF COM$ = "N" THEN V = V - 1
IF COM$ = "S" THEN V = V + 1
IF COM$ = "E" THEN H = H + 1
IF COM$ = "W" THEN H = H - 1
IF COM$ = "NE" THEN V = V - 1: H = H + 1
IF COM$ = "SE" THEN V = V + 1: H = H + 1
IF COM$ = "SW" THEN V = V + 1: H = H - 1
IF COM$ = "NW" THEN V = V - 1: H = H - 1
IF COM$ = "UR" THEN V = 1: H = 80
IF COM$ = "UL" THEN V = 1: H = 1
IF COM$ = "LR" THEN V = 20: H = 80
IF COM$ = "LL" THEN V = 20: H = 1
IF COM$ = "COL" THEN 1
IF COM$ = "CHR" THEN 2
IF COM$ = "BCK" THEN 3
IF COM$ = "REL" THEN 4
IF COM$ = "PN" THEN 6
IF COM$ = "PE" THEN 7
IF COM$ = "PS" THEN 8
IF COM$ = "PW" THEN 9
IF COM$ = "CL" THEN 10
IF COM$ = "WN" THEN 100
IF COM$ = "WE" THEN 110
IF COM$ = "WS" THEN 120
IF COM$ = "WW" THEN 130
IF COM$ = "WNE" THEN 140
IF COM$ = "WSE" THEN 150
IF COM$ = "WSW" THEN 160
IF COM$ = "WNW" THEN 170
IF COM$ = "SQU" THEN 180
IF COM$ = "PNE" THEN 190
IF COM$ = "PSE" THEN 200
IF COM$ = "PSW" THEN 210
IF COM$ = "PNW" THEN 220
IF COM$ = "NAM" THEN 230
IF COM$ = "HELP" OR COM$ = "HLP" OR COM$ = "HP" OR COM$ = "H" OR COM$ = "Help" OR COM$ = "help" OR COM$ = "hp" OR COM$ = "h" THEN 5
GOTO 0
1 LOCATE 22, 40
PRINT "Colors"
LOCATE 23, 40
PRINT "Foreground "
LOCATE 23, 50
INPUT FC
LOCATE 23, 40
PRINT "Background "
LOCATE 23, 50
INPUT BC
LOCATE 23, 40
PRINT "Textground "
LOCATE 23, 50
INPUT TC
GOTO 0
2 LOCATE 22, 35
PRINT "New Character #"
LOCATE 22, 50
INPUT C
GOTO 0
3 LOCATE 22
PRINT "Sorry, this area is incomplete please check the help file to see"
PRINT "which commands are done yet. Press a key."
DO
LOOP UNTIL INKEY$ <> ""
GOTO 0
4 LOCATE 22, 40
PRINT "New coordinates"
LOCATE 23, 45
PRINT "Vertical    "
LOCATE 23, 54
INPUT V
LOCATE 23, 43
PRINT "Horizontal        "
LOCATE 23, 53
INPUT H
LOCATE 23, 50
PRINT "                    "
GOTO 0
5 IF PLQ = 2 THEN 50
LOCATE 22, 15
PRINT "Using the help file will wipe out the placed chars!"
LOCATE 23, 30
PRINT "Still do(Y/N)"
LOCATE 23, 44
INPUT DO$
IF DO$ = "N" OR DO$ = "n" OR DO$ = "NO" OR DO$ = "no" OR DO$ = "No" THEN GOTO 0
50 ColorsPLQ = 2
COLOR 7, 8
PRINT "Welcome to Movement 2.0"
PRINT "Created by Ben Smith"
PRINT "Idea by Danny Phillips and Ben Smith"
PRINT ""
COLOR 5
PRINT "This is the help screen. If you are having trouble using movement,"
PRINT "this is where to look. We have different things that you"
PRINT "can do, not counting exit this thing."
COLOR 3
PRINT ""
PRINT ""
PRINT "Please choose from below."
PRINT "1 = List of commands"
PRINT "2 = List of colors"
PRINT "3 = List of ASCII characters"
PRINT "4 = Help with choosing an option"
PRINT "5 = Goto program"
PRINT "6 = End program"
INPUT DO$
IF DO$ = "1" THEN 51
IF DO$ = "2" THEN 52
IF DO$ = "3" THEN 53
IF DO$ = "4" THEN 54
IF DO$ = "5" THEN 10
IF DO$ = "6" THEN END
GOTO 50
51 COLOR 3
CLS
PRINT "                                  THE COMMANDS"
PRINT "---------------------------------------------------------------------------------"
PRINT "Command                What it does"
PRINT "XT                     Quits the program"
PRINT "N                      Moves North"
PRINT "S                      Moves South"
PRINT "E                      Moves East"
PRINT "W                      Moves West"
PRINT "NE                     Moves North East"
PRINT "NW                     Moves North West"
PRINT "SE                     Moves South East"
PRINT "SW                     Moves South West"
PRINT "UR                     Moves directly to the Upper Right Corner"
PRINT "LR                     Moves directly to the Lower Right Corner"
PRINT "UL                     Moves directly to the Upper Left Corner"
PRINT "LL                     Moves directly to the Lower Left Corner"
PRINT "COL                    Allows the user to change the colors"
PRINT "CHR                    Allows the user to change the character"
PRINT "REL                    Relocates the Character to a user-specified place"
PRINT ""
PRINT "Press a key to see next page"
DO
LOOP UNTIL INKEY$ <> ""
CLS
PRINT "PN                     Places a user specified character North"
PRINT "PE                     Places a user specified character East"
PRINT "PS                     Places a user specified character South"
PRINT "PW                     Places a user specified character West"
PRINT "PNE                    Places a user specified character North East"
PRINT "PSW                    Places a user specified character South East"
PRINT "PSW                    Places a user specified character South West"
PRINT "PNW                    Places a user specified character North West"
PRINT "CL                     Clears ALL the characters off the 'Board'"
PRINT "WN                     Walk north continuously"
PRINT "WE                     Walk east continuously"
PRINT "WS                     Walk south continuously"
PRINT "WW                     Walk west continuously"
PRINT "WNE                    Walk north east continuously"
PRINT "WSE                    Walk south east continuously"
PRINT "WSW                    Walk south west continuously"
PRINT "WNW                    Walk north west continuously"
PRINT "SQU                    Walks in a user specified circle"
PRINT "BCK                    User Specified background             Unfinished"
PRINT ""
PRINT "Press a key to see next page."
DO
LOOP UNTIL INKEY$ <> ""
PRINT "NAM                    Puts a user specified name on the 'Board'"
PRINT ""
PRINT "Remember, always type COMMANDS IN CAPS"
PRINT "Press a key to return to help menu"
DO
LOOP UNTIL INKEY$ <> ""
GOTO 50
52 COLOR 7
CLS
PRINT "Welcome to the color file... This file tells an example of each color."
PRINT "This version of the colors is a package with MOVE 2.0"
PRINT "Press ENTER to see each color."
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 1, 8
PRINT "1 = Blue"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 2, 8
PRINT "2 = Green"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 3, 8
PRINT "3 = Cyan"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 4, 8
PRINT "4 = Red"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 5, 8
PRINT "5 = Purple"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 6, 8
PRINT "6 = Orange"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 7, 8
PRINT "7 = White"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 8, 8
PRINT "8 = Black"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 9, 8
PRINT "9 = Lt Blue"
DO
LOOP UNTIL KEY$ = CHR$(13)
COLOR 10, 8
PRINT "1 = Green Yellow"
DO
LOOP UNTIL INKEY$ = CHR$(13)
COLOR 7, 8
CLS
LOCATE 23
PRINT "Press any key to return to the help menu."
GOTO 50
53 CLS
COLOR 7
PRINT "Choose one."
PRINT "1 = Display all ascii characters."
PRINT "2 = Let me type the number of the character."
PRINT "3 = Return to help menu"
INPUT DO$
IF DO$ = "1" THEN 531
IF DO$ = "2" THEN 532
IF DO$ = "3" THEN 50
PRINT "Your response was not understood."
PRINT "Press any key"
DO
LOOP UNTIL INKEY$ <> ""
GOTO 53
531 CLS
ASCII = 0
DO UNTIL ASCII = 256 OR INKEY$ <> ""
PRINT ASCII; STRING$(1, ASCII)
ASCII = ASCII + 1
LOOP
GOTO 53
532 CLS
PRINT "Please type the ASCII character that you would like to display (1000 to quit)."
INPUT ASCII
IF ASCII = 1000 THEN GOTO 53
PRINT ASCII; STRING$(1, ASCII)
PRINT "Press a key"
DO
LOOP UNTIL INKEY$ <> ""
GOTO 532
54 COLOR 6
PRINT "This area of the program will explain where you need to go."
PRINT "In the MOVE20 program, there are commands to move the character so"
PRINT "you must know them. To look at the commands, look in the main menu for the"
PRINT "list of commands and you will be able to see all of the commands possible"
PRINT "in the MOVE20 program."
PRINT ""
COLOR 5
PRINT "On certain parts of the program you will be asked fpr a NUMBER that represents"
PRINT "a color. To see the color numbers, look in the help menu for the item labeled"
PRINT "'List of Colors' that area will show you all of the colors for MOVE20"
PRINT "and their number."
COLOR 10
PRINT ""
PRINT "On other parts of the program you will be asked for a NUMBER that represents an"
PRINT "ASCII character (a symbol that is used for writing, letters are ASCII). Look in"
PRINT "the help menu for an item labeled 'List of ASCII characters' and it will take"
PRINT "you to a program that will show all of the ASCII characters"
PRINT ""
PRINT "Press any key"
DO
LOOP UNTIL INKEY$ <> ""
GOTO 50
6 LOCATE 22, 40
PRINT "Character number: "
LOCATE 23, 43
INPUT PC
PV = V
PH = H
PV = PV - 1
IF PV < 1 THEN PV = 20
IF PV > 20 THEN PV = 1
IF PH > 80 THEN PH = 1
IF PH < 1 THEN PH = 80
LOCATE PV, PH
PRINT STRING$(1, PC)
PLQ = 1
GOTO 0
7 LOCATE 22, 40
PRINT "Character number: "
LOCATE 23, 43
INPUT PC
PV = V
PH = H
PH = PH + 1
IF PV < 1 THEN PV = 20
IF PV > 20 THEN PV = 1
IF PH > 80 THEN PH = 1
IF PH < 1 THEN PH = 80
LOCATE PV, PH
PRINT STRING$(1, PC)
LOCATE 1
PLQ = 1
GOTO 0
8 LOCATE 22, 40
PRINT "Character number: "
LOCATE 23, 43
INPUT PC
PV = V
PH = H
PV = PV + 1
IF PV < 1 THEN PV = 20
IF PV > 20 THEN PV = 1
IF PH > 80 THEN PH = 1
IF PH < 1 THEN PH = 80
LOCATE PV, PH
PRINT STRING$(1, PC)
PLQ = 1
GOTO 0
9 LOCATE 22, 40
PRINT "Character number: "
LOCATE 23, 43
INPUT PC
PV = V
PH = H
PH = PH - 1
IF PV < 1 THEN PV = 20
IF PV > 20 THEN PV = 1
IF PH > 80 THEN PH = 1
IF PH < 1 THEN PH = 80
LOCATE PV, PH
PRINT STRING$(1, PC)
PLQ = 1
GOTO 0
100 LOCATE 21, 29
PRINT "Press any key to stop"
DO UNTIL INKEY$ <> ""
LOCATE V, H
PRINT " "
V = V - 1
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
PLQ = 1
GOTO 0
110 LOCATE 21, 29
PRINT "Press any key to stop"
DO UNTIL INKEY$ <> ""
LOCATE V, H
PRINT " "
H = H + 1
IF H < 1 THEN H = 80
IF H > 80 THEN H = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
GOTO 0
PLQ = 1
120 LOCATE 21, 29
PRINT "Press any key to stop"
DO UNTIL INKEY$ <> ""
LOCATE V, H
PRINT " "
V = V + 1
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
GOTO 0
130 LOCATE 21, 29
PRINT "Press any key to stop"
DO UNTIL INKEY$ <> ""
LOCATE V, H
PRINT " "
H = H - 1
IF H < 1 THEN H = 80
IF H > 80 THEN H = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
PLQ = 1
GOTO 0
140 LOCATE 21, 29
PRINT "Press any key to stop"
DO UNTIL INKEY$ <> ""
LOCATE V, H
PRINT " "
H = H + 1
V = V - 1
IF H < 1 THEN H = 80
IF H > 80 THEN H = 1
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
PLQ = 1
GOTO 0
150 LOCATE 21, 29
PRINT "Press any key to stop"
DO UNTIL INKEY$ <> ""
LOCATE V, H
PRINT " "
H = H + 1
V = V + 1
IF H < 1 THEN H = 80
IF H > 80 THEN H = 1
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
PLQ = 1
GOTO 0
160 LOCATE 21, 29
PRINT "Press any key to stop"
DO UNTIL INKEY$ <> ""
LOCATE V, H
PRINT " "
H = H - 1
V = V + 1
IF H < 1 THEN H = 80
IF H > 80 THEN H = 1
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
PLQ = 1
GOTO 0
170 LOCATE 21, 29
PRINT "Press any key to stop"
DO UNTIL INKEY$ <> ""
LOCATE V, H
PRINT " "
H = H - 1
V = V - 1
IF H < 1 THEN H = 80
IF H > 80 THEN H = 1
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
PLQ = 1
GOTO 0
190 LOCATE 22, 40
PRINT "Character number:"
LOCATE 23, 43
INPUT PC
PV = V
PH = H
'Place NE
PV = PV - 1
PH = PH + 1
IF PV < 1 THEN PV = 20
IF PV > 20 THEN PV = 1
IF PH > 80 THEN PH = 1
IF PH < 1 THEN PH = 80
LOCATE PV, PH
PRINT STRING$(1, PC)
PLQ = 1
GOTO 0
200 LOCATE 22, 40
PRINT "Character number:"
LOCATE 23, 43
INPUT PC
PV = V
PH = H
PV = PV + 1
PH = PH - 1
IF PV < 1 THEN PV = 20
IF PV > 20 THEN PV = 1
IF PH > 80 THEN PH = 1
IF PH < 1 THEN PH = 80
LOCATE PV, PH
PRINT STRING$(1, PC)
PLQ = 1
GOTO 0
210 LOCATE 22, 40
PRINT "Character number:"
LOCATE 23, 43
INPUT PC
PV = V
PH = H
PV = PV + 1
PH = PH + 1
IF PV < 1 THEN PV = 20
IF PV > 20 THEN PV = 1
IF PH > 80 THEN PH = 1
IF PH < 1 THEN PH = 80
LOCATE PV, PH
PRINT STRING$(1, PC)
PLQ = 1
GOTO 0
220 LOCATE 22, 40
PRINT "Character number:"
LOCATE 23, 43
INPUT PC
PV = V
PH = H
PV = PV - 1
PH = PH - 1
IF PV < 1 THEN PV = 20
IF PV > 20 THEN PV = 1
IF PH > 80 THEN PH = 1
IF PH < 1 THEN PH = 80
LOCATE PV, PH
PRINT STRING$(1, PC)
PLQ = 1
GOTO 0
180
LOCATE 22, 38
PRINT "Square Size"
LOCATE 23, 38
PRINT "Vertical"
LOCATE 23, 47
INPUT SV
LOCATE 23, 38
PRINT "Horizontal"
LOCATE 23, 49
INPUT SH
LOCATE 21, 30
SHD = SH
SVD = SV
LOCATE 21
PRINT "Press a key now"
PRINT "                                                                               "
PRINT "                                                                               "
DO UNTIL INKEY$ <> "" OR SV = 0
LOCATE V, H
PRINT " "
V = V + 1
SV = SV - 1
IF H > 80 THEN H = 1
IF H < 1 THEN H = 80
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
DO UNTIL SH = 0
LOCATE V, H
PRINT " "
H = H + 1
SH = SH - 1
IF H > 80 THEN H = 1
IF H < 1 THEN H = 80
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
DO UNTIL SVD = 0
LOCATE V, H
PRINT " "
V = V - 1
SVD = SVD - 1
IF H > 80 THEN H = 1
IF H < 1 THEN H = 80
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
DO UNTIL SHD = 0
LOCATE V, H
PRINT " "
H = H - 1
SHD = SHD - 1
IF H > 80 THEN H = 1
IF H < 1 THEN H = 80
IF V < 1 THEN V = 20
IF V > 20 THEN V = 1
LOCATE V, H
PRINT STRING$(1, C)
TIME = 0
DO UNTIL TIME = 7500
TIME = TIME + 1
LOOP
LOOP
GOTO 0
230 LOCATE 22, 40
PRINT "Name"
LOCATE 23, 40
PRINT "Location"
LOCATE 23, 49
PRINT "Vertical"
LOCATE 23, 57
INPUT NV
LOCATE 23, 48
PRINT "                       "
LOCATE 23, 49
PRINT "Horizontal"
LOCATE 23, 59
INPUT NH
LOCATE 23, 40
PRINT "                       "
LOCATE 22, 45
INPUT NAME$
LOCATE NV, NH
PRINT NAME$
GOTO 0

