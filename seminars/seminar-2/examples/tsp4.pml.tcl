wm title . "scenario"
wm geometry . 320x600+650+100
canvas .c -width 800 -height 800 \
	-scrollregion {0c -1c 30c 100c} \
	-xscrollcommand ".hscroll set" \
	-yscrollcommand ".vscroll set" \
	-bg white -relief raised -bd 2
scrollbar .vscroll -relief sunken  -command ".c yview"
scrollbar .hscroll -relief sunken -orient horiz  -command ".c xview"
pack append . \
	.vscroll {right filly} \
	.hscroll {bottom fillx} \
	.c {top expand fill}
.c yview moveto 0
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 278 0 326 20 -fill black
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 276 -2 324 18 -fill ivory
.c create text 300 8 -text "1:TSP"
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 91 0 193 20 -fill black
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 90 -2 190 18 -fill ivory
.c create text 140 8 -text "0:check_opt"
.c create text 70 32 -fill #eef -text "1"
.c create line 140 32 140 32 -fill #eef -dash {6 4}
.c create line 140 36 140 20 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 0 to 1 (Used 1 nobox 0)
# ProcLine[1] stays at 1 (Used 1 nobox 1)
.c create rectangle 132 22 148 42 -fill white -width 0
.c create text 140 32 -text "#4"
.c create text 70 56 -fill #eef -text "3"
.c create line 140 56 140 56 -fill #eef -dash {6 4}
.c create line -20 36 -20 44 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[0] from 0 to 3 (Used 0 nobox 1)
# ProcLine[0] stays at 3 (Used 0 nobox 0)
.c create rectangle -57 46 17 66 -fill ivory
.c create text -20 56 -text " CYCLE>"
.c lower grid
.c raise mesg
