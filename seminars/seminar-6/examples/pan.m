#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - deadlock.plcCommented.pml:694 - [v8 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][1] = 1;
		(trpt+1)->bup.oval = ((int)now.v8);
		now.v8 = 0;
#ifdef VAR_RANGES
		logval("v8", ((int)now.v8));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - deadlock.plcCommented.pml:694 - [v9 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][2] = 1;
		(trpt+1)->bup.oval = ((int)now.v9);
		now.v9 = 0;
#ifdef VAR_RANGES
		logval("v9", ((int)now.v9));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - deadlock.plcCommented.pml:694 - [v11 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][3] = 1;
		(trpt+1)->bup.oval = ((int)now.v11);
		now.v11 = 0;
#ifdef VAR_RANGES
		logval("v11", ((int)now.v11));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - deadlock.plcCommented.pml:694 - [v12 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][4] = 1;
		(trpt+1)->bup.oval = ((int)now.v12);
		now.v12 = 0;
#ifdef VAR_RANGES
		logval("v12", ((int)now.v12));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - deadlock.plcCommented.pml:695 - [v13 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][5] = 1;
		(trpt+1)->bup.oval = ((int)now.v13);
		now.v13 = 0;
#ifdef VAR_RANGES
		logval("v13", ((int)now.v13));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - deadlock.plcCommented.pml:695 - [v15 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][6] = 1;
		(trpt+1)->bup.oval = ((int)now.v15);
		now.v15 = 0;
#ifdef VAR_RANGES
		logval("v15", ((int)now.v15));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - deadlock.plcCommented.pml:695 - [v17 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][7] = 1;
		(trpt+1)->bup.oval = ((int)now.v17);
		now.v17 = 0;
#ifdef VAR_RANGES
		logval("v17", ((int)now.v17));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - deadlock.plcCommented.pml:695 - [v29 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][8] = 1;
		(trpt+1)->bup.oval = ((int)now.v29);
		now.v29 = 0;
#ifdef VAR_RANGES
		logval("v29", ((int)now.v29));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - deadlock.plcCommented.pml:698 - [time = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][9] = 1;
		(trpt+1)->bup.oval = now.time;
		now.time = 0;
#ifdef VAR_RANGES
		logval("time", now.time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - deadlock.plcCommented.pml:699 - [tB1B3 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][10] = 1;
		(trpt+1)->bup.oval = now.tB1B3;
		now.tB1B3 = 0;
#ifdef VAR_RANGES
		logval("tB1B3", now.tB1B3);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - deadlock.plcCommented.pml:699 - [tB2B3 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][11] = 1;
		(trpt+1)->bup.oval = now.tB2B3;
		now.tB2B3 = 0;
#ifdef VAR_RANGES
		logval("tB2B3", now.tB2B3);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - deadlock.plcCommented.pml:699 - [tB3B4 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][12] = 1;
		(trpt+1)->bup.oval = now.tB3B4;
		now.tB3B4 = 0;
#ifdef VAR_RANGES
		logval("tB3B4", now.tB3B4);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 13 - deadlock.plcCommented.pml:699 - [tB4B5 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][13] = 1;
		(trpt+1)->bup.oval = now.tB4B5;
		now.tB4B5 = 0;
#ifdef VAR_RANGES
		logval("tB4B5", now.tB4B5);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - deadlock.plcCommented.pml:699 - [tB5B7 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][14] = 1;
		(trpt+1)->bup.oval = now.tB5B7;
		now.tB5B7 = 0;
#ifdef VAR_RANGES
		logval("tB5B7", now.tB5B7);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - deadlock.plcCommented.pml:700 - [tH = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][15] = 1;
		(trpt+1)->bup.oval = now.tH;
		now.tH = 0;
#ifdef VAR_RANGES
		logval("tH", now.tH);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 16 - deadlock.plcCommented.pml:700 - [tC6 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][16] = 1;
		(trpt+1)->bup.oval = now.tC6;
		now.tC6 = 0;
#ifdef VAR_RANGES
		logval("tC6", now.tC6);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 17 - deadlock.plcCommented.pml:700 - [tC7 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][17] = 1;
		(trpt+1)->bup.oval = now.tC7;
		now.tC7 = 0;
#ifdef VAR_RANGES
		logval("tC7", now.tC7);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 18 - deadlock.plcCommented.pml:700 - [tP1 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][18] = 1;
		(trpt+1)->bup.oval = now.tP1;
		now.tP1 = 0;
#ifdef VAR_RANGES
		logval("tP1", now.tP1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 19 - deadlock.plcCommented.pml:700 - [tP2 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][19] = 1;
		(trpt+1)->bup.oval = now.tP2;
		now.tP2 = 0;
#ifdef VAR_RANGES
		logval("tP2", now.tP2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 20 - deadlock.plcCommented.pml:703 - [batches = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][20] = 1;
		(trpt+1)->bup.oval = now.batches;
		now.batches = 0;
#ifdef VAR_RANGES
		logval("batches", now.batches);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 21 - deadlock.plcCommented.pml:704 - [cycle = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][21] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 22 - deadlock.plcCommented.pml:707 - [px[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][22] = 1;
		(trpt+1)->bup.oval = ((int)now.px[1]);
		now.px[1] = 0;
#ifdef VAR_RANGES
		logval("px[1]", ((int)now.px[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 23 - deadlock.plcCommented.pml:707 - [px[2] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][23] = 1;
		(trpt+1)->bup.oval = ((int)now.px[2]);
		now.px[2] = 0;
#ifdef VAR_RANGES
		logval("px[2]", ((int)now.px[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 24 - deadlock.plcCommented.pml:707 - [px[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][24] = 1;
		(trpt+1)->bup.oval = ((int)now.px[3]);
		now.px[3] = 0;
#ifdef VAR_RANGES
		logval("px[3]", ((int)now.px[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 25 - deadlock.plcCommented.pml:707 - [px[4] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][25] = 1;
		(trpt+1)->bup.oval = ((int)now.px[4]);
		now.px[4] = 0;
#ifdef VAR_RANGES
		logval("px[4]", ((int)now.px[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 26 - deadlock.plcCommented.pml:707 - [px[5] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][26] = 1;
		(trpt+1)->bup.oval = ((int)now.px[5]);
		now.px[5] = 0;
#ifdef VAR_RANGES
		logval("px[5]", ((int)now.px[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 27 - deadlock.plcCommented.pml:707 - [px[6] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][27] = 1;
		(trpt+1)->bup.oval = ((int)now.px[6]);
		now.px[6] = 0;
#ifdef VAR_RANGES
		logval("px[6]", ((int)now.px[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 28 - deadlock.plcCommented.pml:708 - [px[7] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][28] = 1;
		(trpt+1)->bup.oval = ((int)now.px[7]);
		now.px[7] = 0;
#ifdef VAR_RANGES
		logval("px[7]", ((int)now.px[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 29 - deadlock.plcCommented.pml:708 - [px[8] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][29] = 1;
		(trpt+1)->bup.oval = ((int)now.px[8]);
		now.px[8] = 0;
#ifdef VAR_RANGES
		logval("px[8]", ((int)now.px[8]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 30 - deadlock.plcCommented.pml:708 - [px[9] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][30] = 1;
		(trpt+1)->bup.oval = ((int)now.px[9]);
		now.px[9] = 0;
#ifdef VAR_RANGES
		logval("px[9]", ((int)now.px[9]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 31 - deadlock.plcCommented.pml:708 - [px[10] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][31] = 1;
		(trpt+1)->bup.oval = ((int)now.px[10]);
		now.px[10] = 0;
#ifdef VAR_RANGES
		logval("px[10]", ((int)now.px[10]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 32 - deadlock.plcCommented.pml:708 - [px[11] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][32] = 1;
		(trpt+1)->bup.oval = ((int)now.px[11]);
		now.px[11] = 0;
#ifdef VAR_RANGES
		logval("px[11]", ((int)now.px[11]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 33 - deadlock.plcCommented.pml:708 - [px[12] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][33] = 1;
		(trpt+1)->bup.oval = ((int)now.px[12]);
		now.px[12] = 0;
#ifdef VAR_RANGES
		logval("px[12]", ((int)now.px[12]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 34 - deadlock.plcCommented.pml:711 - [mix = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][34] = 1;
		(trpt+1)->bup.oval = ((int)now.mix);
		now.mix = 0;
#ifdef VAR_RANGES
		logval("mix", ((int)now.mix));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 35 - deadlock.plcCommented.pml:711 - [heat = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][35] = 1;
		(trpt+1)->bup.oval = ((int)now.heat);
		now.heat = 0;
#ifdef VAR_RANGES
		logval("heat", ((int)now.heat));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 36 - deadlock.plcCommented.pml:712 - [p1 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][36] = 1;
		(trpt+1)->bup.oval = ((int)now.p1);
		now.p1 = 0;
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 37 - deadlock.plcCommented.pml:712 - [p2 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[12][37] = 1;
		(trpt+1)->bup.oval = ((int)now.p2);
		now.p2 = 0;
#ifdef VAR_RANGES
		logval("p2", ((int)now.p2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 38 - deadlock.plcCommented.pml:715 - [B1 = sol42C] (0:0:1 - 1)
		IfNotBlocked
		reached[12][38] = 1;
		(trpt+1)->bup.oval = now.B1;
		now.B1 = 10;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 39 - deadlock.plcCommented.pml:715 - [B2 = water28C] (0:0:1 - 1)
		IfNotBlocked
		reached[12][39] = 1;
		(trpt+1)->bup.oval = now.B2;
		now.B2 = 4;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 40 - deadlock.plcCommented.pml:715 - [B3 = cempty] (0:0:1 - 1)
		IfNotBlocked
		reached[12][40] = 1;
		(trpt+1)->bup.oval = now.B3;
		now.B3 = 13;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 41 - deadlock.plcCommented.pml:715 - [B4 = cempty] (0:0:1 - 1)
		IfNotBlocked
		reached[12][41] = 1;
		(trpt+1)->bup.oval = now.B4;
		now.B4 = 13;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 42 - deadlock.plcCommented.pml:715 - [B5 = cempty] (0:0:1 - 1)
		IfNotBlocked
		reached[12][42] = 1;
		(trpt+1)->bup.oval = now.B5;
		now.B5 = 13;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 43 - deadlock.plcCommented.pml:715 - [B6 = cempty] (0:0:1 - 1)
		IfNotBlocked
		reached[12][43] = 1;
		(trpt+1)->bup.oval = now.B6;
		now.B6 = 13;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 44 - deadlock.plcCommented.pml:715 - [B7 = cempty] (0:0:1 - 1)
		IfNotBlocked
		reached[12][44] = 1;
		(trpt+1)->bup.oval = now.B7;
		now.B7 = 13;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 45 - deadlock.plcCommented.pml:718 - [(run B1toB3())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][45] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 46 - deadlock.plcCommented.pml:719 - [(run B2toB3())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][46] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 47 - deadlock.plcCommented.pml:720 - [(run B3toB4())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][47] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 48 - deadlock.plcCommented.pml:721 - [(run B4toB5())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][48] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 49 - deadlock.plcCommented.pml:722 - [(run Heat5())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][49] = 1;
		if (!(addproc(II, 1, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 50 - deadlock.plcCommented.pml:723 - [(run B5toB7())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][50] = 1;
		if (!(addproc(II, 1, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 51 - deadlock.plcCommented.pml:724 - [(run Cool6())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][51] = 1;
		if (!(addproc(II, 1, 6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 52 - deadlock.plcCommented.pml:725 - [(run Cool7())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][52] = 1;
		if (!(addproc(II, 1, 7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 53 - deadlock.plcCommented.pml:726 - [(run Pump1())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][53] = 1;
		if (!(addproc(II, 1, 8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 54 - deadlock.plcCommented.pml:727 - [(run Pump2())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][54] = 1;
		if (!(addproc(II, 1, 9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 55 - deadlock.plcCommented.pml:728 - [(run Control())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][55] = 1;
		if (!(addproc(II, 1, 10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 56 - deadlock.plcCommented.pml:729 - [(run Advance())] (0:0:0 - 1)
		IfNotBlocked
		reached[12][56] = 1;
		if (!(addproc(II, 1, 11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 58 - deadlock.plcCommented.pml:731 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[12][58] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Advance */
	case 60: // STATE 1 - deadlock.plcCommented.pml:664 - [((((((((((((((((((((((((px[1]||px[2])||px[3])||px[4])||px[5])||px[6])||px[7])||px[8])||px[9])||px[10])||px[11])||px[12])&&(!(px[1])||((((B1==undef1)||(B1==undef2))&&((B3==undef1)||(B3==undef2)))&&(tB1B3>time))))&&(!(px[2])||((((B2==undef1)||(B2==undef2))&&((B3==undef1)||(B3==undef2)))&&(tB2B3>time))))&&(!(px[3])||((((B1==undef1)||(B1==undef2))&&((B3==undef1)||(B3==undef2)))&&(tB1B3>time))))&&(!(px[4])||((((B2==undef1)||(B2==undef2))&&((B3==undef1)||(B3==undef2)))&&(tB2B3>time))))&&(!(px[5])||((((B3==undef1)||(B3==undef2))&&((B4==undef1)||(B4==undef2)))&&(tB3B4>time))))&&(!(px[6])||((((B4==undef1)||(B4==undef2))&&((B5==undef1)||(B5==undef2)))&&(tB4B5>time))))&&(!(px[7])||((((B5==undef1)||(B5==undef2))&&((B6==undef1)||(B6==undef2)))&&(tH>time))))&&(!(px[8])||((((B5==undef1)||(B5==undef2))&&((B7==undef1)||(B7==undef2)))&&(tB5B7>time))))&&(!(px[9])||((((B7==undef1)||(B7==undef2))&&v17)&&(tC7>time))))&&(!(px[10])||((((B6==undef1)||(B6==undef2))&&v29)&&(tC6>time))))&&(!(px[11])||((((B7==undef1)||(B7==undef2))&&((B1==undef1)||(B1==undef2)))&&(tP1>time))))&&(!(px[12])||((((B6==undef1)||(B6==undef2))&&((B2==undef1)||(B2==undef2)))&&(tP2>time)))))] (14:0:2 - 1)
		IfNotBlocked
		reached[11][1] = 1;
		if (!((((((((((((((((((((((((((int)now.px[1])||((int)now.px[2]))||((int)now.px[3]))||((int)now.px[4]))||((int)now.px[5]))||((int)now.px[6]))||((int)now.px[7]))||((int)now.px[8]))||((int)now.px[9]))||((int)now.px[10]))||((int)now.px[11]))||((int)now.px[12]))&&( !(((int)now.px[1]))||((((now.B1==12)||(now.B1==11))&&((now.B3==12)||(now.B3==11)))&&(now.tB1B3>now.time))))&&( !(((int)now.px[2]))||((((now.B2==12)||(now.B2==11))&&((now.B3==12)||(now.B3==11)))&&(now.tB2B3>now.time))))&&( !(((int)now.px[3]))||((((now.B1==12)||(now.B1==11))&&((now.B3==12)||(now.B3==11)))&&(now.tB1B3>now.time))))&&( !(((int)now.px[4]))||((((now.B2==12)||(now.B2==11))&&((now.B3==12)||(now.B3==11)))&&(now.tB2B3>now.time))))&&( !(((int)now.px[5]))||((((now.B3==12)||(now.B3==11))&&((now.B4==12)||(now.B4==11)))&&(now.tB3B4>now.time))))&&( !(((int)now.px[6]))||((((now.B4==12)||(now.B4==11))&&((now.B5==12)||(now.B5==11)))&&(now.tB4B5>now.time))))&&( !(((int)now.px[7]))||((((now.B5==12)||(now.B5==11))&&((now.B6==12)||(now.B6==11)))&&(now.tH>now.time))))&&( !(((int)now.px[8]))||((((now.B5==12)||(now.B5==11))&&((now.B7==12)||(now.B7==11)))&&(now.tB5B7>now.time))))&&( !(((int)now.px[9]))||((((now.B7==12)||(now.B7==11))&&((int)now.v17))&&(now.tC7>now.time))))&&( !(((int)now.px[10]))||((((now.B6==12)||(now.B6==11))&&((int)now.v29))&&(now.tC6>now.time))))&&( !(((int)now.px[11]))||((((now.B7==12)||(now.B7==11))&&((now.B1==12)||(now.B1==11)))&&(now.tP1>now.time))))&&( !(((int)now.px[12]))||((((now.B6==12)||(now.B6==11))&&((now.B2==12)||(now.B2==11)))&&(now.tP2>now.time))))))
			continue;
		/* merge: minstep = 120(14, 2, 14) */
		reached[11][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P11 *)_this)->minstep;
		((P11 *)_this)->minstep = 120;
#ifdef VAR_RANGES
		logval("Advance:minstep", ((P11 *)_this)->minstep);
#endif
		;
		/* merge: i = 1(14, 3, 14) */
		reached[11][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P11 *)_this)->i;
		((P11 *)_this)->i = 1;
#ifdef VAR_RANGES
		logval("Advance:i", ((P11 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[11][15] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 61: // STATE 4 - deadlock.plcCommented.pml:671 - [((i<13))] (0:0:0 - 1)
		IfNotBlocked
		reached[11][4] = 1;
		if (!((((P11 *)_this)->i<13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 5 - deadlock.plcCommented.pml:673 - [((px[i]&&((( ((i==1)) -> (tB1B3) : (( ((i==2)) -> (tB2B3) : (( ((i==3)) -> (tB1B3) : (( ((i==4)) -> (tB2B3) : (( ((i==5)) -> (tB3B4) : (( ((i==6)) -> (tB4B5) : (( ((i==7)) -> (tH) : (( ((i==8)) -> (tB5B7) : (( ((i==9)) -> (tC7) : (( ((i==10)) -> (tC6) : (( ((i==11)) -> (tP1) : (tP2) )) )) )) )) )) )) )) )) )) )) )-time)<minstep)))] (14:0:3 - 1)
		IfNotBlocked
		reached[11][5] = 1;
		if (!((((int)now.px[ Index(((P11 *)_this)->i, 13) ])&&((( ((((P11 *)_this)->i==1)) ? (now.tB1B3) : (( ((((P11 *)_this)->i==2)) ? (now.tB2B3) : (( ((((P11 *)_this)->i==3)) ? (now.tB1B3) : (( ((((P11 *)_this)->i==4)) ? (now.tB2B3) : (( ((((P11 *)_this)->i==5)) ? (now.tB3B4) : (( ((((P11 *)_this)->i==6)) ? (now.tB4B5) : (( ((((P11 *)_this)->i==7)) ? (now.tH) : (( ((((P11 *)_this)->i==8)) ? (now.tB5B7) : (( ((((P11 *)_this)->i==9)) ? (now.tC7) : (( ((((P11 *)_this)->i==10)) ? (now.tC6) : (( ((((P11 *)_this)->i==11)) ? (now.tP1) : (now.tP2) )) )) )) )) )) )) )) )) )) )) )-now.time)<((P11 *)_this)->minstep))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: minstep */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P11 *)_this)->minstep;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P11 *)_this)->minstep = 0;
		/* merge: minstep = (( ((i==1)) -> (tB1B3) : (( ((i==2)) -> (tB2B3) : (( ((i==3)) -> (tB1B3) : (( ((i==4)) -> (tB2B3) : (( ((i==5)) -> (tB3B4) : (( ((i==6)) -> (tB4B5) : (( ((i==7)) -> (tH) : (( ((i==8)) -> (tB5B7) : (( ((i==9)) -> (tC7) : (( ((i==10)) -> (tC6) : (( ((i==11)) -> (tP1) : (tP2) )) )) )) )) )) )) )) )) )) )) )-time)(14, 6, 14) */
		reached[11][6] = 1;
		(trpt+1)->bup.ovals[1] = ((P11 *)_this)->minstep;
		((P11 *)_this)->minstep = (( ((((P11 *)_this)->i==1)) ? (now.tB1B3) : (( ((((P11 *)_this)->i==2)) ? (now.tB2B3) : (( ((((P11 *)_this)->i==3)) ? (now.tB1B3) : (( ((((P11 *)_this)->i==4)) ? (now.tB2B3) : (( ((((P11 *)_this)->i==5)) ? (now.tB3B4) : (( ((((P11 *)_this)->i==6)) ? (now.tB4B5) : (( ((((P11 *)_this)->i==7)) ? (now.tH) : (( ((((P11 *)_this)->i==8)) ? (now.tB5B7) : (( ((((P11 *)_this)->i==9)) ? (now.tC7) : (( ((((P11 *)_this)->i==10)) ? (now.tC6) : (( ((((P11 *)_this)->i==11)) ? (now.tP1) : (now.tP2) )) )) )) )) )) )) )) )) )) )) )-now.time);
#ifdef VAR_RANGES
		logval("Advance:minstep", ((P11 *)_this)->minstep);
#endif
		;
		/* merge: .(goto)(14, 10, 14) */
		reached[11][10] = 1;
		;
		/* merge: i = (i+1)(14, 11, 14) */
		reached[11][11] = 1;
		(trpt+1)->bup.ovals[2] = ((P11 *)_this)->i;
		((P11 *)_this)->i = (((P11 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Advance:i", ((P11 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[11][15] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 63: // STATE 8 - deadlock.plcCommented.pml:675 - [(1)] (14:0:1 - 1)
		IfNotBlocked
		reached[11][8] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(14, 10, 14) */
		reached[11][10] = 1;
		;
		/* merge: i = (i+1)(14, 11, 14) */
		reached[11][11] = 1;
		(trpt+1)->bup.oval = ((P11 *)_this)->i;
		((P11 *)_this)->i = (((P11 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Advance:i", ((P11 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[11][15] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 64: // STATE 11 - deadlock.plcCommented.pml:677 - [i = (i+1)] (0:14:1 - 3)
		IfNotBlocked
		reached[11][11] = 1;
		(trpt+1)->bup.oval = ((P11 *)_this)->i;
		((P11 *)_this)->i = (((P11 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Advance:i", ((P11 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[11][15] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 65: // STATE 12 - deadlock.plcCommented.pml:678 - [((i==13))] (17:0:1 - 1)
		IfNotBlocked
		reached[11][12] = 1;
		if (!((((P11 *)_this)->i==13)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P11 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P11 *)_this)->i = 0;
		/* merge: goto step(0, 13, 17) */
		reached[11][13] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 66: // STATE 17 - deadlock.plcCommented.pml:683 - [time = (time+minstep)] (0:0:1 - 2)
		IfNotBlocked
		reached[11][17] = 1;
		(trpt+1)->bup.oval = now.time;
		now.time = (now.time+((P11 *)_this)->minstep);
#ifdef VAR_RANGES
		logval("time", now.time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 22 - deadlock.plcCommented.pml:686 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[11][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Control */
	case 68: // STATE 1 - deadlock.plcCommented.pml:557 - [((time<5000))] (0:0:0 - 1)
		IfNotBlocked
		reached[10][1] = 1;
		if (!((now.time<5000)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 2 - deadlock.plcCommented.pml:559 - [i = 1] (0:61:2 - 1)
		IfNotBlocked
		reached[10][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->i;
		((P10 *)_this)->i = 1;
#ifdef VAR_RANGES
		logval("Control:i", ((P10 *)_this)->i);
#endif
		;
		/* merge: j = 1(61, 3, 61) */
		reached[10][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P10 *)_this)->j;
		((P10 *)_this)->j = 1;
#ifdef VAR_RANGES
		logval("Control:j", ((P10 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[10][62] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 70: // STATE 4 - deadlock.plcCommented.pml:565 - [((i<15))] (50:0:1 - 1)
		IfNotBlocked
		reached[10][4] = 1;
		if (!((((P10 *)_this)->i<15)))
			continue;
		/* merge: postcon = ((((((((((((((((((((((((((((((((i==1)&&(j==1))&&(B1==cempty))&&(B3==sol42C))||((((i==1)&&(j==2))&&(B1==sol42C))&&(B3==sol42C)))||((((i==2)&&(j==1))&&(B2==cempty))&&(B3==water28C)))||((((i==2)&&(j==2))&&(B2==water28C))&&(B3==water28C)))||((((i==3)&&(j==1))&&(B1==cempty))&&(B3==sol70C)))||((((i==3)&&(j==2))&&(B1==sol42C))&&(B3==sol70C)))||((((i==4)&&(j==1))&&(B2==cempty))&&(B3==sol70C)))||((((i==4)&&(j==2))&&(B2==water28C))&&(B3==sol70C)))||((((i==5)&&(j==1))&&(B3==cempty))&&(B4==sol70C)))||((((i==5)&&(j==2))&&(B3==cempty))&&(B4==sol140C)))||((((i==6)&&(j==1))&&(B4==cempty))&&(B5==sol70C)))||((((i==6)&&(j==2))&&(B4==sol70C))&&(B5==sol70C)))||((((i==7)&&(j==1))&&(B5==sol42H))&&(B6==water28H)))||((((i==7)&&(j==2))&&(B5==sol42H))&&(B6==water56H)))||((((i==8)&&(j==1))&&(B5==cempty))&&(B7==sol42H)))||((((i==8)&&(j==2))&&(B5==cempty))&&(B7==sol84H)))||(((i==9)&&(j==1))&&(B7==sol42C)))||(((i==9)&&(j==2))&&(B7==sol84C)))||(((i==10)&&(j==1))&&(B6==water28C)))||(((i==10)&&(j==2))&&(B6==water56C)))||((((i==11)&&(j==1))&&(B7==cempty))&&(B1==sol42C)))||((((i==11)&&(j==2))&&(B7==sol42C))&&(B1==sol42C)))||((((i==12)&&(j==1))&&(B7==cempty))&&(B1==sol84C)))||((((i==12)&&(j==2))&&(B7==sol42C))&&(B1==sol84C)))||((((i==13)&&(j==1))&&(B6==cempty))&&(B2==water28C)))||((((i==13)&&(j==2))&&(B6==water28C))&&(B2==water28C)))||((((i==14)&&(j==1))&&(B6==cempty))&&(B2==water56C)))||((((i==14)&&(j==2))&&(B6==water28C))&&(B2==water56C)))&&px[( ((i<12)) ? (i) : (( (((i==12)||(i==13))) ? ((i-1)) : ((i-2)) )) )])(0, 5, 50) */
		reached[10][5] = 1;
		(trpt+1)->bup.oval = ((int)((P10 *)_this)->postcon);
		((P10 *)_this)->postcon = ((((((((((((((((((((((((((((((((((P10 *)_this)->i==1)&&(((P10 *)_this)->j==1))&&(now.B1==13))&&(now.B3==10))||((((((P10 *)_this)->i==1)&&(((P10 *)_this)->j==2))&&(now.B1==10))&&(now.B3==10)))||((((((P10 *)_this)->i==2)&&(((P10 *)_this)->j==1))&&(now.B2==13))&&(now.B3==4)))||((((((P10 *)_this)->i==2)&&(((P10 *)_this)->j==2))&&(now.B2==4))&&(now.B3==4)))||((((((P10 *)_this)->i==3)&&(((P10 *)_this)->j==1))&&(now.B1==13))&&(now.B3==6)))||((((((P10 *)_this)->i==3)&&(((P10 *)_this)->j==2))&&(now.B1==10))&&(now.B3==6)))||((((((P10 *)_this)->i==4)&&(((P10 *)_this)->j==1))&&(now.B2==13))&&(now.B3==6)))||((((((P10 *)_this)->i==4)&&(((P10 *)_this)->j==2))&&(now.B2==4))&&(now.B3==6)))||((((((P10 *)_this)->i==5)&&(((P10 *)_this)->j==1))&&(now.B3==13))&&(now.B4==6)))||((((((P10 *)_this)->i==5)&&(((P10 *)_this)->j==2))&&(now.B3==13))&&(now.B4==5)))||((((((P10 *)_this)->i==6)&&(((P10 *)_this)->j==1))&&(now.B4==13))&&(now.B5==6)))||((((((P10 *)_this)->i==6)&&(((P10 *)_this)->j==2))&&(now.B4==6))&&(now.B5==6)))||((((((P10 *)_this)->i==7)&&(((P10 *)_this)->j==1))&&(now.B5==9))&&(now.B6==3)))||((((((P10 *)_this)->i==7)&&(((P10 *)_this)->j==2))&&(now.B5==9))&&(now.B6==1)))||((((((P10 *)_this)->i==8)&&(((P10 *)_this)->j==1))&&(now.B5==13))&&(now.B7==9)))||((((((P10 *)_this)->i==8)&&(((P10 *)_this)->j==2))&&(now.B5==13))&&(now.B7==7)))||(((((P10 *)_this)->i==9)&&(((P10 *)_this)->j==1))&&(now.B7==10)))||(((((P10 *)_this)->i==9)&&(((P10 *)_this)->j==2))&&(now.B7==8)))||(((((P10 *)_this)->i==10)&&(((P10 *)_this)->j==1))&&(now.B6==4)))||(((((P10 *)_this)->i==10)&&(((P10 *)_this)->j==2))&&(now.B6==2)))||((((((P10 *)_this)->i==11)&&(((P10 *)_this)->j==1))&&(now.B7==13))&&(now.B1==10)))||((((((P10 *)_this)->i==11)&&(((P10 *)_this)->j==2))&&(now.B7==10))&&(now.B1==10)))||((((((P10 *)_this)->i==12)&&(((P10 *)_this)->j==1))&&(now.B7==13))&&(now.B1==8)))||((((((P10 *)_this)->i==12)&&(((P10 *)_this)->j==2))&&(now.B7==10))&&(now.B1==8)))||((((((P10 *)_this)->i==13)&&(((P10 *)_this)->j==1))&&(now.B6==13))&&(now.B2==4)))||((((((P10 *)_this)->i==13)&&(((P10 *)_this)->j==2))&&(now.B6==4))&&(now.B2==4)))||((((((P10 *)_this)->i==14)&&(((P10 *)_this)->j==1))&&(now.B6==13))&&(now.B2==2)))||((((((P10 *)_this)->i==14)&&(((P10 *)_this)->j==2))&&(now.B6==4))&&(now.B2==2)))&&((int)now.px[ Index(( ((((P10 *)_this)->i<12)) ? (((P10 *)_this)->i) : (( (((((P10 *)_this)->i==12)||(((P10 *)_this)->i==13))) ? ((((P10 *)_this)->i-1)) : ((((P10 *)_this)->i-2)) )) ), 13) ]));
#ifdef VAR_RANGES
		logval("Control:postcon", ((int)((P10 *)_this)->postcon));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 71: // STATE 6 - deadlock.plcCommented.pml:568 - [(postcon)] (0:0:1 - 1)
		IfNotBlocked
		reached[10][6] = 1;
		if (!(((int)((P10 *)_this)->postcon)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: postcon */  (trpt+1)->bup.oval = ((P10 *)_this)->postcon;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->postcon = 0;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 7 - deadlock.plcCommented.pml:568 - [((i==1))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][7] = 1;
		if (!((((P10 *)_this)->i==1)))
			continue;
		/* merge: px[1] = 0(57, 8, 57) */
		reached[10][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[1]);
		now.px[1] = 0;
#ifdef VAR_RANGES
		logval("px[1]", ((int)now.px[1]));
#endif
		;
		/* merge: v8 = 0(57, 9, 57) */
		reached[10][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v8);
		now.v8 = 0;
#ifdef VAR_RANGES
		logval("v8", ((int)now.v8));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 73: // STATE 10 - deadlock.plcCommented.pml:568 - [((i==2))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][10] = 1;
		if (!((((P10 *)_this)->i==2)))
			continue;
		/* merge: px[2] = 0(57, 11, 57) */
		reached[10][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[2]);
		now.px[2] = 0;
#ifdef VAR_RANGES
		logval("px[2]", ((int)now.px[2]));
#endif
		;
		/* merge: v9 = 0(57, 12, 57) */
		reached[10][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v9);
		now.v9 = 0;
#ifdef VAR_RANGES
		logval("v9", ((int)now.v9));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 74: // STATE 13 - deadlock.plcCommented.pml:568 - [((i==3))] (57:0:3 - 1)
		IfNotBlocked
		reached[10][13] = 1;
		if (!((((P10 *)_this)->i==3)))
			continue;
		/* merge: px[3] = 0(57, 14, 57) */
		reached[10][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.px[3]);
		now.px[3] = 0;
#ifdef VAR_RANGES
		logval("px[3]", ((int)now.px[3]));
#endif
		;
		/* merge: v8 = 0(57, 15, 57) */
		reached[10][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v8);
		now.v8 = 0;
#ifdef VAR_RANGES
		logval("v8", ((int)now.v8));
#endif
		;
		/* merge: mix = 0(57, 16, 57) */
		reached[10][16] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.mix);
		now.mix = 0;
#ifdef VAR_RANGES
		logval("mix", ((int)now.mix));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 75: // STATE 17 - deadlock.plcCommented.pml:568 - [((i==4))] (57:0:3 - 1)
		IfNotBlocked
		reached[10][17] = 1;
		if (!((((P10 *)_this)->i==4)))
			continue;
		/* merge: px[4] = 0(57, 18, 57) */
		reached[10][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.px[4]);
		now.px[4] = 0;
#ifdef VAR_RANGES
		logval("px[4]", ((int)now.px[4]));
#endif
		;
		/* merge: v9 = 0(57, 19, 57) */
		reached[10][19] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v9);
		now.v9 = 0;
#ifdef VAR_RANGES
		logval("v9", ((int)now.v9));
#endif
		;
		/* merge: mix = 0(57, 20, 57) */
		reached[10][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.mix);
		now.mix = 0;
#ifdef VAR_RANGES
		logval("mix", ((int)now.mix));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 76: // STATE 21 - deadlock.plcCommented.pml:568 - [((i==5))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][21] = 1;
		if (!((((P10 *)_this)->i==5)))
			continue;
		/* merge: px[5] = 0(57, 22, 57) */
		reached[10][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[5]);
		now.px[5] = 0;
#ifdef VAR_RANGES
		logval("px[5]", ((int)now.px[5]));
#endif
		;
		/* merge: v11 = 0(57, 23, 57) */
		reached[10][23] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v11);
		now.v11 = 0;
#ifdef VAR_RANGES
		logval("v11", ((int)now.v11));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 77: // STATE 24 - deadlock.plcCommented.pml:568 - [((i==6))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][24] = 1;
		if (!((((P10 *)_this)->i==6)))
			continue;
		/* merge: px[6] = 0(57, 25, 57) */
		reached[10][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[6]);
		now.px[6] = 0;
#ifdef VAR_RANGES
		logval("px[6]", ((int)now.px[6]));
#endif
		;
		/* merge: v12 = 0(57, 26, 57) */
		reached[10][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v12);
		now.v12 = 0;
#ifdef VAR_RANGES
		logval("v12", ((int)now.v12));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 78: // STATE 27 - deadlock.plcCommented.pml:568 - [((i==7))] (57:0:3 - 1)
		IfNotBlocked
		reached[10][27] = 1;
		if (!((((P10 *)_this)->i==7)))
			continue;
		/* merge: px[7] = 0(57, 28, 57) */
		reached[10][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.px[7]);
		now.px[7] = 0;
#ifdef VAR_RANGES
		logval("px[7]", ((int)now.px[7]));
#endif
		;
		/* merge: heat = 0(57, 29, 57) */
		reached[10][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.heat);
		now.heat = 0;
#ifdef VAR_RANGES
		logval("heat", ((int)now.heat));
#endif
		;
		/* merge: v13 = 0(57, 30, 57) */
		reached[10][30] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v13);
		now.v13 = 0;
#ifdef VAR_RANGES
		logval("v13", ((int)now.v13));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 79: // STATE 31 - deadlock.plcCommented.pml:568 - [((i==8))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][31] = 1;
		if (!((((P10 *)_this)->i==8)))
			continue;
		/* merge: px[8] = 0(57, 32, 57) */
		reached[10][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[8]);
		now.px[8] = 0;
#ifdef VAR_RANGES
		logval("px[8]", ((int)now.px[8]));
#endif
		;
		/* merge: v15 = 0(57, 33, 57) */
		reached[10][33] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v15);
		now.v15 = 0;
#ifdef VAR_RANGES
		logval("v15", ((int)now.v15));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 80: // STATE 34 - deadlock.plcCommented.pml:568 - [((i==9))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][34] = 1;
		if (!((((P10 *)_this)->i==9)))
			continue;
		/* merge: px[9] = 0(57, 35, 57) */
		reached[10][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[9]);
		now.px[9] = 0;
#ifdef VAR_RANGES
		logval("px[9]", ((int)now.px[9]));
#endif
		;
		/* merge: v17 = 0(57, 36, 57) */
		reached[10][36] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v17);
		now.v17 = 0;
#ifdef VAR_RANGES
		logval("v17", ((int)now.v17));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 81: // STATE 37 - deadlock.plcCommented.pml:568 - [((i==10))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][37] = 1;
		if (!((((P10 *)_this)->i==10)))
			continue;
		/* merge: px[10] = 0(57, 38, 57) */
		reached[10][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[10]);
		now.px[10] = 0;
#ifdef VAR_RANGES
		logval("px[10]", ((int)now.px[10]));
#endif
		;
		/* merge: v29 = 0(57, 39, 57) */
		reached[10][39] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v29);
		now.v29 = 0;
#ifdef VAR_RANGES
		logval("v29", ((int)now.v29));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 82: // STATE 40 - deadlock.plcCommented.pml:568 - [(((i==11)||(i==12)))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][40] = 1;
		if (!(((((P10 *)_this)->i==11)||(((P10 *)_this)->i==12))))
			continue;
		/* merge: px[11] = 0(57, 41, 57) */
		reached[10][41] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[11]);
		now.px[11] = 0;
#ifdef VAR_RANGES
		logval("px[11]", ((int)now.px[11]));
#endif
		;
		/* merge: p1 = 0(57, 42, 57) */
		reached[10][42] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.p1);
		now.p1 = 0;
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 83: // STATE 43 - deadlock.plcCommented.pml:568 - [(((i==13)||(i==14)))] (57:0:2 - 1)
		IfNotBlocked
		reached[10][43] = 1;
		if (!(((((P10 *)_this)->i==13)||(((P10 *)_this)->i==14))))
			continue;
		/* merge: px[12] = 0(57, 44, 57) */
		reached[10][44] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[12]);
		now.px[12] = 0;
#ifdef VAR_RANGES
		logval("px[12]", ((int)now.px[12]));
#endif
		;
		/* merge: p2 = 0(57, 45, 57) */
		reached[10][45] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.p2);
		now.p2 = 0;
#ifdef VAR_RANGES
		logval("p2", ((int)now.p2));
#endif
		;
		/* merge: .(goto)(0, 47, 57) */
		reached[10][47] = 1;
		;
		/* merge: .(goto)(0, 51, 57) */
		reached[10][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 84: // STATE 52 - deadlock.plcCommented.pml:572 - [((j==1))] (61:0:2 - 1)
		IfNotBlocked
		reached[10][52] = 1;
		if (!((((P10 *)_this)->j==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->j = 0;
		/* merge: j = 2(0, 53, 61) */
		reached[10][53] = 1;
		(trpt+1)->bup.ovals[1] = ((P10 *)_this)->j;
		((P10 *)_this)->j = 2;
#ifdef VAR_RANGES
		logval("Control:j", ((P10 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 58, 61) */
		reached[10][58] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[10][62] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 85: // STATE 54 - deadlock.plcCommented.pml:573 - [((j==2))] (61:0:3 - 1)
		IfNotBlocked
		reached[10][54] = 1;
		if (!((((P10 *)_this)->j==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->j = 0;
		/* merge: j = 1(61, 55, 61) */
		reached[10][55] = 1;
		(trpt+1)->bup.ovals[1] = ((P10 *)_this)->j;
		((P10 *)_this)->j = 1;
#ifdef VAR_RANGES
		logval("Control:j", ((P10 *)_this)->j);
#endif
		;
		/* merge: i = (i+1)(61, 56, 61) */
		reached[10][56] = 1;
		(trpt+1)->bup.ovals[2] = ((P10 *)_this)->i;
		((P10 *)_this)->i = (((P10 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Control:i", ((P10 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 58, 61) */
		reached[10][58] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[10][62] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 86: // STATE 59 - deadlock.plcCommented.pml:575 - [((i==15))] (0:0:1 - 1)
		IfNotBlocked
		reached[10][59] = 1;
		if (!((((P10 *)_this)->i==15)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P10 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 64 - deadlock.plcCommented.pml:579 - [i = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[10][64] = 1;
		(trpt+1)->bup.oval = ((P10 *)_this)->i;
		((P10 *)_this)->i = 1;
#ifdef VAR_RANGES
		logval("Control:i", ((P10 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 65 - deadlock.plcCommented.pml:579 - [j = 1] (0:126:2 - 1)
		IfNotBlocked
		reached[10][65] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->j;
		((P10 *)_this)->j = 1;
#ifdef VAR_RANGES
		logval("Control:j", ((P10 *)_this)->j);
#endif
		;
		/* merge: last = 1(126, 66, 126) */
		reached[10][66] = 1;
		(trpt+1)->bup.ovals[1] = ((P10 *)_this)->last;
		((P10 *)_this)->last = 1;
#ifdef VAR_RANGES
		logval("Control:last", ((P10 *)_this)->last);
#endif
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[10][127] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 89: // STATE 67 - deadlock.plcCommented.pml:586 - [((i<15))] (115:0:1 - 1)
		IfNotBlocked
		reached[10][67] = 1;
		if (!((((P10 *)_this)->i<15)))
			continue;
		/* merge: precon = ((((((((((((((((((((((((((((((((((i==1)&&(j==1))&&(B1==sol42C))&&(B3==cempty))||((((i==1)&&(j==2))&&(B1==sol84C))&&(B3==cempty)))||((((i==2)&&(j==1))&&(B2==water28C))&&(B3==cempty)))||((((i==2)&&(j==2))&&(B2==water56C))&&(B3==cempty)))||((((i==3)&&(j==1))&&(B1==sol42C))&&(B3==water28C)))||((((i==3)&&(j==2))&&(B1==sol84C))&&(B3==water28C)))||((((i==4)&&(j==1))&&(B2==water28C))&&(B3==sol42C)))||((((i==4)&&(j==2))&&(B2==water56C))&&(B3==sol42C)))||((((i==5)&&(j==1))&&(B3==sol70C))&&(B4==cempty)))||((((i==5)&&(j==2))&&(B3==sol70C))&&(B4==sol70C)))||((((i==6)&&(j==1))&&(B4==sol70C))&&(B5==cempty)))||((((i==6)&&(j==2))&&(B4==sol140C))&&(B5==cempty)))||((((i==7)&&(j==1))&&(B5==sol70C))&&(B6==cempty)))||((((i==7)&&(j==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((i==8)&&(j==1))&&(B5==sol42H))&&(B7==cempty)))||((((i==8)&&(j==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((i==9)&&(j==1))&&(B7==sol42H)))||(((i==9)&&(j==2))&&(B7==sol84H)))||(((i==10)&&(j==1))&&(B6==water28H)))||(((i==10)&&(j==2))&&(B6==water56H)))||((((i==11)&&(j==1))&&(B7==sol42C))&&(B1==cempty)))||((((i==11)&&(j==2))&&(B7==sol84C))&&(B1==cempty)))||((((i==12)&&(j==1))&&(B7==sol42C))&&(B1==sol42C)))||((((i==12)&&(j==2))&&(B7==sol84C))&&(B1==sol42C)))||((((i==13)&&(j==1))&&(B6==water28C))&&(B2==cempty)))||((((i==13)&&(j==2))&&(B6==water56C))&&(B2==cempty)))||((((i==14)&&(j==1))&&(B6==water28C))&&(B2==water28C)))||((((i==14)&&(j==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((i==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((i==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((i==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((i==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((i==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((i==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((i==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((i==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((i==9)&&(!(px[8])&&!(px[11]))))||((i==10)&&(!(px[7])&&!(px[12]))))||((i==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((i==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((i==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((i==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))&&((((((((((((i==1)||(i==3))&&!((((((((((((((((((((((((((((((((((5==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((5==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((5==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((5==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((5==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((5==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((5==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((5==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((5==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((5==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((5==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((5==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((5==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((5==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((5==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((5==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((5==9)&&(1==1))&&(B7==sol42H)))||(((5==9)&&(1==2))&&(B7==sol84H)))||(((5==10)&&(1==1))&&(B6==water28H)))||(((5==10)&&(1==2))&&(B6==water56H)))||((((5==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((5==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((5==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((5==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((5==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((5==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((5==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((5==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((5==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((5==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((5==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((5==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((5==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((5==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((5==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((5==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((5==9)&&(!(px[8])&&!(px[11]))))||((5==10)&&(!(px[7])&&!(px[12]))))||((5==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((5==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((5==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((5==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((5==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((5==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((5==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((5==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((5==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((5==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((5==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((5==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((5==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((5==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((5==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((5==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((5==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((5==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((5==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((5==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((5==9)&&(2==1))&&(B7==sol42H)))||(((5==9)&&(2==2))&&(B7==sol84H)))||(((5==10)&&(2==1))&&(B6==water28H)))||(((5==10)&&(2==2))&&(B6==water56H)))||((((5==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((5==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((5==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((5==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((5==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((5==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((5==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((5==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((5==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((5==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((5==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((5==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((5==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((5==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((5==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((5==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((5==9)&&(!(px[8])&&!(px[11]))))||((5==10)&&(!(px[7])&&!(px[12]))))||((5==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((5==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((5==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((5==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))||(((i==2)||(i==4))&&((!((((((((((((((((((((((((((((((((((1==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((1==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((1==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((1==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((1==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((1==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((1==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((1==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((1==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((1==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((1==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((1==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((1==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((1==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((1==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((1==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((1==9)&&(1==1))&&(B7==sol42H)))||(((1==9)&&(1==2))&&(B7==sol84H)))||(((1==10)&&(1==1))&&(B6==water28H)))||(((1==10)&&(1==2))&&(B6==water56H)))||((((1==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((1==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((1==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((1==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((1==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((1==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((1==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((1==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((1==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((1==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((1==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((1==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((1==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((1==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((1==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((1==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((1==9)&&(!(px[8])&&!(px[11]))))||((1==10)&&(!(px[7])&&!(px[12]))))||((1==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((1==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((1==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((1==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((1==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((1==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((1==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((1==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((1==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((1==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((1==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((1==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((1==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((1==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((1==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((1==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((1==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((1==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((1==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((1==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((1==9)&&(2==1))&&(B7==sol42H)))||(((1==9)&&(2==2))&&(B7==sol84H)))||(((1==10)&&(2==1))&&(B6==water28H)))||(((1==10)&&(2==2))&&(B6==water56H)))||((((1==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((1==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((1==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((1==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((1==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((1==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((1==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((1==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((1==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((1==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((1==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((1==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((1==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((1==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((1==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((1==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((1==9)&&(!(px[8])&&!(px[11]))))||((1==10)&&(!(px[7])&&!(px[12]))))||((1==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((1==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((1==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((1==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))&&!((((((((((((((((((((((((((((((((((3==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((3==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((3==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((3==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((3==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((3==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((3==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((3==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((3==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((3==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((3==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((3==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((3==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((3==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((3==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((3==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((3==9)&&(1==1))&&(B7==sol42H)))||(((3==9)&&(1==2))&&(B7==sol84H)))||(((3==10)&&(1==1))&&(B6==water28H)))||(((3==10)&&(1==2))&&(B6==water56H)))||((((3==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((3==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((3==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((3==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((3==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((3==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((3==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((3==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((3==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((3==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((3==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((3==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((3==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((3==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((3==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((3==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((3==9)&&(!(px[8])&&!(px[11]))))||((3==10)&&(!(px[7])&&!(px[12]))))||((3==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((3==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((3==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((3==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((3==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((3==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((3==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((3==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((3==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((3==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((3==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((3==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((3==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((3==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((3==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((3==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((3==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((3==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((3==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((3==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((3==9)&&(2==1))&&(B7==sol42H)))||(((3==9)&&(2==2))&&(B7==sol84H)))||(((3==10)&&(2==1))&&(B6==water28H)))||(((3==10)&&(2==2))&&(B6==water56H)))||((((3==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((3==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((3==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((3==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((3==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((3==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((3==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((3==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((3==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((3==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((3==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((3==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((3==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((3==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((3==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((3==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((3==9)&&(!(px[8])&&!(px[11]))))||((3==10)&&(!(px[7])&&!(px[12]))))||((3==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((3==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((3==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((3==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))&&!((((((((((((((((((((((((((((((((((5==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((5==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((5==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((5==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((5==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((5==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((5==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((5==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((5==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((5==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((5==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((5==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((5==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((5==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((5==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((5==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((5==9)&&(1==1))&&(B7==sol42H)))||(((5==9)&&(1==2))&&(B7==sol84H)))||(((5==10)&&(1==1))&&(B6==water28H)))||(((5==10)&&(1==2))&&(B6==water56H)))||((((5==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((5==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((5==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((5==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((5==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((5==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((5==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((5==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((5==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((5==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((5==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((5==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((5==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((5==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((5==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((5==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((5==9)&&(!(px[8])&&!(px[11]))))||((5==10)&&(!(px[7])&&!(px[12]))))||((5==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((5==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((5==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((5==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((5==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((5==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((5==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((5==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((5==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((5==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((5==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((5==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((5==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((5==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((5==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((5==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((5==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((5==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((5==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((5==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((5==9)&&(2==1))&&(B7==sol42H)))||(((5==9)&&(2==2))&&(B7==sol84H)))||(((5==10)&&(2==1))&&(B6==water28H)))||(((5==10)&&(2==2))&&(B6==water56H)))||((((5==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((5==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((5==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((5==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((5==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((5==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((5==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((5==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((5==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((5==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((5==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((5==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((5==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((5==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((5==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((5==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((5==9)&&(!(px[8])&&!(px[11]))))||((5==10)&&(!(px[7])&&!(px[12]))))||((5==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((5==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((5==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((5==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))))||((i==5)&&!((((((((((((((((((((((((((((((((((6==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((6==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((6==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((6==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((6==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((6==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((6==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((6==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((6==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((6==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((6==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((6==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((6==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((6==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((6==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((6==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((6==9)&&(1==1))&&(B7==sol42H)))||(((6==9)&&(1==2))&&(B7==sol84H)))||(((6==10)&&(1==1))&&(B6==water28H)))||(((6==10)&&(1==2))&&(B6==water56H)))||((((6==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((6==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((6==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((6==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((6==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((6==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((6==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((6==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((6==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((6==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((6==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((6==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((6==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((6==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((6==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((6==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((6==9)&&(!(px[8])&&!(px[11]))))||((6==10)&&(!(px[7])&&!(px[12]))))||((6==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((6==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((6==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((6==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((6==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((6==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((6==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((6==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((6==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((6==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((6==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((6==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((6==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((6==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((6==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((6==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((6==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((6==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((6==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((6==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((6==9)&&(2==1))&&(B7==sol42H)))||(((6==9)&&(2==2))&&(B7==sol84H)))||(((6==10)&&(2==1))&&(B6==water28H)))||(((6==10)&&(2==2))&&(B6==water56H)))||((((6==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((6==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((6==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((6==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((6==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((6==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((6==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((6==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((6==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((6==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((6==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((6==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((6==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((6==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((6==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((6==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((6==9)&&(!(px[8])&&!(px[11]))))||((6==10)&&(!(px[7])&&!(px[12]))))||((6==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((6==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((6==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((6==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))))||((i==6)&&(!((((((((((((((((((((((((((((((((((7==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((7==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((7==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((7==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((7==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((7==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((7==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((7==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((7==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((7==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((7==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((7==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((7==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((7==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((7==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((7==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((7==9)&&(1==1))&&(B7==sol42H)))||(((7==9)&&(1==2))&&(B7==sol84H)))||(((7==10)&&(1==1))&&(B6==water28H)))||(((7==10)&&(1==2))&&(B6==water56H)))||((((7==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((7==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((7==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((7==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((7==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((7==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((7==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((7==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((7==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((7==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((7==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((7==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((7==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((7==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((7==9)&&(!(px[8])&&!(px[11]))))||((7==10)&&(!(px[7])&&!(px[12]))))||((7==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((7==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((7==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((7==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((7==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((7==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((7==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((7==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((7==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((7==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((7==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((7==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((7==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((7==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((7==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((7==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((7==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((7==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((7==9)&&(2==1))&&(B7==sol42H)))||(((7==9)&&(2==2))&&(B7==sol84H)))||(((7==10)&&(2==1))&&(B6==water28H)))||(((7==10)&&(2==2))&&(B6==water56H)))||((((7==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((7==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((7==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((7==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((7==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((7==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((7==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((7==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((7==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((7==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((7==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((7==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((7==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((7==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((7==9)&&(!(px[8])&&!(px[11]))))||((7==10)&&(!(px[7])&&!(px[12]))))||((7==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((7==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))&&!((((((((((((((((((((((((((((((((((8==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((8==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((8==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((8==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((8==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((8==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((8==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((8==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((8==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((8==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((8==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((8==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((8==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((8==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((8==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((8==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((8==9)&&(1==1))&&(B7==sol42H)))||(((8==9)&&(1==2))&&(B7==sol84H)))||(((8==10)&&(1==1))&&(B6==water28H)))||(((8==10)&&(1==2))&&(B6==water56H)))||((((8==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((8==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((8==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((8==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((8==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((8==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((8==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((8==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((8==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((8==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((8==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((8==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((8==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((8==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((8==9)&&(!(px[8])&&!(px[11]))))||((8==10)&&(!(px[7])&&!(px[12]))))||((8==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((8==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((8==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((8==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((8==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((8==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((8==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((8==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((8==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((8==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((8==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((8==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((8==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((8==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((8==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((8==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((8==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((8==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((8==9)&&(2==1))&&(B7==sol42H)))||(((8==9)&&(2==2))&&(B7==sol84H)))||(((8==10)&&(2==1))&&(B6==water28H)))||(((8==10)&&(2==2))&&(B6==water56H)))||((((8==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((8==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((8==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((8==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((8==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((8==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((8==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((8==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((8==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((8==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((8==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((8==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((8==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((8==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((8==9)&&(!(px[8])&&!(px[11]))))||((8==10)&&(!(px[7])&&!(px[12]))))||((8==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((8==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))))||((i==7)&&1))||((i==8)&&!((((((((((((((((((((((((((((((((((7==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((7==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((7==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((7==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((7==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((7==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((7==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((7==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((7==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((7==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((7==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((7==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((7==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((7==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((7==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((7==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((7==9)&&(1==1))&&(B7==sol42H)))||(((7==9)&&(1==2))&&(B7==sol84H)))||(((7==10)&&(1==1))&&(B6==water28H)))||(((7==10)&&(1==2))&&(B6==water56H)))||((((7==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((7==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((7==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((7==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((7==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((7==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((7==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((7==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((7==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((7==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((7==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((7==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((7==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((7==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((7==9)&&(!(px[8])&&!(px[11]))))||((7==10)&&(!(px[7])&&!(px[12]))))||((7==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((7==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((7==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((7==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((7==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((7==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((7==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((7==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((7==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((7==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((7==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((7==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((7==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((7==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((7==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((7==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((7==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((7==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((7==9)&&(2==1))&&(B7==sol42H)))||(((7==9)&&(2==2))&&(B7==sol84H)))||(((7==10)&&(2==1))&&(B6==water28H)))||(((7==10)&&(2==2))&&(B6==water56H)))||((((7==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((7==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((7==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((7==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((7==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((7==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((7==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((7==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((7==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((7==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((7==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((7==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((7==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((7==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((7==9)&&(!(px[8])&&!(px[11]))))||((7==10)&&(!(px[7])&&!(px[12]))))||((7==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((7==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))))||((i==9)&&!((((((((((((((((((((((((((((((((((8==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((8==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((8==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((8==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((8==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((8==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((8==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((8==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((8==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((8==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((8==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((8==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((8==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((8==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((8==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((8==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((8==9)&&(1==1))&&(B7==sol42H)))||(((8==9)&&(1==2))&&(B7==sol84H)))||(((8==10)&&(1==1))&&(B6==water28H)))||(((8==10)&&(1==2))&&(B6==water56H)))||((((8==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((8==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((8==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((8==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((8==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((8==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((8==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((8==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((8==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((8==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((8==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((8==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((8==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((8==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((8==9)&&(!(px[8])&&!(px[11]))))||((8==10)&&(!(px[7])&&!(px[12]))))||((8==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((8==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((8==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((8==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((8==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((8==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((8==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((8==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((8==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((8==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((8==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((8==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((8==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((8==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((8==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((8==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((8==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((8==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((8==9)&&(2==1))&&(B7==sol42H)))||(((8==9)&&(2==2))&&(B7==sol84H)))||(((8==10)&&(2==1))&&(B6==water28H)))||(((8==10)&&(2==2))&&(B6==water56H)))||((((8==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((8==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((8==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((8==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((8==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((8==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((8==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((8==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((8==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((8==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((8==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((8==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((8==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((8==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((8==9)&&(!(px[8])&&!(px[11]))))||((8==10)&&(!(px[7])&&!(px[12]))))||((8==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((8==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))))||((i==10)&&!((((((((((((((((((((((((((((((((((7==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((7==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((7==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((7==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((7==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((7==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((7==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((7==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((7==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((7==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((7==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((7==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((7==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((7==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((7==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((7==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((7==9)&&(1==1))&&(B7==sol42H)))||(((7==9)&&(1==2))&&(B7==sol84H)))||(((7==10)&&(1==1))&&(B6==water28H)))||(((7==10)&&(1==2))&&(B6==water56H)))||((((7==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((7==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((7==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((7==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((7==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((7==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((7==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((7==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((7==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((7==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((7==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((7==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((7==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((7==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((7==9)&&(!(px[8])&&!(px[11]))))||((7==10)&&(!(px[7])&&!(px[12]))))||((7==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((7==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((7==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((7==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((7==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((7==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((7==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((7==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((7==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((7==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((7==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((7==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((7==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((7==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((7==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((7==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((7==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((7==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((7==9)&&(2==1))&&(B7==sol42H)))||(((7==9)&&(2==2))&&(B7==sol84H)))||(((7==10)&&(2==1))&&(B6==water28H)))||(((7==10)&&(2==2))&&(B6==water56H)))||((((7==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((7==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((7==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((7==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((7==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((7==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((7==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((7==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((7==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((7==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((7==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((7==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((7==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((7==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((7==9)&&(!(px[8])&&!(px[11]))))||((7==10)&&(!(px[7])&&!(px[12]))))||((7==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((7==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))))||(((i==11)||(i==12))&&(((!((((((((((((((((((((((((((((((((((1==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((1==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((1==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((1==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((1==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((1==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((1==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((1==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((1==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((1==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((1==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((1==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((1==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((1==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((1==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((1==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((1==9)&&(1==1))&&(B7==sol42H)))||(((1==9)&&(1==2))&&(B7==sol84H)))||(((1==10)&&(1==1))&&(B6==water28H)))||(((1==10)&&(1==2))&&(B6==water56H)))||((((1==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((1==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((1==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((1==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((1==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((1==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((1==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((1==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((1==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((1==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((1==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((1==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((1==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((1==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((1==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((1==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((1==9)&&(!(px[8])&&!(px[11]))))||((1==10)&&(!(px[7])&&!(px[12]))))||((1==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((1==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((1==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((1==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((1==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((1==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((1==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((1==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((1==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((1==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((1==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((1==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((1==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((1==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((1==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((1==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((1==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((1==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((1==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((1==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((1==9)&&(2==1))&&(B7==sol42H)))||(((1==9)&&(2==2))&&(B7==sol84H)))||(((1==10)&&(2==1))&&(B6==water28H)))||(((1==10)&&(2==2))&&(B6==water56H)))||((((1==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((1==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((1==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((1==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((1==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((1==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((1==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((1==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((1==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((1==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((1==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((1==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((1==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((1==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((1==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((1==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((1==9)&&(!(px[8])&&!(px[11]))))||((1==10)&&(!(px[7])&&!(px[12]))))||((1==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((1==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((1==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((1==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))&&!((((((((((((((((((((((((((((((((((3==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((3==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((3==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((3==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((3==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((3==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((3==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((3==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((3==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((3==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((3==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((3==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((3==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((3==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((3==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((3==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((3==9)&&(1==1))&&(B7==sol42H)))||(((3==9)&&(1==2))&&(B7==sol84H)))||(((3==10)&&(1==1))&&(B6==water28H)))||(((3==10)&&(1==2))&&(B6==water56H)))||((((3==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((3==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((3==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((3==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((3==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((3==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((3==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((3==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((3==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((3==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((3==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((3==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((3==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((3==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((3==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((3==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((3==9)&&(!(px[8])&&!(px[11]))))||((3==10)&&(!(px[7])&&!(px[12]))))||((3==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((3==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((3==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((3==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((3==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((3==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((3==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((3==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((3==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((3==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((3==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((3==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((3==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((3==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((3==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((3==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((3==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((3==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((3==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((3==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((3==9)&&(2==1))&&(B7==sol42H)))||(((3==9)&&(2==2))&&(B7==sol84H)))||(((3==10)&&(2==1))&&(B6==water28H)))||(((3==10)&&(2==2))&&(B6==water56H)))||((((3==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((3==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((3==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((3==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((3==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((3==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((3==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((3==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((3==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((3==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((3==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((3==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((3==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((3==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((3==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((3==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((3==9)&&(!(px[8])&&!(px[11]))))||((3==10)&&(!(px[7])&&!(px[12]))))||((3==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((3==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((3==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((3==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))&&!((((((((((((((((((((((((((((((((((8==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((8==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((8==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((8==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((8==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((8==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((8==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((8==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((8==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((8==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((8==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((8==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((8==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((8==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((8==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((8==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((8==9)&&(1==1))&&(B7==sol42H)))||(((8==9)&&(1==2))&&(B7==sol84H)))||(((8==10)&&(1==1))&&(B6==water28H)))||(((8==10)&&(1==2))&&(B6==water56H)))||((((8==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((8==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((8==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((8==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((8==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((8==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((8==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((8==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((8==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((8==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((8==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((8==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((8==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((8==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((8==9)&&(!(px[8])&&!(px[11]))))||((8==10)&&(!(px[7])&&!(px[12]))))||((8==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((8==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((8==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((8==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((8==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((8==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((8==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((8==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((8==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((8==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((8==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((8==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((8==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((8==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((8==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((8==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((8==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((8==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((8==9)&&(2==1))&&(B7==sol42H)))||(((8==9)&&(2==2))&&(B7==sol84H)))||(((8==10)&&(2==1))&&(B6==water28H)))||(((8==10)&&(2==2))&&(B6==water56H)))||((((8==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((8==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((8==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((8==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((8==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((8==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((8==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((8==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((8==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((8==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((8==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((8==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((8==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((8==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((8==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((8==9)&&(!(px[8])&&!(px[11]))))||((8==10)&&(!(px[7])&&!(px[12]))))||((8==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((8==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((8==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))&&!((((((((((((((((((((((((((((((((((9==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((9==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((9==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((9==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((9==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((9==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((9==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((9==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((9==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((9==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((9==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((9==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((9==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((9==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((9==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((9==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((9==9)&&(1==1))&&(B7==sol42H)))||(((9==9)&&(1==2))&&(B7==sol84H)))||(((9==10)&&(1==1))&&(B6==water28H)))||(((9==10)&&(1==2))&&(B6==water56H)))||((((9==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((9==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((9==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((9==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((9==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((9==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((9==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((9==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((9==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((9==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((9==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((9==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((9==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((9==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((9==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((9==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((9==9)&&(!(px[8])&&!(px[11]))))||((9==10)&&(!(px[7])&&!(px[12]))))||((9==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((9==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((9==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((9==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((9==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((9==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((9==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((9==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((9==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((9==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((9==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((9==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((9==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((9==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((9==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((9==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((9==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((9==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((9==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((9==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((9==9)&&(2==1))&&(B7==sol42H)))||(((9==9)&&(2==2))&&(B7==sol84H)))||(((9==10)&&(2==1))&&(B6==water28H)))||(((9==10)&&(2==2))&&(B6==water56H)))||((((9==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((9==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((9==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((9==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((9==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((9==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((9==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((9==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((9==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((9==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((9==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((9==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((9==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((9==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((9==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((9==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((9==9)&&(!(px[8])&&!(px[11]))))||((9==10)&&(!(px[7])&&!(px[12]))))||((9==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((9==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((9==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((9==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))))||(((i==13)||(i==14))&&(((!((((((((((((((((((((((((((((((((((2==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((2==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((2==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((2==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((2==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((2==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((2==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((2==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((2==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((2==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((2==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((2==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((2==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((2==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((2==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((2==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((2==9)&&(1==1))&&(B7==sol42H)))||(((2==9)&&(1==2))&&(B7==sol84H)))||(((2==10)&&(1==1))&&(B6==water28H)))||(((2==10)&&(1==2))&&(B6==water56H)))||((((2==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((2==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((2==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((2==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((2==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((2==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((2==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((2==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((2==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((2==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((2==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((2==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((2==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((2==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((2==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((2==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((2==9)&&(!(px[8])&&!(px[11]))))||((2==10)&&(!(px[7])&&!(px[12]))))||((2==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((2==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((2==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((2==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((2==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((2==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((2==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((2==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((2==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((2==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((2==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((2==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((2==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((2==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((2==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((2==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((2==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((2==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((2==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((2==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((2==9)&&(2==1))&&(B7==sol42H)))||(((2==9)&&(2==2))&&(B7==sol84H)))||(((2==10)&&(2==1))&&(B6==water28H)))||(((2==10)&&(2==2))&&(B6==water56H)))||((((2==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((2==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((2==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((2==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((2==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((2==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((2==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((2==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((2==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((2==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((2==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((2==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((2==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((2==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((2==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((2==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((2==9)&&(!(px[8])&&!(px[11]))))||((2==10)&&(!(px[7])&&!(px[12]))))||((2==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((2==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((2==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((2==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))&&!((((((((((((((((((((((((((((((((((4==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((4==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((4==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((4==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((4==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((4==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((4==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((4==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((4==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((4==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((4==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((4==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((4==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((4==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((4==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((4==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((4==9)&&(1==1))&&(B7==sol42H)))||(((4==9)&&(1==2))&&(B7==sol84H)))||(((4==10)&&(1==1))&&(B6==water28H)))||(((4==10)&&(1==2))&&(B6==water56H)))||((((4==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((4==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((4==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((4==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((4==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((4==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((4==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((4==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((4==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((4==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((4==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((4==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((4==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((4==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((4==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((4==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((4==9)&&(!(px[8])&&!(px[11]))))||((4==10)&&(!(px[7])&&!(px[12]))))||((4==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((4==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((4==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((4==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((4==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((4==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((4==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((4==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((4==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((4==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((4==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((4==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((4==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((4==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((4==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((4==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((4==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((4==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((4==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((4==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((4==9)&&(2==1))&&(B7==sol42H)))||(((4==9)&&(2==2))&&(B7==sol84H)))||(((4==10)&&(2==1))&&(B6==water28H)))||(((4==10)&&(2==2))&&(B6==water56H)))||((((4==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((4==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((4==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((4==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((4==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((4==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((4==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((4==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((4==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((4==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((4==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((4==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((4==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((4==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((4==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((4==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((4==9)&&(!(px[8])&&!(px[11]))))||((4==10)&&(!(px[7])&&!(px[12]))))||((4==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((4==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((4==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((4==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))&&!((((((((((((((((((((((((((((((((((7==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((7==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((7==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((7==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((7==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((7==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((7==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((7==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((7==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((7==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((7==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((7==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((7==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((7==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((7==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((7==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((7==9)&&(1==1))&&(B7==sol42H)))||(((7==9)&&(1==2))&&(B7==sol84H)))||(((7==10)&&(1==1))&&(B6==water28H)))||(((7==10)&&(1==2))&&(B6==water56H)))||((((7==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((7==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((7==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((7==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((7==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((7==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((7==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((7==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((7==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((7==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((7==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((7==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((7==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((7==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((7==9)&&(!(px[8])&&!(px[11]))))||((7==10)&&(!(px[7])&&!(px[12]))))||((7==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((7==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((7==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((7==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((7==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((7==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((7==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((7==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((7==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((7==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((7==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((7==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((7==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((7==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((7==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((7==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((7==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((7==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((7==9)&&(2==1))&&(B7==sol42H)))||(((7==9)&&(2==2))&&(B7==sol84H)))||(((7==10)&&(2==1))&&(B6==water28H)))||(((7==10)&&(2==2))&&(B6==water56H)))||((((7==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((7==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((7==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((7==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((7==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((7==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((7==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((7==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((7==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((7==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((7==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((7==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((7==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((7==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((7==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((7==9)&&(!(px[8])&&!(px[11]))))||((7==10)&&(!(px[7])&&!(px[12]))))||((7==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((7==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((7==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))))))&&!((((((((((((((((((((((((((((((((((10==1)&&(1==1))&&(B1==sol42C))&&(B3==cempty))||((((10==1)&&(1==2))&&(B1==sol84C))&&(B3==cempty)))||((((10==2)&&(1==1))&&(B2==water28C))&&(B3==cempty)))||((((10==2)&&(1==2))&&(B2==water56C))&&(B3==cempty)))||((((10==3)&&(1==1))&&(B1==sol42C))&&(B3==water28C)))||((((10==3)&&(1==2))&&(B1==sol84C))&&(B3==water28C)))||((((10==4)&&(1==1))&&(B2==water28C))&&(B3==sol42C)))||((((10==4)&&(1==2))&&(B2==water56C))&&(B3==sol42C)))||((((10==5)&&(1==1))&&(B3==sol70C))&&(B4==cempty)))||((((10==5)&&(1==2))&&(B3==sol70C))&&(B4==sol70C)))||((((10==6)&&(1==1))&&(B4==sol70C))&&(B5==cempty)))||((((10==6)&&(1==2))&&(B4==sol140C))&&(B5==cempty)))||((((10==7)&&(1==1))&&(B5==sol70C))&&(B6==cempty)))||((((10==7)&&(1==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((10==8)&&(1==1))&&(B5==sol42H))&&(B7==cempty)))||((((10==8)&&(1==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((10==9)&&(1==1))&&(B7==sol42H)))||(((10==9)&&(1==2))&&(B7==sol84H)))||(((10==10)&&(1==1))&&(B6==water28H)))||(((10==10)&&(1==2))&&(B6==water56H)))||((((10==11)&&(1==1))&&(B7==sol42C))&&(B1==cempty)))||((((10==11)&&(1==2))&&(B7==sol84C))&&(B1==cempty)))||((((10==12)&&(1==1))&&(B7==sol42C))&&(B1==sol42C)))||((((10==12)&&(1==2))&&(B7==sol84C))&&(B1==sol42C)))||((((10==13)&&(1==1))&&(B6==water28C))&&(B2==cempty)))||((((10==13)&&(1==2))&&(B6==water56C))&&(B2==cempty)))||((((10==14)&&(1==1))&&(B6==water28C))&&(B2==water28C)))||((((10==14)&&(1==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((10==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((10==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((10==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((10==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((10==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((10==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((10==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((10==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((10==9)&&(!(px[8])&&!(px[11]))))||((10==10)&&(!(px[7])&&!(px[12]))))||((10==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((10==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((10==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((10==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))||((((((((((((((((((((((((((((((((10==1)&&(2==1))&&(B1==sol42C))&&(B3==cempty))||((((10==1)&&(2==2))&&(B1==sol84C))&&(B3==cempty)))||((((10==2)&&(2==1))&&(B2==water28C))&&(B3==cempty)))||((((10==2)&&(2==2))&&(B2==water56C))&&(B3==cempty)))||((((10==3)&&(2==1))&&(B1==sol42C))&&(B3==water28C)))||((((10==3)&&(2==2))&&(B1==sol84C))&&(B3==water28C)))||((((10==4)&&(2==1))&&(B2==water28C))&&(B3==sol42C)))||((((10==4)&&(2==2))&&(B2==water56C))&&(B3==sol42C)))||((((10==5)&&(2==1))&&(B3==sol70C))&&(B4==cempty)))||((((10==5)&&(2==2))&&(B3==sol70C))&&(B4==sol70C)))||((((10==6)&&(2==1))&&(B4==sol70C))&&(B5==cempty)))||((((10==6)&&(2==2))&&(B4==sol140C))&&(B5==cempty)))||((((10==7)&&(2==1))&&(B5==sol70C))&&(B6==cempty)))||((((10==7)&&(2==2))&&(B5==sol70C))&&((B6==water28C)||(B6==water28H))))||((((10==8)&&(2==1))&&(B5==sol42H))&&(B7==cempty)))||((((10==8)&&(2==2))&&(B5==sol42H))&&((B7==sol42C)||(B7==sol42H))))||(((10==9)&&(2==1))&&(B7==sol42H)))||(((10==9)&&(2==2))&&(B7==sol84H)))||(((10==10)&&(2==1))&&(B6==water28H)))||(((10==10)&&(2==2))&&(B6==water56H)))||((((10==11)&&(2==1))&&(B7==sol42C))&&(B1==cempty)))||((((10==11)&&(2==2))&&(B7==sol84C))&&(B1==cempty)))||((((10==12)&&(2==1))&&(B7==sol42C))&&(B1==sol42C)))||((((10==12)&&(2==2))&&(B7==sol84C))&&(B1==sol42C)))||((((10==13)&&(2==1))&&(B6==water28C))&&(B2==cempty)))||((((10==13)&&(2==2))&&(B6==water56C))&&(B2==cempty)))||((((10==14)&&(2==1))&&(B6==water28C))&&(B2==water28C)))||((((10==14)&&(2==2))&&(B6==water56C))&&(B2==water28C)))&&(((((((((((((((10==1)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11])))||((10==2)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((10==3)&&(((!(px[2])&&!(px[4]))&&!(px[5]))&&!(px[11]))))||((10==4)&&(((!(px[1])&&!(px[3]))&&!(px[5]))&&!(px[12]))))||((10==5)&&((((!(px[1])&&!(px[2]))&&!(px[3]))&&!(px[4]))&&!(px[6]))))||((10==6)&&((!(px[5])&&!(px[7]))&&!(px[8]))))||((10==7)&&(((!(px[6])&&!(px[8]))&&!(px[10]))&&!(px[12]))))||((10==8)&&(((!(px[6])&&!(px[7]))&&!(px[9]))&&!(px[11]))))||((10==9)&&(!(px[8])&&!(px[11]))))||((10==10)&&(!(px[7])&&!(px[12]))))||((10==11)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((10==12)&&(((!(px[1])&&!(px[3]))&&!(px[8]))&&!(px[9]))))||((10==13)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10]))))||((10==14)&&(((!(px[2])&&!(px[4]))&&!(px[7]))&&!(px[10])))))))))))&&!(px[( ((i<12)) ? (i) : (( (((i==12)||(i==13))) ? ((i-1)) : ((i-2)) )) )]))(0, 68, 115) */
		reached[10][68] = 1;
		(trpt+1)->bup.oval = ((int)((P10 *)_this)->precon);
		((P10 *)_this)->precon = ((((((((((((((((((((((((((((((((((((P10 *)_this)->i==1)&&(((P10 *)_this)->j==1))&&(now.B1==10))&&(now.B3==13))||((((((P10 *)_this)->i==1)&&(((P10 *)_this)->j==2))&&(now.B1==8))&&(now.B3==13)))||((((((P10 *)_this)->i==2)&&(((P10 *)_this)->j==1))&&(now.B2==4))&&(now.B3==13)))||((((((P10 *)_this)->i==2)&&(((P10 *)_this)->j==2))&&(now.B2==2))&&(now.B3==13)))||((((((P10 *)_this)->i==3)&&(((P10 *)_this)->j==1))&&(now.B1==10))&&(now.B3==4)))||((((((P10 *)_this)->i==3)&&(((P10 *)_this)->j==2))&&(now.B1==8))&&(now.B3==4)))||((((((P10 *)_this)->i==4)&&(((P10 *)_this)->j==1))&&(now.B2==4))&&(now.B3==10)))||((((((P10 *)_this)->i==4)&&(((P10 *)_this)->j==2))&&(now.B2==2))&&(now.B3==10)))||((((((P10 *)_this)->i==5)&&(((P10 *)_this)->j==1))&&(now.B3==6))&&(now.B4==13)))||((((((P10 *)_this)->i==5)&&(((P10 *)_this)->j==2))&&(now.B3==6))&&(now.B4==6)))||((((((P10 *)_this)->i==6)&&(((P10 *)_this)->j==1))&&(now.B4==6))&&(now.B5==13)))||((((((P10 *)_this)->i==6)&&(((P10 *)_this)->j==2))&&(now.B4==5))&&(now.B5==13)))||((((((P10 *)_this)->i==7)&&(((P10 *)_this)->j==1))&&(now.B5==6))&&(now.B6==13)))||((((((P10 *)_this)->i==7)&&(((P10 *)_this)->j==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((((P10 *)_this)->i==8)&&(((P10 *)_this)->j==1))&&(now.B5==9))&&(now.B7==13)))||((((((P10 *)_this)->i==8)&&(((P10 *)_this)->j==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((((P10 *)_this)->i==9)&&(((P10 *)_this)->j==1))&&(now.B7==9)))||(((((P10 *)_this)->i==9)&&(((P10 *)_this)->j==2))&&(now.B7==7)))||(((((P10 *)_this)->i==10)&&(((P10 *)_this)->j==1))&&(now.B6==3)))||(((((P10 *)_this)->i==10)&&(((P10 *)_this)->j==2))&&(now.B6==1)))||((((((P10 *)_this)->i==11)&&(((P10 *)_this)->j==1))&&(now.B7==10))&&(now.B1==13)))||((((((P10 *)_this)->i==11)&&(((P10 *)_this)->j==2))&&(now.B7==8))&&(now.B1==13)))||((((((P10 *)_this)->i==12)&&(((P10 *)_this)->j==1))&&(now.B7==10))&&(now.B1==10)))||((((((P10 *)_this)->i==12)&&(((P10 *)_this)->j==2))&&(now.B7==8))&&(now.B1==10)))||((((((P10 *)_this)->i==13)&&(((P10 *)_this)->j==1))&&(now.B6==4))&&(now.B2==13)))||((((((P10 *)_this)->i==13)&&(((P10 *)_this)->j==2))&&(now.B6==2))&&(now.B2==13)))||((((((P10 *)_this)->i==14)&&(((P10 *)_this)->j==1))&&(now.B6==4))&&(now.B2==4)))||((((((P10 *)_this)->i==14)&&(((P10 *)_this)->j==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((((P10 *)_this)->i==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((((P10 *)_this)->i==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((((P10 *)_this)->i==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((((P10 *)_this)->i==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((((P10 *)_this)->i==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((((P10 *)_this)->i==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((((P10 *)_this)->i==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((((P10 *)_this)->i==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((((P10 *)_this)->i==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((((P10 *)_this)->i==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((((P10 *)_this)->i==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((((P10 *)_this)->i==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((((P10 *)_this)->i==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((((P10 *)_this)->i==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))&&((((((((((((((P10 *)_this)->i==1)||(((P10 *)_this)->i==3))&& !((((((((((((((((((((((((((((((((((5==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((5==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((5==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((5==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((5==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((5==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((5==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((5==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((5==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((5==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((5==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((5==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((5==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((5==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((5==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((5==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((5==9)&&(1==1))&&(now.B7==9)))||(((5==9)&&(1==2))&&(now.B7==7)))||(((5==10)&&(1==1))&&(now.B6==3)))||(((5==10)&&(1==2))&&(now.B6==1)))||((((5==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((5==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((5==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((5==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((5==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((5==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((5==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((5==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((5==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((5==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((5==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((5==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((5==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((5==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((5==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((5==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((5==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((5==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((5==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((5==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((5==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((5==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((5==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((5==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((5==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((5==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((5==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((5==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((5==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((5==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((5==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((5==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((5==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((5==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((5==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((5==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((5==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((5==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((5==9)&&(2==1))&&(now.B7==9)))||(((5==9)&&(2==2))&&(now.B7==7)))||(((5==10)&&(2==1))&&(now.B6==3)))||(((5==10)&&(2==2))&&(now.B6==1)))||((((5==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((5==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((5==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((5==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((5==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((5==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((5==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((5==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((5==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((5==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((5==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((5==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((5==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((5==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((5==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((5==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((5==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((5==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((5==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((5==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((5==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((5==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))||(((((P10 *)_this)->i==2)||(((P10 *)_this)->i==4))&&(( !((((((((((((((((((((((((((((((((((1==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((1==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((1==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((1==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((1==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((1==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((1==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((1==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((1==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((1==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((1==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((1==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((1==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((1==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((1==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((1==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((1==9)&&(1==1))&&(now.B7==9)))||(((1==9)&&(1==2))&&(now.B7==7)))||(((1==10)&&(1==1))&&(now.B6==3)))||(((1==10)&&(1==2))&&(now.B6==1)))||((((1==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((1==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((1==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((1==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((1==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((1==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((1==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((1==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((1==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((1==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((1==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((1==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((1==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((1==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((1==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((1==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((1==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((1==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((1==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((1==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((1==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((1==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((1==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((1==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((1==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((1==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((1==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((1==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((1==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((1==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((1==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((1==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((1==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((1==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((1==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((1==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((1==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((1==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((1==9)&&(2==1))&&(now.B7==9)))||(((1==9)&&(2==2))&&(now.B7==7)))||(((1==10)&&(2==1))&&(now.B6==3)))||(((1==10)&&(2==2))&&(now.B6==1)))||((((1==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((1==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((1==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((1==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((1==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((1==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((1==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((1==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((1==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((1==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((1==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((1==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((1==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((1==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((1==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((1==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((1==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((1==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((1==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((1==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((1==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((1==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))&& !((((((((((((((((((((((((((((((((((3==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((3==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((3==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((3==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((3==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((3==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((3==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((3==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((3==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((3==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((3==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((3==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((3==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((3==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((3==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((3==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((3==9)&&(1==1))&&(now.B7==9)))||(((3==9)&&(1==2))&&(now.B7==7)))||(((3==10)&&(1==1))&&(now.B6==3)))||(((3==10)&&(1==2))&&(now.B6==1)))||((((3==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((3==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((3==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((3==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((3==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((3==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((3==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((3==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((3==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((3==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((3==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((3==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((3==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((3==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((3==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((3==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((3==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((3==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((3==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((3==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((3==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((3==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((3==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((3==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((3==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((3==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((3==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((3==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((3==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((3==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((3==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((3==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((3==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((3==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((3==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((3==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((3==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((3==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((3==9)&&(2==1))&&(now.B7==9)))||(((3==9)&&(2==2))&&(now.B7==7)))||(((3==10)&&(2==1))&&(now.B6==3)))||(((3==10)&&(2==2))&&(now.B6==1)))||((((3==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((3==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((3==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((3==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((3==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((3==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((3==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((3==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((3==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((3==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((3==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((3==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((3==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((3==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((3==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((3==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((3==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((3==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((3==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((3==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((3==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((3==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))&& !((((((((((((((((((((((((((((((((((5==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((5==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((5==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((5==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((5==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((5==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((5==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((5==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((5==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((5==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((5==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((5==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((5==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((5==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((5==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((5==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((5==9)&&(1==1))&&(now.B7==9)))||(((5==9)&&(1==2))&&(now.B7==7)))||(((5==10)&&(1==1))&&(now.B6==3)))||(((5==10)&&(1==2))&&(now.B6==1)))||((((5==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((5==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((5==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((5==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((5==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((5==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((5==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((5==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((5==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((5==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((5==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((5==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((5==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((5==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((5==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((5==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((5==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((5==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((5==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((5==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((5==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((5==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((5==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((5==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((5==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((5==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((5==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((5==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((5==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((5==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((5==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((5==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((5==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((5==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((5==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((5==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((5==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((5==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((5==9)&&(2==1))&&(now.B7==9)))||(((5==9)&&(2==2))&&(now.B7==7)))||(((5==10)&&(2==1))&&(now.B6==3)))||(((5==10)&&(2==2))&&(now.B6==1)))||((((5==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((5==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((5==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((5==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((5==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((5==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((5==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((5==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((5==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((5==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((5==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((5==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((5==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((5==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((5==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((5==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((5==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((5==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((5==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((5==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((5==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((5==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))))||((((P10 *)_this)->i==5)&& !((((((((((((((((((((((((((((((((((6==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((6==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((6==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((6==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((6==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((6==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((6==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((6==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((6==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((6==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((6==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((6==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((6==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((6==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((6==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((6==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((6==9)&&(1==1))&&(now.B7==9)))||(((6==9)&&(1==2))&&(now.B7==7)))||(((6==10)&&(1==1))&&(now.B6==3)))||(((6==10)&&(1==2))&&(now.B6==1)))||((((6==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((6==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((6==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((6==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((6==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((6==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((6==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((6==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((6==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((6==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((6==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((6==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((6==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((6==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((6==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((6==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((6==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((6==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((6==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((6==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((6==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((6==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((6==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((6==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((6==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((6==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((6==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((6==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((6==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((6==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((6==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((6==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((6==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((6==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((6==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((6==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((6==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((6==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((6==9)&&(2==1))&&(now.B7==9)))||(((6==9)&&(2==2))&&(now.B7==7)))||(((6==10)&&(2==1))&&(now.B6==3)))||(((6==10)&&(2==2))&&(now.B6==1)))||((((6==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((6==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((6==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((6==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((6==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((6==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((6==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((6==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((6==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((6==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((6==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((6==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((6==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((6==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((6==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((6==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((6==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((6==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((6==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((6==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((6==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((6==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))))||((((P10 *)_this)->i==6)&&( !((((((((((((((((((((((((((((((((((7==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((7==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((7==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((7==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((7==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((7==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((7==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((7==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((7==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((7==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((7==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((7==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((7==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((7==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((7==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((7==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((7==9)&&(1==1))&&(now.B7==9)))||(((7==9)&&(1==2))&&(now.B7==7)))||(((7==10)&&(1==1))&&(now.B6==3)))||(((7==10)&&(1==2))&&(now.B6==1)))||((((7==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((7==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((7==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((7==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((7==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((7==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((7==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((7==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((7==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((7==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((7==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((7==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((7==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((7==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((7==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((7==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((7==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((7==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((7==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((7==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((7==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((7==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((7==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((7==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((7==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((7==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((7==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((7==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((7==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((7==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((7==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((7==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((7==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((7==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((7==9)&&(2==1))&&(now.B7==9)))||(((7==9)&&(2==2))&&(now.B7==7)))||(((7==10)&&(2==1))&&(now.B6==3)))||(((7==10)&&(2==2))&&(now.B6==1)))||((((7==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((7==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((7==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((7==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((7==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((7==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((7==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((7==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((7==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((7==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((7==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((7==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((7==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((7==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((7==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((7==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((7==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((7==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))&& !((((((((((((((((((((((((((((((((((8==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((8==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((8==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((8==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((8==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((8==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((8==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((8==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((8==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((8==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((8==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((8==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((8==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((8==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((8==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((8==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((8==9)&&(1==1))&&(now.B7==9)))||(((8==9)&&(1==2))&&(now.B7==7)))||(((8==10)&&(1==1))&&(now.B6==3)))||(((8==10)&&(1==2))&&(now.B6==1)))||((((8==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((8==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((8==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((8==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((8==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((8==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((8==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((8==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((8==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((8==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((8==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((8==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((8==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((8==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((8==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((8==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((8==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((8==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((8==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((8==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((8==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((8==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((8==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((8==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((8==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((8==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((8==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((8==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((8==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((8==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((8==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((8==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((8==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((8==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((8==9)&&(2==1))&&(now.B7==9)))||(((8==9)&&(2==2))&&(now.B7==7)))||(((8==10)&&(2==1))&&(now.B6==3)))||(((8==10)&&(2==2))&&(now.B6==1)))||((((8==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((8==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((8==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((8==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((8==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((8==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((8==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((8==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((8==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((8==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((8==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((8==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((8==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((8==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((8==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((8==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((8==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((8==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))))||((((P10 *)_this)->i==7)&&1))||((((P10 *)_this)->i==8)&& !((((((((((((((((((((((((((((((((((7==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((7==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((7==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((7==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((7==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((7==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((7==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((7==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((7==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((7==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((7==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((7==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((7==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((7==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((7==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((7==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((7==9)&&(1==1))&&(now.B7==9)))||(((7==9)&&(1==2))&&(now.B7==7)))||(((7==10)&&(1==1))&&(now.B6==3)))||(((7==10)&&(1==2))&&(now.B6==1)))||((((7==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((7==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((7==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((7==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((7==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((7==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((7==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((7==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((7==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((7==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((7==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((7==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((7==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((7==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((7==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((7==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((7==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((7==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((7==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((7==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((7==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((7==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((7==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((7==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((7==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((7==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((7==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((7==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((7==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((7==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((7==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((7==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((7==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((7==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((7==9)&&(2==1))&&(now.B7==9)))||(((7==9)&&(2==2))&&(now.B7==7)))||(((7==10)&&(2==1))&&(now.B6==3)))||(((7==10)&&(2==2))&&(now.B6==1)))||((((7==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((7==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((7==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((7==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((7==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((7==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((7==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((7==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((7==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((7==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((7==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((7==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((7==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((7==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((7==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((7==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((7==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((7==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))))||((((P10 *)_this)->i==9)&& !((((((((((((((((((((((((((((((((((8==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((8==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((8==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((8==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((8==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((8==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((8==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((8==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((8==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((8==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((8==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((8==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((8==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((8==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((8==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((8==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((8==9)&&(1==1))&&(now.B7==9)))||(((8==9)&&(1==2))&&(now.B7==7)))||(((8==10)&&(1==1))&&(now.B6==3)))||(((8==10)&&(1==2))&&(now.B6==1)))||((((8==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((8==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((8==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((8==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((8==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((8==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((8==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((8==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((8==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((8==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((8==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((8==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((8==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((8==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((8==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((8==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((8==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((8==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((8==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((8==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((8==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((8==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((8==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((8==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((8==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((8==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((8==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((8==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((8==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((8==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((8==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((8==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((8==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((8==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((8==9)&&(2==1))&&(now.B7==9)))||(((8==9)&&(2==2))&&(now.B7==7)))||(((8==10)&&(2==1))&&(now.B6==3)))||(((8==10)&&(2==2))&&(now.B6==1)))||((((8==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((8==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((8==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((8==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((8==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((8==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((8==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((8==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((8==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((8==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((8==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((8==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((8==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((8==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((8==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((8==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((8==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((8==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))))||((((P10 *)_this)->i==10)&& !((((((((((((((((((((((((((((((((((7==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((7==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((7==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((7==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((7==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((7==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((7==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((7==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((7==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((7==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((7==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((7==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((7==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((7==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((7==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((7==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((7==9)&&(1==1))&&(now.B7==9)))||(((7==9)&&(1==2))&&(now.B7==7)))||(((7==10)&&(1==1))&&(now.B6==3)))||(((7==10)&&(1==2))&&(now.B6==1)))||((((7==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((7==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((7==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((7==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((7==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((7==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((7==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((7==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((7==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((7==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((7==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((7==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((7==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((7==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((7==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((7==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((7==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((7==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((7==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((7==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((7==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((7==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((7==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((7==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((7==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((7==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((7==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((7==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((7==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((7==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((7==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((7==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((7==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((7==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((7==9)&&(2==1))&&(now.B7==9)))||(((7==9)&&(2==2))&&(now.B7==7)))||(((7==10)&&(2==1))&&(now.B6==3)))||(((7==10)&&(2==2))&&(now.B6==1)))||((((7==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((7==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((7==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((7==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((7==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((7==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((7==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((7==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((7==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((7==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((7==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((7==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((7==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((7==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((7==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((7==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((7==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((7==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))))||(((((P10 *)_this)->i==11)||(((P10 *)_this)->i==12))&&((( !((((((((((((((((((((((((((((((((((1==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((1==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((1==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((1==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((1==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((1==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((1==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((1==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((1==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((1==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((1==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((1==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((1==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((1==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((1==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((1==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((1==9)&&(1==1))&&(now.B7==9)))||(((1==9)&&(1==2))&&(now.B7==7)))||(((1==10)&&(1==1))&&(now.B6==3)))||(((1==10)&&(1==2))&&(now.B6==1)))||((((1==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((1==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((1==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((1==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((1==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((1==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((1==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((1==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((1==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((1==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((1==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((1==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((1==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((1==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((1==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((1==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((1==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((1==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((1==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((1==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((1==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((1==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((1==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((1==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((1==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((1==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((1==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((1==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((1==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((1==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((1==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((1==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((1==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((1==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((1==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((1==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((1==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((1==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((1==9)&&(2==1))&&(now.B7==9)))||(((1==9)&&(2==2))&&(now.B7==7)))||(((1==10)&&(2==1))&&(now.B6==3)))||(((1==10)&&(2==2))&&(now.B6==1)))||((((1==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((1==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((1==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((1==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((1==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((1==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((1==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((1==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((1==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((1==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((1==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((1==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((1==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((1==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((1==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((1==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((1==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((1==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((1==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((1==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((1==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((1==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))&& !((((((((((((((((((((((((((((((((((3==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((3==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((3==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((3==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((3==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((3==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((3==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((3==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((3==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((3==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((3==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((3==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((3==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((3==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((3==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((3==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((3==9)&&(1==1))&&(now.B7==9)))||(((3==9)&&(1==2))&&(now.B7==7)))||(((3==10)&&(1==1))&&(now.B6==3)))||(((3==10)&&(1==2))&&(now.B6==1)))||((((3==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((3==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((3==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((3==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((3==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((3==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((3==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((3==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((3==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((3==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((3==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((3==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((3==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((3==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((3==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((3==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((3==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((3==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((3==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((3==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((3==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((3==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((3==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((3==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((3==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((3==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((3==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((3==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((3==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((3==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((3==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((3==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((3==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((3==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((3==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((3==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((3==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((3==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((3==9)&&(2==1))&&(now.B7==9)))||(((3==9)&&(2==2))&&(now.B7==7)))||(((3==10)&&(2==1))&&(now.B6==3)))||(((3==10)&&(2==2))&&(now.B6==1)))||((((3==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((3==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((3==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((3==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((3==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((3==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((3==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((3==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((3==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((3==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((3==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((3==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((3==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((3==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((3==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((3==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((3==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((3==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((3==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((3==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((3==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((3==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))&& !((((((((((((((((((((((((((((((((((8==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((8==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((8==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((8==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((8==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((8==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((8==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((8==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((8==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((8==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((8==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((8==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((8==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((8==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((8==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((8==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((8==9)&&(1==1))&&(now.B7==9)))||(((8==9)&&(1==2))&&(now.B7==7)))||(((8==10)&&(1==1))&&(now.B6==3)))||(((8==10)&&(1==2))&&(now.B6==1)))||((((8==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((8==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((8==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((8==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((8==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((8==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((8==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((8==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((8==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((8==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((8==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((8==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((8==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((8==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((8==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((8==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((8==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((8==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((8==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((8==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((8==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((8==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((8==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((8==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((8==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((8==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((8==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((8==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((8==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((8==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((8==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((8==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((8==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((8==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((8==9)&&(2==1))&&(now.B7==9)))||(((8==9)&&(2==2))&&(now.B7==7)))||(((8==10)&&(2==1))&&(now.B6==3)))||(((8==10)&&(2==2))&&(now.B6==1)))||((((8==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((8==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((8==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((8==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((8==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((8==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((8==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((8==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((8==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((8==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((8==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((8==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((8==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((8==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((8==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((8==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((8==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((8==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((8==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((8==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))&& !((((((((((((((((((((((((((((((((((9==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((9==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((9==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((9==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((9==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((9==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((9==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((9==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((9==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((9==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((9==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((9==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((9==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((9==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((9==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((9==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((9==9)&&(1==1))&&(now.B7==9)))||(((9==9)&&(1==2))&&(now.B7==7)))||(((9==10)&&(1==1))&&(now.B6==3)))||(((9==10)&&(1==2))&&(now.B6==1)))||((((9==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((9==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((9==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((9==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((9==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((9==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((9==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((9==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((9==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((9==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((9==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((9==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((9==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((9==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((9==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((9==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((9==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((9==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((9==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((9==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((9==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((9==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((9==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((9==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((9==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((9==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((9==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((9==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((9==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((9==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((9==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((9==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((9==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((9==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((9==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((9==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((9==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((9==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((9==9)&&(2==1))&&(now.B7==9)))||(((9==9)&&(2==2))&&(now.B7==7)))||(((9==10)&&(2==1))&&(now.B6==3)))||(((9==10)&&(2==2))&&(now.B6==1)))||((((9==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((9==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((9==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((9==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((9==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((9==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((9==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((9==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((9==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((9==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((9==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((9==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((9==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((9==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((9==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((9==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((9==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((9==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((9==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((9==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((9==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((9==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))))||(((((P10 *)_this)->i==13)||(((P10 *)_this)->i==14))&&((( !((((((((((((((((((((((((((((((((((2==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((2==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((2==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((2==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((2==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((2==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((2==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((2==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((2==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((2==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((2==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((2==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((2==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((2==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((2==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((2==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((2==9)&&(1==1))&&(now.B7==9)))||(((2==9)&&(1==2))&&(now.B7==7)))||(((2==10)&&(1==1))&&(now.B6==3)))||(((2==10)&&(1==2))&&(now.B6==1)))||((((2==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((2==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((2==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((2==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((2==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((2==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((2==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((2==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((2==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((2==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((2==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((2==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((2==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((2==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((2==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((2==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((2==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((2==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((2==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((2==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((2==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((2==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((2==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((2==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((2==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((2==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((2==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((2==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((2==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((2==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((2==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((2==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((2==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((2==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((2==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((2==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((2==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((2==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((2==9)&&(2==1))&&(now.B7==9)))||(((2==9)&&(2==2))&&(now.B7==7)))||(((2==10)&&(2==1))&&(now.B6==3)))||(((2==10)&&(2==2))&&(now.B6==1)))||((((2==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((2==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((2==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((2==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((2==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((2==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((2==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((2==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((2==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((2==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((2==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((2==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((2==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((2==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((2==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((2==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((2==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((2==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((2==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((2==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((2==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((2==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))&& !((((((((((((((((((((((((((((((((((4==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((4==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((4==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((4==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((4==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((4==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((4==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((4==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((4==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((4==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((4==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((4==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((4==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((4==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((4==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((4==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((4==9)&&(1==1))&&(now.B7==9)))||(((4==9)&&(1==2))&&(now.B7==7)))||(((4==10)&&(1==1))&&(now.B6==3)))||(((4==10)&&(1==2))&&(now.B6==1)))||((((4==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((4==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((4==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((4==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((4==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((4==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((4==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((4==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((4==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((4==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((4==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((4==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((4==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((4==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((4==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((4==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((4==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((4==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((4==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((4==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((4==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((4==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((4==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((4==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((4==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((4==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((4==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((4==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((4==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((4==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((4==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((4==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((4==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((4==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((4==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((4==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((4==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((4==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((4==9)&&(2==1))&&(now.B7==9)))||(((4==9)&&(2==2))&&(now.B7==7)))||(((4==10)&&(2==1))&&(now.B6==3)))||(((4==10)&&(2==2))&&(now.B6==1)))||((((4==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((4==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((4==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((4==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((4==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((4==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((4==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((4==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((4==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((4==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((4==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((4==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((4==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((4==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((4==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((4==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((4==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((4==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((4==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((4==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((4==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((4==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))&& !((((((((((((((((((((((((((((((((((7==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((7==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((7==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((7==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((7==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((7==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((7==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((7==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((7==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((7==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((7==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((7==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((7==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((7==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((7==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((7==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((7==9)&&(1==1))&&(now.B7==9)))||(((7==9)&&(1==2))&&(now.B7==7)))||(((7==10)&&(1==1))&&(now.B6==3)))||(((7==10)&&(1==2))&&(now.B6==1)))||((((7==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((7==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((7==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((7==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((7==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((7==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((7==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((7==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((7==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((7==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((7==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((7==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((7==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((7==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((7==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((7==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((7==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((7==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((7==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((7==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((7==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((7==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((7==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((7==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((7==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((7==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((7==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((7==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((7==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((7==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((7==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((7==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((7==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((7==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((7==9)&&(2==1))&&(now.B7==9)))||(((7==9)&&(2==2))&&(now.B7==7)))||(((7==10)&&(2==1))&&(now.B6==3)))||(((7==10)&&(2==2))&&(now.B6==1)))||((((7==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((7==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((7==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((7==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((7==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((7==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((7==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((7==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((7==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((7==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((7==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((7==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((7==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((7==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((7==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((7==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((7==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((7==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((7==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((7==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))))))&& !((((((((((((((((((((((((((((((((((10==1)&&(1==1))&&(now.B1==10))&&(now.B3==13))||((((10==1)&&(1==2))&&(now.B1==8))&&(now.B3==13)))||((((10==2)&&(1==1))&&(now.B2==4))&&(now.B3==13)))||((((10==2)&&(1==2))&&(now.B2==2))&&(now.B3==13)))||((((10==3)&&(1==1))&&(now.B1==10))&&(now.B3==4)))||((((10==3)&&(1==2))&&(now.B1==8))&&(now.B3==4)))||((((10==4)&&(1==1))&&(now.B2==4))&&(now.B3==10)))||((((10==4)&&(1==2))&&(now.B2==2))&&(now.B3==10)))||((((10==5)&&(1==1))&&(now.B3==6))&&(now.B4==13)))||((((10==5)&&(1==2))&&(now.B3==6))&&(now.B4==6)))||((((10==6)&&(1==1))&&(now.B4==6))&&(now.B5==13)))||((((10==6)&&(1==2))&&(now.B4==5))&&(now.B5==13)))||((((10==7)&&(1==1))&&(now.B5==6))&&(now.B6==13)))||((((10==7)&&(1==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((10==8)&&(1==1))&&(now.B5==9))&&(now.B7==13)))||((((10==8)&&(1==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((10==9)&&(1==1))&&(now.B7==9)))||(((10==9)&&(1==2))&&(now.B7==7)))||(((10==10)&&(1==1))&&(now.B6==3)))||(((10==10)&&(1==2))&&(now.B6==1)))||((((10==11)&&(1==1))&&(now.B7==10))&&(now.B1==13)))||((((10==11)&&(1==2))&&(now.B7==8))&&(now.B1==13)))||((((10==12)&&(1==1))&&(now.B7==10))&&(now.B1==10)))||((((10==12)&&(1==2))&&(now.B7==8))&&(now.B1==10)))||((((10==13)&&(1==1))&&(now.B6==4))&&(now.B2==13)))||((((10==13)&&(1==2))&&(now.B6==2))&&(now.B2==13)))||((((10==14)&&(1==1))&&(now.B6==4))&&(now.B2==4)))||((((10==14)&&(1==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((10==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((10==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((10==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((10==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((10==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((10==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((10==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((10==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((10==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((10==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((10==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((10==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((10==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((10==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))||((((((((((((((((((((((((((((((((10==1)&&(2==1))&&(now.B1==10))&&(now.B3==13))||((((10==1)&&(2==2))&&(now.B1==8))&&(now.B3==13)))||((((10==2)&&(2==1))&&(now.B2==4))&&(now.B3==13)))||((((10==2)&&(2==2))&&(now.B2==2))&&(now.B3==13)))||((((10==3)&&(2==1))&&(now.B1==10))&&(now.B3==4)))||((((10==3)&&(2==2))&&(now.B1==8))&&(now.B3==4)))||((((10==4)&&(2==1))&&(now.B2==4))&&(now.B3==10)))||((((10==4)&&(2==2))&&(now.B2==2))&&(now.B3==10)))||((((10==5)&&(2==1))&&(now.B3==6))&&(now.B4==13)))||((((10==5)&&(2==2))&&(now.B3==6))&&(now.B4==6)))||((((10==6)&&(2==1))&&(now.B4==6))&&(now.B5==13)))||((((10==6)&&(2==2))&&(now.B4==5))&&(now.B5==13)))||((((10==7)&&(2==1))&&(now.B5==6))&&(now.B6==13)))||((((10==7)&&(2==2))&&(now.B5==6))&&((now.B6==4)||(now.B6==3))))||((((10==8)&&(2==1))&&(now.B5==9))&&(now.B7==13)))||((((10==8)&&(2==2))&&(now.B5==9))&&((now.B7==10)||(now.B7==9))))||(((10==9)&&(2==1))&&(now.B7==9)))||(((10==9)&&(2==2))&&(now.B7==7)))||(((10==10)&&(2==1))&&(now.B6==3)))||(((10==10)&&(2==2))&&(now.B6==1)))||((((10==11)&&(2==1))&&(now.B7==10))&&(now.B1==13)))||((((10==11)&&(2==2))&&(now.B7==8))&&(now.B1==13)))||((((10==12)&&(2==1))&&(now.B7==10))&&(now.B1==10)))||((((10==12)&&(2==2))&&(now.B7==8))&&(now.B1==10)))||((((10==13)&&(2==1))&&(now.B6==4))&&(now.B2==13)))||((((10==13)&&(2==2))&&(now.B6==2))&&(now.B2==13)))||((((10==14)&&(2==1))&&(now.B6==4))&&(now.B2==4)))||((((10==14)&&(2==2))&&(now.B6==2))&&(now.B2==4)))&&(((((((((((((((10==1)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11]))))||((10==2)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((10==3)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[5])))&& !(((int)now.px[11])))))||((10==4)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[5])))&& !(((int)now.px[12])))))||((10==5)&&(((( !(((int)now.px[1]))&& !(((int)now.px[2])))&& !(((int)now.px[3])))&& !(((int)now.px[4])))&& !(((int)now.px[6])))))||((10==6)&&(( !(((int)now.px[5]))&& !(((int)now.px[7])))&& !(((int)now.px[8])))))||((10==7)&&((( !(((int)now.px[6]))&& !(((int)now.px[8])))&& !(((int)now.px[10])))&& !(((int)now.px[12])))))||((10==8)&&((( !(((int)now.px[6]))&& !(((int)now.px[7])))&& !(((int)now.px[9])))&& !(((int)now.px[11])))))||((10==9)&&( !(((int)now.px[8]))&& !(((int)now.px[11])))))||((10==10)&&( !(((int)now.px[7]))&& !(((int)now.px[12])))))||((10==11)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((10==12)&&((( !(((int)now.px[1]))&& !(((int)now.px[3])))&& !(((int)now.px[8])))&& !(((int)now.px[9])))))||((10==13)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10])))))||((10==14)&&((( !(((int)now.px[2]))&& !(((int)now.px[4])))&& !(((int)now.px[7])))&& !(((int)now.px[10]))))))))))))&& !(((int)now.px[ Index(( ((((P10 *)_this)->i<12)) ? (((P10 *)_this)->i) : (( (((((P10 *)_this)->i==12)||(((P10 *)_this)->i==13))) ? ((((P10 *)_this)->i-1)) : ((((P10 *)_this)->i-2)) )) ), 13) ])));
#ifdef VAR_RANGES
		logval("Control:precon", ((int)((P10 *)_this)->precon));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 90: // STATE 69 - deadlock.plcCommented.pml:589 - [(precon)] (0:0:1 - 1)
		IfNotBlocked
		reached[10][69] = 1;
		if (!(((int)((P10 *)_this)->precon)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: precon */  (trpt+1)->bup.oval = ((P10 *)_this)->precon;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->precon = 0;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 70 - deadlock.plcCommented.pml:589 - [((i==1))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][70] = 1;
		if (!((((P10 *)_this)->i==1)))
			continue;
		/* merge: px[1] = 1(122, 71, 122) */
		reached[10][71] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[1]);
		now.px[1] = 1;
#ifdef VAR_RANGES
		logval("px[1]", ((int)now.px[1]));
#endif
		;
		/* merge: v8 = 1(122, 72, 122) */
		reached[10][72] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v8);
		now.v8 = 1;
#ifdef VAR_RANGES
		logval("v8", ((int)now.v8));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 92: // STATE 73 - deadlock.plcCommented.pml:589 - [((i==2))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][73] = 1;
		if (!((((P10 *)_this)->i==2)))
			continue;
		/* merge: px[2] = 1(122, 74, 122) */
		reached[10][74] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[2]);
		now.px[2] = 1;
#ifdef VAR_RANGES
		logval("px[2]", ((int)now.px[2]));
#endif
		;
		/* merge: v9 = 1(122, 75, 122) */
		reached[10][75] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v9);
		now.v9 = 1;
#ifdef VAR_RANGES
		logval("v9", ((int)now.v9));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 93: // STATE 76 - deadlock.plcCommented.pml:589 - [((i==3))] (122:0:3 - 1)
		IfNotBlocked
		reached[10][76] = 1;
		if (!((((P10 *)_this)->i==3)))
			continue;
		/* merge: px[3] = 1(122, 77, 122) */
		reached[10][77] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.px[3]);
		now.px[3] = 1;
#ifdef VAR_RANGES
		logval("px[3]", ((int)now.px[3]));
#endif
		;
		/* merge: v8 = 1(122, 78, 122) */
		reached[10][78] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v8);
		now.v8 = 1;
#ifdef VAR_RANGES
		logval("v8", ((int)now.v8));
#endif
		;
		/* merge: mix = 1(122, 79, 122) */
		reached[10][79] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.mix);
		now.mix = 1;
#ifdef VAR_RANGES
		logval("mix", ((int)now.mix));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 94: // STATE 80 - deadlock.plcCommented.pml:589 - [((i==4))] (122:0:3 - 1)
		IfNotBlocked
		reached[10][80] = 1;
		if (!((((P10 *)_this)->i==4)))
			continue;
		/* merge: px[4] = 1(122, 81, 122) */
		reached[10][81] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.px[4]);
		now.px[4] = 1;
#ifdef VAR_RANGES
		logval("px[4]", ((int)now.px[4]));
#endif
		;
		/* merge: v9 = 1(122, 82, 122) */
		reached[10][82] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v9);
		now.v9 = 1;
#ifdef VAR_RANGES
		logval("v9", ((int)now.v9));
#endif
		;
		/* merge: mix = 1(122, 83, 122) */
		reached[10][83] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.mix);
		now.mix = 1;
#ifdef VAR_RANGES
		logval("mix", ((int)now.mix));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 95: // STATE 84 - deadlock.plcCommented.pml:589 - [((i==5))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][84] = 1;
		if (!((((P10 *)_this)->i==5)))
			continue;
		/* merge: px[5] = 1(122, 85, 122) */
		reached[10][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[5]);
		now.px[5] = 1;
#ifdef VAR_RANGES
		logval("px[5]", ((int)now.px[5]));
#endif
		;
		/* merge: v11 = 1(122, 86, 122) */
		reached[10][86] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v11);
		now.v11 = 1;
#ifdef VAR_RANGES
		logval("v11", ((int)now.v11));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 96: // STATE 87 - deadlock.plcCommented.pml:589 - [((i==6))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][87] = 1;
		if (!((((P10 *)_this)->i==6)))
			continue;
		/* merge: px[6] = 1(122, 88, 122) */
		reached[10][88] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[6]);
		now.px[6] = 1;
#ifdef VAR_RANGES
		logval("px[6]", ((int)now.px[6]));
#endif
		;
		/* merge: v12 = 1(122, 89, 122) */
		reached[10][89] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v12);
		now.v12 = 1;
#ifdef VAR_RANGES
		logval("v12", ((int)now.v12));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 97: // STATE 90 - deadlock.plcCommented.pml:589 - [((i==7))] (122:0:3 - 1)
		IfNotBlocked
		reached[10][90] = 1;
		if (!((((P10 *)_this)->i==7)))
			continue;
		/* merge: px[7] = 1(122, 91, 122) */
		reached[10][91] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.px[7]);
		now.px[7] = 1;
#ifdef VAR_RANGES
		logval("px[7]", ((int)now.px[7]));
#endif
		;
		/* merge: heat = 1(122, 92, 122) */
		reached[10][92] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.heat);
		now.heat = 1;
#ifdef VAR_RANGES
		logval("heat", ((int)now.heat));
#endif
		;
		/* merge: v13 = 1(122, 93, 122) */
		reached[10][93] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v13);
		now.v13 = 1;
#ifdef VAR_RANGES
		logval("v13", ((int)now.v13));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 98: // STATE 94 - deadlock.plcCommented.pml:589 - [((i==8))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][94] = 1;
		if (!((((P10 *)_this)->i==8)))
			continue;
		/* merge: px[8] = 1(122, 95, 122) */
		reached[10][95] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[8]);
		now.px[8] = 1;
#ifdef VAR_RANGES
		logval("px[8]", ((int)now.px[8]));
#endif
		;
		/* merge: v15 = 1(122, 96, 122) */
		reached[10][96] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v15);
		now.v15 = 1;
#ifdef VAR_RANGES
		logval("v15", ((int)now.v15));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 99: // STATE 97 - deadlock.plcCommented.pml:589 - [((i==9))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][97] = 1;
		if (!((((P10 *)_this)->i==9)))
			continue;
		/* merge: px[9] = 1(122, 98, 122) */
		reached[10][98] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[9]);
		now.px[9] = 1;
#ifdef VAR_RANGES
		logval("px[9]", ((int)now.px[9]));
#endif
		;
		/* merge: v17 = 1(122, 99, 122) */
		reached[10][99] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v17);
		now.v17 = 1;
#ifdef VAR_RANGES
		logval("v17", ((int)now.v17));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 100: // STATE 100 - deadlock.plcCommented.pml:589 - [((i==10))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][100] = 1;
		if (!((((P10 *)_this)->i==10)))
			continue;
		/* merge: px[10] = 1(122, 101, 122) */
		reached[10][101] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[10]);
		now.px[10] = 1;
#ifdef VAR_RANGES
		logval("px[10]", ((int)now.px[10]));
#endif
		;
		/* merge: v29 = 1(122, 102, 122) */
		reached[10][102] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.v29);
		now.v29 = 1;
#ifdef VAR_RANGES
		logval("v29", ((int)now.v29));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 101: // STATE 103 - deadlock.plcCommented.pml:589 - [(((i==11)||(i==12)))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][103] = 1;
		if (!(((((P10 *)_this)->i==11)||(((P10 *)_this)->i==12))))
			continue;
		/* merge: px[11] = 1(122, 104, 122) */
		reached[10][104] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[11]);
		now.px[11] = 1;
#ifdef VAR_RANGES
		logval("px[11]", ((int)now.px[11]));
#endif
		;
		/* merge: p1 = 1(122, 105, 122) */
		reached[10][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.p1);
		now.p1 = 1;
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 102: // STATE 106 - deadlock.plcCommented.pml:589 - [(((i==13)||(i==14)))] (122:0:2 - 1)
		IfNotBlocked
		reached[10][106] = 1;
		if (!(((((P10 *)_this)->i==13)||(((P10 *)_this)->i==14))))
			continue;
		/* merge: px[12] = 1(122, 107, 122) */
		reached[10][107] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.px[12]);
		now.px[12] = 1;
#ifdef VAR_RANGES
		logval("px[12]", ((int)now.px[12]));
#endif
		;
		/* merge: p2 = 1(122, 108, 122) */
		reached[10][108] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.p2);
		now.p2 = 1;
#ifdef VAR_RANGES
		logval("p2", ((int)now.p2));
#endif
		;
		/* merge: .(goto)(0, 110, 122) */
		reached[10][110] = 1;
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 103: // STATE 111 - deadlock.plcCommented.pml:590 - [(precon)] (122:0:2 - 1)
		IfNotBlocked
		reached[10][111] = 1;
		if (!(((int)((P10 *)_this)->precon)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: precon */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->precon;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->precon = 0;
		/* merge: last = i(0, 112, 122) */
		reached[10][112] = 1;
		(trpt+1)->bup.ovals[1] = ((P10 *)_this)->last;
		((P10 *)_this)->last = ((P10 *)_this)->i;
#ifdef VAR_RANGES
		logval("Control:last", ((P10 *)_this)->last);
#endif
		;
		/* merge: .(goto)(0, 116, 122) */
		reached[10][116] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 104: // STATE 117 - deadlock.plcCommented.pml:594 - [((j==1))] (126:0:2 - 1)
		IfNotBlocked
		reached[10][117] = 1;
		if (!((((P10 *)_this)->j==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->j = 0;
		/* merge: j = 2(0, 118, 126) */
		reached[10][118] = 1;
		(trpt+1)->bup.ovals[1] = ((P10 *)_this)->j;
		((P10 *)_this)->j = 2;
#ifdef VAR_RANGES
		logval("Control:j", ((P10 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 123, 126) */
		reached[10][123] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[10][127] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 105: // STATE 119 - deadlock.plcCommented.pml:595 - [((j==2))] (126:0:3 - 1)
		IfNotBlocked
		reached[10][119] = 1;
		if (!((((P10 *)_this)->j==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->j = 0;
		/* merge: j = 1(126, 120, 126) */
		reached[10][120] = 1;
		(trpt+1)->bup.ovals[1] = ((P10 *)_this)->j;
		((P10 *)_this)->j = 1;
#ifdef VAR_RANGES
		logval("Control:j", ((P10 *)_this)->j);
#endif
		;
		/* merge: i = (i+1)(126, 121, 126) */
		reached[10][121] = 1;
		(trpt+1)->bup.ovals[2] = ((P10 *)_this)->i;
		((P10 *)_this)->i = (((P10 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Control:i", ((P10 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 123, 126) */
		reached[10][123] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[10][127] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 106: // STATE 124 - deadlock.plcCommented.pml:597 - [((i==15))] (0:0:1 - 1)
		IfNotBlocked
		reached[10][124] = 1;
		if (!((((P10 *)_this)->i==15)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P10 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 129 - deadlock.plcCommented.pml:605 - [(!((((((((((((px[1]||px[2])||px[3])||px[4])||px[5])||px[6])||px[7])||px[8])||px[9])||px[10])||px[11])||px[12])))] (0:0:0 - 1)
		IfNotBlocked
		reached[10][129] = 1;
		if (!( !((((((((((((((int)now.px[1])||((int)now.px[2]))||((int)now.px[3]))||((int)now.px[4]))||((int)now.px[5]))||((int)now.px[6]))||((int)now.px[7]))||((int)now.px[8]))||((int)now.px[9]))||((int)now.px[10]))||((int)now.px[11]))||((int)now.px[12])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 130 - deadlock.plcCommented.pml:605 - [((last==1))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][130] = 1;
		if (!((((P10 *)_this)->last==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[1] = 1(179, 131, 179) */
		reached[10][131] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[1]);
		now.px[1] = 1;
#ifdef VAR_RANGES
		logval("px[1]", ((int)now.px[1]));
#endif
		;
		/* merge: v8 = 1(179, 132, 179) */
		reached[10][132] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v8);
		now.v8 = 1;
#ifdef VAR_RANGES
		logval("v8", ((int)now.v8));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 109: // STATE 133 - deadlock.plcCommented.pml:605 - [((last==2))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][133] = 1;
		if (!((((P10 *)_this)->last==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[2] = 1(179, 134, 179) */
		reached[10][134] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[2]);
		now.px[2] = 1;
#ifdef VAR_RANGES
		logval("px[2]", ((int)now.px[2]));
#endif
		;
		/* merge: v9 = 1(179, 135, 179) */
		reached[10][135] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v9);
		now.v9 = 1;
#ifdef VAR_RANGES
		logval("v9", ((int)now.v9));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 110: // STATE 136 - deadlock.plcCommented.pml:605 - [((last==3))] (179:0:5 - 1)
		IfNotBlocked
		reached[10][136] = 1;
		if (!((((P10 *)_this)->last==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[3] = 1(179, 137, 179) */
		reached[10][137] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[3]);
		now.px[3] = 1;
#ifdef VAR_RANGES
		logval("px[3]", ((int)now.px[3]));
#endif
		;
		/* merge: v8 = 1(179, 138, 179) */
		reached[10][138] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v8);
		now.v8 = 1;
#ifdef VAR_RANGES
		logval("v8", ((int)now.v8));
#endif
		;
		/* merge: mix = 1(179, 139, 179) */
		reached[10][139] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.mix);
		now.mix = 1;
#ifdef VAR_RANGES
		logval("mix", ((int)now.mix));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 111: // STATE 140 - deadlock.plcCommented.pml:605 - [((last==4))] (179:0:5 - 1)
		IfNotBlocked
		reached[10][140] = 1;
		if (!((((P10 *)_this)->last==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[4] = 1(179, 141, 179) */
		reached[10][141] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[4]);
		now.px[4] = 1;
#ifdef VAR_RANGES
		logval("px[4]", ((int)now.px[4]));
#endif
		;
		/* merge: v9 = 1(179, 142, 179) */
		reached[10][142] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v9);
		now.v9 = 1;
#ifdef VAR_RANGES
		logval("v9", ((int)now.v9));
#endif
		;
		/* merge: mix = 1(179, 143, 179) */
		reached[10][143] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.mix);
		now.mix = 1;
#ifdef VAR_RANGES
		logval("mix", ((int)now.mix));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 112: // STATE 144 - deadlock.plcCommented.pml:605 - [((last==5))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][144] = 1;
		if (!((((P10 *)_this)->last==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[5] = 1(179, 145, 179) */
		reached[10][145] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[5]);
		now.px[5] = 1;
#ifdef VAR_RANGES
		logval("px[5]", ((int)now.px[5]));
#endif
		;
		/* merge: v11 = 1(179, 146, 179) */
		reached[10][146] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v11);
		now.v11 = 1;
#ifdef VAR_RANGES
		logval("v11", ((int)now.v11));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 113: // STATE 147 - deadlock.plcCommented.pml:605 - [((last==6))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][147] = 1;
		if (!((((P10 *)_this)->last==6)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[6] = 1(179, 148, 179) */
		reached[10][148] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[6]);
		now.px[6] = 1;
#ifdef VAR_RANGES
		logval("px[6]", ((int)now.px[6]));
#endif
		;
		/* merge: v12 = 1(179, 149, 179) */
		reached[10][149] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v12);
		now.v12 = 1;
#ifdef VAR_RANGES
		logval("v12", ((int)now.v12));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 114: // STATE 150 - deadlock.plcCommented.pml:605 - [((last==7))] (179:0:5 - 1)
		IfNotBlocked
		reached[10][150] = 1;
		if (!((((P10 *)_this)->last==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[7] = 1(179, 151, 179) */
		reached[10][151] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[7]);
		now.px[7] = 1;
#ifdef VAR_RANGES
		logval("px[7]", ((int)now.px[7]));
#endif
		;
		/* merge: heat = 1(179, 152, 179) */
		reached[10][152] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.heat);
		now.heat = 1;
#ifdef VAR_RANGES
		logval("heat", ((int)now.heat));
#endif
		;
		/* merge: v13 = 1(179, 153, 179) */
		reached[10][153] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.v13);
		now.v13 = 1;
#ifdef VAR_RANGES
		logval("v13", ((int)now.v13));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 115: // STATE 154 - deadlock.plcCommented.pml:605 - [((last==8))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][154] = 1;
		if (!((((P10 *)_this)->last==8)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[8] = 1(179, 155, 179) */
		reached[10][155] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[8]);
		now.px[8] = 1;
#ifdef VAR_RANGES
		logval("px[8]", ((int)now.px[8]));
#endif
		;
		/* merge: v15 = 1(179, 156, 179) */
		reached[10][156] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v15);
		now.v15 = 1;
#ifdef VAR_RANGES
		logval("v15", ((int)now.v15));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 116: // STATE 157 - deadlock.plcCommented.pml:605 - [((last==9))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][157] = 1;
		if (!((((P10 *)_this)->last==9)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[9] = 1(179, 158, 179) */
		reached[10][158] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[9]);
		now.px[9] = 1;
#ifdef VAR_RANGES
		logval("px[9]", ((int)now.px[9]));
#endif
		;
		/* merge: v17 = 1(179, 159, 179) */
		reached[10][159] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v17);
		now.v17 = 1;
#ifdef VAR_RANGES
		logval("v17", ((int)now.v17));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 117: // STATE 160 - deadlock.plcCommented.pml:605 - [((last==10))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][160] = 1;
		if (!((((P10 *)_this)->last==10)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[10] = 1(179, 161, 179) */
		reached[10][161] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[10]);
		now.px[10] = 1;
#ifdef VAR_RANGES
		logval("px[10]", ((int)now.px[10]));
#endif
		;
		/* merge: v29 = 1(179, 162, 179) */
		reached[10][162] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.v29);
		now.v29 = 1;
#ifdef VAR_RANGES
		logval("v29", ((int)now.v29));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 118: // STATE 163 - deadlock.plcCommented.pml:605 - [(((last==11)||(last==12)))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][163] = 1;
		if (!(((((P10 *)_this)->last==11)||(((P10 *)_this)->last==12))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[11] = 1(179, 164, 179) */
		reached[10][164] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[11]);
		now.px[11] = 1;
#ifdef VAR_RANGES
		logval("px[11]", ((int)now.px[11]));
#endif
		;
		/* merge: p1 = 1(179, 165, 179) */
		reached[10][165] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.p1);
		now.p1 = 1;
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 119: // STATE 166 - deadlock.plcCommented.pml:605 - [(((last==13)||(last==14)))] (179:0:4 - 1)
		IfNotBlocked
		reached[10][166] = 1;
		if (!(((((P10 *)_this)->last==13)||(((P10 *)_this)->last==14))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: last */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P10 *)_this)->last;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P10 *)_this)->last = 0;
		/* merge: px[12] = 1(179, 167, 179) */
		reached[10][167] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.px[12]);
		now.px[12] = 1;
#ifdef VAR_RANGES
		logval("px[12]", ((int)now.px[12]));
#endif
		;
		/* merge: p2 = 1(179, 168, 179) */
		reached[10][168] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.p2);
		now.p2 = 1;
#ifdef VAR_RANGES
		logval("p2", ((int)now.p2));
#endif
		;
		/* merge: .(goto)(179, 170, 179) */
		reached[10][170] = 1;
		;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 120: // STATE 174 - deadlock.plcCommented.pml:609 - [.(goto)] (0:179:1 - 14)
		IfNotBlocked
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 121: // STATE 172 - deadlock.plcCommented.pml:606 - [(1)] (179:0:1 - 1)
		IfNotBlocked
		reached[10][172] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(179, 174, 179) */
		reached[10][174] = 1;
		;
		/* merge: cycle = 0(179, 175, 179) */
		reached[10][175] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 0;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 180, 179) */
		reached[10][180] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 122: // STATE 177 - deadlock.plcCommented.pml:611 - [((time>=5000))] (0:0:0 - 1)
		IfNotBlocked
		reached[10][177] = 1;
		if (!((now.time>=5000)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 183 - deadlock.plcCommented.pml:614 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[10][183] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Pump2 */
	case 124: // STATE 1 - deadlock.plcCommented.pml:507 - [((((cycle==0)&&(B6!=cempty))&&p2))] (0:0:0 - 1)
		IfNotBlocked
		reached[9][1] = 1;
		if (!((((((int)now.cycle)==0)&&(now.B6!=13))&&((int)now.p2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 2 - deadlock.plcCommented.pml:509 - [((B6==water28C))] (16:0:1 - 1)
		IfNotBlocked
		reached[9][2] = 1;
		if (!((now.B6==4)))
			continue;
		/* merge: B6 = undef1(0, 3, 16) */
		reached[9][3] = 1;
		(trpt+1)->bup.oval = now.B6;
		now.B6 = 12;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(0, 9, 16) */
		reached[9][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 126: // STATE 4 - deadlock.plcCommented.pml:510 - [((B6==water56C))] (16:0:1 - 1)
		IfNotBlocked
		reached[9][4] = 1;
		if (!((now.B6==2)))
			continue;
		/* merge: B6 = undef2(0, 5, 16) */
		reached[9][5] = 1;
		(trpt+1)->bup.oval = now.B6;
		now.B6 = 11;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(0, 9, 16) */
		reached[9][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 127: // STATE 7 - deadlock.plcCommented.pml:511 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[9][7] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 10 - deadlock.plcCommented.pml:514 - [((B2==cempty))] (41:0:3 - 1)
		IfNotBlocked
		reached[9][10] = 1;
		if (!((now.B2==13)))
			continue;
		/* merge: B2 = undef1(41, 11, 41) */
		reached[9][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B2;
		now.B2 = 12;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		/* merge: .(goto)(41, 17, 41) */
		reached[9][17] = 1;
		;
		/* merge: printf('>> start B6 to B2:   %d\\n',time)(41, 18, 41) */
		reached[9][18] = 1;
		Printf(">> start B6 to B2:   %d\n", now.time);
		/* merge: tP2 = (time+24)(41, 19, 41) */
		reached[9][19] = 1;
		(trpt+1)->bup.ovals[1] = now.tP2;
		now.tP2 = (now.time+24);
#ifdef VAR_RANGES
		logval("tP2", now.tP2);
#endif
		;
		/* merge: cycle = 1(41, 20, 41) */
		reached[9][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 129: // STATE 12 - deadlock.plcCommented.pml:515 - [((B2==water28C))] (41:0:3 - 1)
		IfNotBlocked
		reached[9][12] = 1;
		if (!((now.B2==4)))
			continue;
		/* merge: B2 = undef2(41, 13, 41) */
		reached[9][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B2;
		now.B2 = 11;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		/* merge: .(goto)(41, 17, 41) */
		reached[9][17] = 1;
		;
		/* merge: printf('>> start B6 to B2:   %d\\n',time)(41, 18, 41) */
		reached[9][18] = 1;
		Printf(">> start B6 to B2:   %d\n", now.time);
		/* merge: tP2 = (time+24)(41, 19, 41) */
		reached[9][19] = 1;
		(trpt+1)->bup.ovals[1] = now.tP2;
		now.tP2 = (now.time+24);
#ifdef VAR_RANGES
		logval("tP2", now.tP2);
#endif
		;
		/* merge: cycle = 1(41, 20, 41) */
		reached[9][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 130: // STATE 15 - deadlock.plcCommented.pml:516 - [assert(0)] (0:41:2 - 1)
		IfNotBlocked
		reached[9][15] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(41, 17, 41) */
		reached[9][17] = 1;
		;
		/* merge: printf('>> start B6 to B2:   %d\\n',time)(41, 18, 41) */
		reached[9][18] = 1;
		Printf(">> start B6 to B2:   %d\n", now.time);
		/* merge: tP2 = (time+24)(41, 19, 41) */
		reached[9][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tP2;
		now.tP2 = (now.time+24);
#ifdef VAR_RANGES
		logval("tP2", now.tP2);
#endif
		;
		/* merge: cycle = 1(41, 20, 41) */
		reached[9][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 131: // STATE 18 - deadlock.plcCommented.pml:518 - [printf('>> start B6 to B2:   %d\\n',time)] (0:41:2 - 4)
		IfNotBlocked
		reached[9][18] = 1;
		Printf(">> start B6 to B2:   %d\n", now.time);
		/* merge: tP2 = (time+24)(41, 19, 41) */
		reached[9][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tP2;
		now.tP2 = (now.time+24);
#ifdef VAR_RANGES
		logval("tP2", now.tP2);
#endif
		;
		/* merge: cycle = 1(41, 20, 41) */
		reached[9][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 132: // STATE 22 - deadlock.plcCommented.pml:522 - [((((time==tP2)&&(cycle==0))&&p2))] (0:0:0 - 1)
		IfNotBlocked
		reached[9][22] = 1;
		if (!((((now.time==now.tP2)&&(((int)now.cycle)==0))&&((int)now.p2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 23 - deadlock.plcCommented.pml:524 - [((B6==undef1))] (37:0:1 - 1)
		IfNotBlocked
		reached[9][23] = 1;
		if (!((now.B6==12)))
			continue;
		/* merge: B6 = cempty(0, 24, 37) */
		reached[9][24] = 1;
		(trpt+1)->bup.oval = now.B6;
		now.B6 = 13;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(0, 30, 37) */
		reached[9][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 134: // STATE 25 - deadlock.plcCommented.pml:525 - [((B6==undef2))] (37:0:1 - 1)
		IfNotBlocked
		reached[9][25] = 1;
		if (!((now.B6==11)))
			continue;
		/* merge: B6 = water28C(0, 26, 37) */
		reached[9][26] = 1;
		(trpt+1)->bup.oval = now.B6;
		now.B6 = 4;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(0, 30, 37) */
		reached[9][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 135: // STATE 28 - deadlock.plcCommented.pml:526 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[9][28] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 31 - deadlock.plcCommented.pml:529 - [((B2==undef1))] (42:0:2 - 1)
		IfNotBlocked
		reached[9][31] = 1;
		if (!((now.B2==12)))
			continue;
		/* merge: B2 = water28C(42, 32, 42) */
		reached[9][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B2;
		now.B2 = 4;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		/* merge: .(goto)(42, 38, 42) */
		reached[9][38] = 1;
		;
		/* merge: printf('>> end B6 to B2:   %d\\n',time)(42, 39, 42) */
		reached[9][39] = 1;
		Printf(">> end B6 to B2:   %d\n", now.time);
		/* merge: cycle = 1(42, 40, 42) */
		reached[9][40] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[9][43] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 137: // STATE 33 - deadlock.plcCommented.pml:530 - [((B2==undef2))] (42:0:2 - 1)
		IfNotBlocked
		reached[9][33] = 1;
		if (!((now.B2==11)))
			continue;
		/* merge: B2 = water56C(42, 34, 42) */
		reached[9][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B2;
		now.B2 = 2;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		/* merge: .(goto)(42, 38, 42) */
		reached[9][38] = 1;
		;
		/* merge: printf('>> end B6 to B2:   %d\\n',time)(42, 39, 42) */
		reached[9][39] = 1;
		Printf(">> end B6 to B2:   %d\n", now.time);
		/* merge: cycle = 1(42, 40, 42) */
		reached[9][40] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[9][43] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 138: // STATE 36 - deadlock.plcCommented.pml:531 - [assert(0)] (0:42:1 - 1)
		IfNotBlocked
		reached[9][36] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(42, 38, 42) */
		reached[9][38] = 1;
		;
		/* merge: printf('>> end B6 to B2:   %d\\n',time)(42, 39, 42) */
		reached[9][39] = 1;
		Printf(">> end B6 to B2:   %d\n", now.time);
		/* merge: cycle = 1(42, 40, 42) */
		reached[9][40] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[9][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 139: // STATE 39 - deadlock.plcCommented.pml:533 - [printf('>> end B6 to B2:   %d\\n',time)] (0:42:1 - 4)
		IfNotBlocked
		reached[9][39] = 1;
		Printf(">> end B6 to B2:   %d\n", now.time);
		/* merge: cycle = 1(42, 40, 42) */
		reached[9][40] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[9][43] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 140: // STATE 45 - deadlock.plcCommented.pml:537 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[9][45] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Pump1 */
	case 141: // STATE 1 - deadlock.plcCommented.pml:472 - [((((cycle==0)&&(B7!=cempty))&&p1))] (0:0:0 - 1)
		IfNotBlocked
		reached[8][1] = 1;
		if (!((((((int)now.cycle)==0)&&(now.B7!=13))&&((int)now.p1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 2 - deadlock.plcCommented.pml:474 - [((B7==sol42C))] (16:0:1 - 1)
		IfNotBlocked
		reached[8][2] = 1;
		if (!((now.B7==10)))
			continue;
		/* merge: B7 = undef1(0, 3, 16) */
		reached[8][3] = 1;
		(trpt+1)->bup.oval = now.B7;
		now.B7 = 12;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(0, 9, 16) */
		reached[8][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 143: // STATE 4 - deadlock.plcCommented.pml:475 - [((B7==sol84C))] (16:0:1 - 1)
		IfNotBlocked
		reached[8][4] = 1;
		if (!((now.B7==8)))
			continue;
		/* merge: B7 = undef2(0, 5, 16) */
		reached[8][5] = 1;
		(trpt+1)->bup.oval = now.B7;
		now.B7 = 11;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(0, 9, 16) */
		reached[8][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 144: // STATE 7 - deadlock.plcCommented.pml:476 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[8][7] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 10 - deadlock.plcCommented.pml:479 - [((B1==cempty))] (41:0:3 - 1)
		IfNotBlocked
		reached[8][10] = 1;
		if (!((now.B1==13)))
			continue;
		/* merge: B1 = undef1(41, 11, 41) */
		reached[8][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B1;
		now.B1 = 12;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		/* merge: .(goto)(41, 17, 41) */
		reached[8][17] = 1;
		;
		/* merge: printf('>> start B7 to B1:   %d\\n',time)(41, 18, 41) */
		reached[8][18] = 1;
		Printf(">> start B7 to B1:   %d\n", now.time);
		/* merge: tP1 = (time+22)(41, 19, 41) */
		reached[8][19] = 1;
		(trpt+1)->bup.ovals[1] = now.tP1;
		now.tP1 = (now.time+22);
#ifdef VAR_RANGES
		logval("tP1", now.tP1);
#endif
		;
		/* merge: cycle = 1(41, 20, 41) */
		reached[8][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 146: // STATE 12 - deadlock.plcCommented.pml:480 - [((B1==sol42C))] (41:0:3 - 1)
		IfNotBlocked
		reached[8][12] = 1;
		if (!((now.B1==10)))
			continue;
		/* merge: B1 = undef2(41, 13, 41) */
		reached[8][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B1;
		now.B1 = 11;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		/* merge: .(goto)(41, 17, 41) */
		reached[8][17] = 1;
		;
		/* merge: printf('>> start B7 to B1:   %d\\n',time)(41, 18, 41) */
		reached[8][18] = 1;
		Printf(">> start B7 to B1:   %d\n", now.time);
		/* merge: tP1 = (time+22)(41, 19, 41) */
		reached[8][19] = 1;
		(trpt+1)->bup.ovals[1] = now.tP1;
		now.tP1 = (now.time+22);
#ifdef VAR_RANGES
		logval("tP1", now.tP1);
#endif
		;
		/* merge: cycle = 1(41, 20, 41) */
		reached[8][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 147: // STATE 15 - deadlock.plcCommented.pml:481 - [assert(0)] (0:41:2 - 1)
		IfNotBlocked
		reached[8][15] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(41, 17, 41) */
		reached[8][17] = 1;
		;
		/* merge: printf('>> start B7 to B1:   %d\\n',time)(41, 18, 41) */
		reached[8][18] = 1;
		Printf(">> start B7 to B1:   %d\n", now.time);
		/* merge: tP1 = (time+22)(41, 19, 41) */
		reached[8][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tP1;
		now.tP1 = (now.time+22);
#ifdef VAR_RANGES
		logval("tP1", now.tP1);
#endif
		;
		/* merge: cycle = 1(41, 20, 41) */
		reached[8][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 148: // STATE 18 - deadlock.plcCommented.pml:483 - [printf('>> start B7 to B1:   %d\\n',time)] (0:41:2 - 4)
		IfNotBlocked
		reached[8][18] = 1;
		Printf(">> start B7 to B1:   %d\n", now.time);
		/* merge: tP1 = (time+22)(41, 19, 41) */
		reached[8][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tP1;
		now.tP1 = (now.time+22);
#ifdef VAR_RANGES
		logval("tP1", now.tP1);
#endif
		;
		/* merge: cycle = 1(41, 20, 41) */
		reached[8][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 149: // STATE 22 - deadlock.plcCommented.pml:487 - [((((time==tP1)&&(cycle==0))&&p1))] (0:0:0 - 1)
		IfNotBlocked
		reached[8][22] = 1;
		if (!((((now.time==now.tP1)&&(((int)now.cycle)==0))&&((int)now.p1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 23 - deadlock.plcCommented.pml:489 - [((B7==undef1))] (37:0:1 - 1)
		IfNotBlocked
		reached[8][23] = 1;
		if (!((now.B7==12)))
			continue;
		/* merge: B7 = cempty(0, 24, 37) */
		reached[8][24] = 1;
		(trpt+1)->bup.oval = now.B7;
		now.B7 = 13;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(0, 30, 37) */
		reached[8][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 151: // STATE 25 - deadlock.plcCommented.pml:490 - [((B7==undef2))] (37:0:1 - 1)
		IfNotBlocked
		reached[8][25] = 1;
		if (!((now.B7==11)))
			continue;
		/* merge: B7 = sol42C(0, 26, 37) */
		reached[8][26] = 1;
		(trpt+1)->bup.oval = now.B7;
		now.B7 = 10;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(0, 30, 37) */
		reached[8][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 152: // STATE 28 - deadlock.plcCommented.pml:491 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[8][28] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 31 - deadlock.plcCommented.pml:494 - [((B1==undef1))] (42:0:2 - 1)
		IfNotBlocked
		reached[8][31] = 1;
		if (!((now.B1==12)))
			continue;
		/* merge: B1 = sol42C(42, 32, 42) */
		reached[8][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B1;
		now.B1 = 10;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		/* merge: .(goto)(42, 38, 42) */
		reached[8][38] = 1;
		;
		/* merge: printf('>> end B7 to B1:   %d\\n',time)(42, 39, 42) */
		reached[8][39] = 1;
		Printf(">> end B7 to B1:   %d\n", now.time);
		/* merge: cycle = 1(42, 40, 42) */
		reached[8][40] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[8][43] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 154: // STATE 33 - deadlock.plcCommented.pml:495 - [((B1==undef2))] (42:0:2 - 1)
		IfNotBlocked
		reached[8][33] = 1;
		if (!((now.B1==11)))
			continue;
		/* merge: B1 = sol84C(42, 34, 42) */
		reached[8][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B1;
		now.B1 = 8;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		/* merge: .(goto)(42, 38, 42) */
		reached[8][38] = 1;
		;
		/* merge: printf('>> end B7 to B1:   %d\\n',time)(42, 39, 42) */
		reached[8][39] = 1;
		Printf(">> end B7 to B1:   %d\n", now.time);
		/* merge: cycle = 1(42, 40, 42) */
		reached[8][40] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[8][43] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 155: // STATE 36 - deadlock.plcCommented.pml:496 - [assert(0)] (0:42:1 - 1)
		IfNotBlocked
		reached[8][36] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(42, 38, 42) */
		reached[8][38] = 1;
		;
		/* merge: printf('>> end B7 to B1:   %d\\n',time)(42, 39, 42) */
		reached[8][39] = 1;
		Printf(">> end B7 to B1:   %d\n", now.time);
		/* merge: cycle = 1(42, 40, 42) */
		reached[8][40] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[8][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 156: // STATE 39 - deadlock.plcCommented.pml:498 - [printf('>> end B7 to B1:   %d\\n',time)] (0:42:1 - 4)
		IfNotBlocked
		reached[8][39] = 1;
		Printf(">> end B7 to B1:   %d\n", now.time);
		/* merge: cycle = 1(42, 40, 42) */
		reached[8][40] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[8][43] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 157: // STATE 45 - deadlock.plcCommented.pml:502 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[8][45] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Cool7 */
	case 158: // STATE 1 - deadlock.plcCommented.pml:448 - [(((cycle==0)&&v17))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][1] = 1;
		if (!(((((int)now.cycle)==0)&&((int)now.v17))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 2 - deadlock.plcCommented.pml:450 - [((B7==sol42H))] (26:0:3 - 1)
		IfNotBlocked
		reached[7][2] = 1;
		if (!((now.B7==9)))
			continue;
		/* merge: B7 = undef1(26, 3, 26) */
		reached[7][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 12;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: tC7 = (time+60)(26, 4, 26) */
		reached[7][4] = 1;
		(trpt+1)->bup.ovals[1] = now.tC7;
		now.tC7 = (now.time+60);
#ifdef VAR_RANGES
		logval("tC7", now.tC7);
#endif
		;
		/* merge: .(goto)(26, 11, 26) */
		reached[7][11] = 1;
		;
		/* merge: printf('>> start cool B7:   %d\\n',time)(26, 12, 26) */
		reached[7][12] = 1;
		Printf(">> start cool B7:   %d\n", now.time);
		/* merge: cycle = 1(26, 13, 26) */
		reached[7][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 160: // STATE 5 - deadlock.plcCommented.pml:451 - [((B7==sol84H))] (26:0:3 - 1)
		IfNotBlocked
		reached[7][5] = 1;
		if (!((now.B7==7)))
			continue;
		/* merge: B7 = undef2(26, 6, 26) */
		reached[7][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 11;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: tC7 = (time+120)(26, 7, 26) */
		reached[7][7] = 1;
		(trpt+1)->bup.ovals[1] = now.tC7;
		now.tC7 = (now.time+120);
#ifdef VAR_RANGES
		logval("tC7", now.tC7);
#endif
		;
		/* merge: .(goto)(26, 11, 26) */
		reached[7][11] = 1;
		;
		/* merge: printf('>> start cool B7:   %d\\n',time)(26, 12, 26) */
		reached[7][12] = 1;
		Printf(">> start cool B7:   %d\n", now.time);
		/* merge: cycle = 1(26, 13, 26) */
		reached[7][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 161: // STATE 9 - deadlock.plcCommented.pml:452 - [assert(0)] (0:26:1 - 1)
		IfNotBlocked
		reached[7][9] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(26, 11, 26) */
		reached[7][11] = 1;
		;
		/* merge: printf('>> start cool B7:   %d\\n',time)(26, 12, 26) */
		reached[7][12] = 1;
		Printf(">> start cool B7:   %d\n", now.time);
		/* merge: cycle = 1(26, 13, 26) */
		reached[7][13] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 162: // STATE 12 - deadlock.plcCommented.pml:454 - [printf('>> start cool B7:   %d\\n',time)] (0:26:1 - 4)
		IfNotBlocked
		reached[7][12] = 1;
		Printf(">> start cool B7:   %d\n", now.time);
		/* merge: cycle = 1(26, 13, 26) */
		reached[7][13] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 163: // STATE 15 - deadlock.plcCommented.pml:457 - [((((time==tC7)&&(cycle==0))&&v17))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][15] = 1;
		if (!((((now.time==now.tC7)&&(((int)now.cycle)==0))&&((int)now.v17))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 16 - deadlock.plcCommented.pml:459 - [((B7==undef1))] (27:0:2 - 1)
		IfNotBlocked
		reached[7][16] = 1;
		if (!((now.B7==12)))
			continue;
		/* merge: B7 = sol42C(27, 17, 27) */
		reached[7][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 10;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(27, 23, 27) */
		reached[7][23] = 1;
		;
		/* merge: printf('>> end cool B7:   %d\\n',time)(27, 24, 27) */
		reached[7][24] = 1;
		Printf(">> end cool B7:   %d\n", now.time);
		/* merge: cycle = 1(27, 25, 27) */
		reached[7][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[7][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 165: // STATE 18 - deadlock.plcCommented.pml:460 - [((B7==undef2))] (27:0:2 - 1)
		IfNotBlocked
		reached[7][18] = 1;
		if (!((now.B7==11)))
			continue;
		/* merge: B7 = sol84C(27, 19, 27) */
		reached[7][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 8;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(27, 23, 27) */
		reached[7][23] = 1;
		;
		/* merge: printf('>> end cool B7:   %d\\n',time)(27, 24, 27) */
		reached[7][24] = 1;
		Printf(">> end cool B7:   %d\n", now.time);
		/* merge: cycle = 1(27, 25, 27) */
		reached[7][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[7][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 166: // STATE 21 - deadlock.plcCommented.pml:461 - [assert(0)] (0:27:1 - 1)
		IfNotBlocked
		reached[7][21] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(27, 23, 27) */
		reached[7][23] = 1;
		;
		/* merge: printf('>> end cool B7:   %d\\n',time)(27, 24, 27) */
		reached[7][24] = 1;
		Printf(">> end cool B7:   %d\n", now.time);
		/* merge: cycle = 1(27, 25, 27) */
		reached[7][25] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[7][28] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 167: // STATE 24 - deadlock.plcCommented.pml:463 - [printf('>> end cool B7:   %d\\n',time)] (0:27:1 - 4)
		IfNotBlocked
		reached[7][24] = 1;
		Printf(">> end cool B7:   %d\n", now.time);
		/* merge: cycle = 1(27, 25, 27) */
		reached[7][25] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[7][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 168: // STATE 30 - deadlock.plcCommented.pml:467 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[7][30] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Cool6 */
	case 169: // STATE 1 - deadlock.plcCommented.pml:424 - [(((cycle==0)&&v29))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][1] = 1;
		if (!(((((int)now.cycle)==0)&&((int)now.v29))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 2 - deadlock.plcCommented.pml:426 - [((B6==water28H))] (26:0:3 - 1)
		IfNotBlocked
		reached[6][2] = 1;
		if (!((now.B6==3)))
			continue;
		/* merge: B6 = undef1(26, 3, 26) */
		reached[6][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 12;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: tC6 = (time+30)(26, 4, 26) */
		reached[6][4] = 1;
		(trpt+1)->bup.ovals[1] = now.tC6;
		now.tC6 = (now.time+30);
#ifdef VAR_RANGES
		logval("tC6", now.tC6);
#endif
		;
		/* merge: .(goto)(26, 11, 26) */
		reached[6][11] = 1;
		;
		/* merge: printf('>> start cool B6:   %d\\n',time)(26, 12, 26) */
		reached[6][12] = 1;
		Printf(">> start cool B6:   %d\n", now.time);
		/* merge: cycle = 1(26, 13, 26) */
		reached[6][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 171: // STATE 5 - deadlock.plcCommented.pml:427 - [((B6==water56H))] (26:0:3 - 1)
		IfNotBlocked
		reached[6][5] = 1;
		if (!((now.B6==1)))
			continue;
		/* merge: B6 = undef2(26, 6, 26) */
		reached[6][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 11;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: tC6 = (time+60)(26, 7, 26) */
		reached[6][7] = 1;
		(trpt+1)->bup.ovals[1] = now.tC6;
		now.tC6 = (now.time+60);
#ifdef VAR_RANGES
		logval("tC6", now.tC6);
#endif
		;
		/* merge: .(goto)(26, 11, 26) */
		reached[6][11] = 1;
		;
		/* merge: printf('>> start cool B6:   %d\\n',time)(26, 12, 26) */
		reached[6][12] = 1;
		Printf(">> start cool B6:   %d\n", now.time);
		/* merge: cycle = 1(26, 13, 26) */
		reached[6][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 172: // STATE 9 - deadlock.plcCommented.pml:428 - [assert(0)] (0:26:1 - 1)
		IfNotBlocked
		reached[6][9] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(26, 11, 26) */
		reached[6][11] = 1;
		;
		/* merge: printf('>> start cool B6:   %d\\n',time)(26, 12, 26) */
		reached[6][12] = 1;
		Printf(">> start cool B6:   %d\n", now.time);
		/* merge: cycle = 1(26, 13, 26) */
		reached[6][13] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 173: // STATE 12 - deadlock.plcCommented.pml:430 - [printf('>> start cool B6:   %d\\n',time)] (0:26:1 - 4)
		IfNotBlocked
		reached[6][12] = 1;
		Printf(">> start cool B6:   %d\n", now.time);
		/* merge: cycle = 1(26, 13, 26) */
		reached[6][13] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 174: // STATE 15 - deadlock.plcCommented.pml:433 - [((((time==tC6)&&(cycle==0))&&v29))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][15] = 1;
		if (!((((now.time==now.tC6)&&(((int)now.cycle)==0))&&((int)now.v29))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 16 - deadlock.plcCommented.pml:435 - [((B6==undef1))] (27:0:2 - 1)
		IfNotBlocked
		reached[6][16] = 1;
		if (!((now.B6==12)))
			continue;
		/* merge: B6 = water28C(27, 17, 27) */
		reached[6][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 4;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(27, 23, 27) */
		reached[6][23] = 1;
		;
		/* merge: printf('>> end cool B6:   %d\\n',time)(27, 24, 27) */
		reached[6][24] = 1;
		Printf(">> end cool B6:   %d\n", now.time);
		/* merge: cycle = 1(27, 25, 27) */
		reached[6][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[6][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 176: // STATE 18 - deadlock.plcCommented.pml:436 - [((B6==undef2))] (27:0:2 - 1)
		IfNotBlocked
		reached[6][18] = 1;
		if (!((now.B6==11)))
			continue;
		/* merge: B6 = water56C(27, 19, 27) */
		reached[6][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 2;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(27, 23, 27) */
		reached[6][23] = 1;
		;
		/* merge: printf('>> end cool B6:   %d\\n',time)(27, 24, 27) */
		reached[6][24] = 1;
		Printf(">> end cool B6:   %d\n", now.time);
		/* merge: cycle = 1(27, 25, 27) */
		reached[6][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[6][28] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 177: // STATE 21 - deadlock.plcCommented.pml:437 - [assert(0)] (0:27:1 - 1)
		IfNotBlocked
		reached[6][21] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(27, 23, 27) */
		reached[6][23] = 1;
		;
		/* merge: printf('>> end cool B6:   %d\\n',time)(27, 24, 27) */
		reached[6][24] = 1;
		Printf(">> end cool B6:   %d\n", now.time);
		/* merge: cycle = 1(27, 25, 27) */
		reached[6][25] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[6][28] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 178: // STATE 24 - deadlock.plcCommented.pml:439 - [printf('>> end cool B6:   %d\\n',time)] (0:27:1 - 4)
		IfNotBlocked
		reached[6][24] = 1;
		Printf(">> end cool B6:   %d\n", now.time);
		/* merge: cycle = 1(27, 25, 27) */
		reached[6][25] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[6][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 179: // STATE 30 - deadlock.plcCommented.pml:443 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[6][30] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B5toB7 */
	case 180: // STATE 1 - deadlock.plcCommented.pml:390 - [((((cycle==0)&&(B5!=cempty))&&v15))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		if (!((((((int)now.cycle)==0)&&(now.B5!=13))&&((int)now.v15))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 2 - deadlock.plcCommented.pml:392 - [((B5==sol42H))] (16:0:1 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!((now.B5==9)))
			continue;
		/* merge: B5 = undef1(0, 3, 16) */
		reached[5][3] = 1;
		(trpt+1)->bup.oval = now.B5;
		now.B5 = 12;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(0, 7, 16) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 182: // STATE 5 - deadlock.plcCommented.pml:393 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[5][5] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 8 - deadlock.plcCommented.pml:396 - [((B7==cempty))] (39:0:3 - 1)
		IfNotBlocked
		reached[5][8] = 1;
		if (!((now.B7==13)))
			continue;
		/* merge: B7 = undef1(39, 9, 39) */
		reached[5][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 12;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(39, 17, 39) */
		reached[5][17] = 1;
		;
		/* merge: printf('>> start B5 to B7:   %d\\n',time)(39, 18, 39) */
		reached[5][18] = 1;
		Printf(">> start B5 to B7:   %d\n", now.time);
		/* merge: tB5B7 = (time+28)(39, 19, 39) */
		reached[5][19] = 1;
		(trpt+1)->bup.ovals[1] = now.tB5B7;
		now.tB5B7 = (now.time+28);
#ifdef VAR_RANGES
		logval("tB5B7", now.tB5B7);
#endif
		;
		/* merge: cycle = 1(39, 20, 39) */
		reached[5][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 184: // STATE 10 - deadlock.plcCommented.pml:397 - [((B7==sol42H))] (39:0:3 - 1)
		IfNotBlocked
		reached[5][10] = 1;
		if (!((now.B7==9)))
			continue;
		/* merge: B7 = undef2(39, 11, 39) */
		reached[5][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 11;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(39, 17, 39) */
		reached[5][17] = 1;
		;
		/* merge: printf('>> start B5 to B7:   %d\\n',time)(39, 18, 39) */
		reached[5][18] = 1;
		Printf(">> start B5 to B7:   %d\n", now.time);
		/* merge: tB5B7 = (time+28)(39, 19, 39) */
		reached[5][19] = 1;
		(trpt+1)->bup.ovals[1] = now.tB5B7;
		now.tB5B7 = (now.time+28);
#ifdef VAR_RANGES
		logval("tB5B7", now.tB5B7);
#endif
		;
		/* merge: cycle = 1(39, 20, 39) */
		reached[5][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 185: // STATE 12 - deadlock.plcCommented.pml:398 - [((B7==sol42C))] (39:0:3 - 1)
		IfNotBlocked
		reached[5][12] = 1;
		if (!((now.B7==10)))
			continue;
		/* merge: B7 = undef2(39, 13, 39) */
		reached[5][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 11;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(39, 17, 39) */
		reached[5][17] = 1;
		;
		/* merge: printf('>> start B5 to B7:   %d\\n',time)(39, 18, 39) */
		reached[5][18] = 1;
		Printf(">> start B5 to B7:   %d\n", now.time);
		/* merge: tB5B7 = (time+28)(39, 19, 39) */
		reached[5][19] = 1;
		(trpt+1)->bup.ovals[1] = now.tB5B7;
		now.tB5B7 = (now.time+28);
#ifdef VAR_RANGES
		logval("tB5B7", now.tB5B7);
#endif
		;
		/* merge: cycle = 1(39, 20, 39) */
		reached[5][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 186: // STATE 15 - deadlock.plcCommented.pml:399 - [assert(0)] (0:39:2 - 1)
		IfNotBlocked
		reached[5][15] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(39, 17, 39) */
		reached[5][17] = 1;
		;
		/* merge: printf('>> start B5 to B7:   %d\\n',time)(39, 18, 39) */
		reached[5][18] = 1;
		Printf(">> start B5 to B7:   %d\n", now.time);
		/* merge: tB5B7 = (time+28)(39, 19, 39) */
		reached[5][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tB5B7;
		now.tB5B7 = (now.time+28);
#ifdef VAR_RANGES
		logval("tB5B7", now.tB5B7);
#endif
		;
		/* merge: cycle = 1(39, 20, 39) */
		reached[5][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 187: // STATE 18 - deadlock.plcCommented.pml:401 - [printf('>> start B5 to B7:   %d\\n',time)] (0:39:2 - 5)
		IfNotBlocked
		reached[5][18] = 1;
		Printf(">> start B5 to B7:   %d\n", now.time);
		/* merge: tB5B7 = (time+28)(39, 19, 39) */
		reached[5][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tB5B7;
		now.tB5B7 = (now.time+28);
#ifdef VAR_RANGES
		logval("tB5B7", now.tB5B7);
#endif
		;
		/* merge: cycle = 1(39, 20, 39) */
		reached[5][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 188: // STATE 22 - deadlock.plcCommented.pml:405 - [((((time==tB5B7)&&(cycle==0))&&v15))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][22] = 1;
		if (!((((now.time==now.tB5B7)&&(((int)now.cycle)==0))&&((int)now.v15))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 23 - deadlock.plcCommented.pml:407 - [((B5==undef1))] (35:0:1 - 1)
		IfNotBlocked
		reached[5][23] = 1;
		if (!((now.B5==12)))
			continue;
		/* merge: B5 = cempty(0, 24, 35) */
		reached[5][24] = 1;
		(trpt+1)->bup.oval = now.B5;
		now.B5 = 13;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(0, 28, 35) */
		reached[5][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 190: // STATE 26 - deadlock.plcCommented.pml:408 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[5][26] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 29 - deadlock.plcCommented.pml:411 - [((B7==undef1))] (40:0:2 - 1)
		IfNotBlocked
		reached[5][29] = 1;
		if (!((now.B7==12)))
			continue;
		/* merge: B7 = sol42H(40, 30, 40) */
		reached[5][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 9;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(40, 36, 40) */
		reached[5][36] = 1;
		;
		/* merge: printf('>> end B5 to B7:   %d\\n',time)(40, 37, 40) */
		reached[5][37] = 1;
		Printf(">> end B5 to B7:   %d\n", now.time);
		/* merge: cycle = 1(40, 38, 40) */
		reached[5][38] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[5][41] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 192: // STATE 31 - deadlock.plcCommented.pml:412 - [((B7==undef2))] (40:0:2 - 1)
		IfNotBlocked
		reached[5][31] = 1;
		if (!((now.B7==11)))
			continue;
		/* merge: B7 = sol84H(40, 32, 40) */
		reached[5][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B7;
		now.B7 = 7;
#ifdef VAR_RANGES
		logval("B7", now.B7);
#endif
		;
		/* merge: .(goto)(40, 36, 40) */
		reached[5][36] = 1;
		;
		/* merge: printf('>> end B5 to B7:   %d\\n',time)(40, 37, 40) */
		reached[5][37] = 1;
		Printf(">> end B5 to B7:   %d\n", now.time);
		/* merge: cycle = 1(40, 38, 40) */
		reached[5][38] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[5][41] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 193: // STATE 34 - deadlock.plcCommented.pml:413 - [assert(0)] (0:40:1 - 1)
		IfNotBlocked
		reached[5][34] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(40, 36, 40) */
		reached[5][36] = 1;
		;
		/* merge: printf('>> end B5 to B7:   %d\\n',time)(40, 37, 40) */
		reached[5][37] = 1;
		Printf(">> end B5 to B7:   %d\n", now.time);
		/* merge: cycle = 1(40, 38, 40) */
		reached[5][38] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[5][41] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 194: // STATE 37 - deadlock.plcCommented.pml:415 - [printf('>> end B5 to B7:   %d\\n',time)] (0:40:1 - 4)
		IfNotBlocked
		reached[5][37] = 1;
		Printf(">> end B5 to B7:   %d\n", now.time);
		/* merge: cycle = 1(40, 38, 40) */
		reached[5][38] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[5][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 195: // STATE 43 - deadlock.plcCommented.pml:419 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][43] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Heat5 */
	case 196: // STATE 1 - deadlock.plcCommented.pml:350 - [(((cycle==0)&&heat))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(((((int)now.cycle)==0)&&((int)now.heat))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 2 - deadlock.plcCommented.pml:352 - [((B5==sol70C))] (21:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((now.B5==6)))
			continue;
		/* merge: B5 = undef1(0, 3, 21) */
		reached[4][3] = 1;
		(trpt+1)->bup.oval = now.B5;
		now.B5 = 12;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(0, 7, 21) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 198: // STATE 5 - deadlock.plcCommented.pml:353 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 8 - deadlock.plcCommented.pml:356 - [(v13)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		if (!(((int)now.v13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 9 - deadlock.plcCommented.pml:357 - [((B6==cempty))] (49:0:3 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		if (!((now.B6==13)))
			continue;
		/* merge: B6 = undef1(49, 10, 49) */
		reached[4][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 12;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(49, 18, 49) */
		reached[4][18] = 1;
		;
		/* merge: .(goto)(49, 22, 49) */
		reached[4][22] = 1;
		;
		/* merge: printf('>> start heat B5:   %d\\n',time)(49, 23, 49) */
		reached[4][23] = 1;
		Printf(">> start heat B5:   %d\n", now.time);
		/* merge: tH = (time+110)(49, 24, 49) */
		reached[4][24] = 1;
		(trpt+1)->bup.ovals[1] = now.tH;
		now.tH = (now.time+110);
#ifdef VAR_RANGES
		logval("tH", now.tH);
#endif
		;
		/* merge: cycle = 1(49, 25, 49) */
		reached[4][25] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 201: // STATE 11 - deadlock.plcCommented.pml:358 - [((B6==water28H))] (49:0:3 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		if (!((now.B6==3)))
			continue;
		/* merge: B6 = undef2(49, 12, 49) */
		reached[4][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 11;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(49, 18, 49) */
		reached[4][18] = 1;
		;
		/* merge: .(goto)(49, 22, 49) */
		reached[4][22] = 1;
		;
		/* merge: printf('>> start heat B5:   %d\\n',time)(49, 23, 49) */
		reached[4][23] = 1;
		Printf(">> start heat B5:   %d\n", now.time);
		/* merge: tH = (time+110)(49, 24, 49) */
		reached[4][24] = 1;
		(trpt+1)->bup.ovals[1] = now.tH;
		now.tH = (now.time+110);
#ifdef VAR_RANGES
		logval("tH", now.tH);
#endif
		;
		/* merge: cycle = 1(49, 25, 49) */
		reached[4][25] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 202: // STATE 13 - deadlock.plcCommented.pml:359 - [((B6==water28C))] (49:0:3 - 1)
		IfNotBlocked
		reached[4][13] = 1;
		if (!((now.B6==4)))
			continue;
		/* merge: B6 = undef2(49, 14, 49) */
		reached[4][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 11;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(49, 18, 49) */
		reached[4][18] = 1;
		;
		/* merge: .(goto)(49, 22, 49) */
		reached[4][22] = 1;
		;
		/* merge: printf('>> start heat B5:   %d\\n',time)(49, 23, 49) */
		reached[4][23] = 1;
		Printf(">> start heat B5:   %d\n", now.time);
		/* merge: tH = (time+110)(49, 24, 49) */
		reached[4][24] = 1;
		(trpt+1)->bup.ovals[1] = now.tH;
		now.tH = (now.time+110);
#ifdef VAR_RANGES
		logval("tH", now.tH);
#endif
		;
		/* merge: cycle = 1(49, 25, 49) */
		reached[4][25] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 203: // STATE 16 - deadlock.plcCommented.pml:360 - [assert(0)] (0:49:2 - 1)
		IfNotBlocked
		reached[4][16] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(49, 18, 49) */
		reached[4][18] = 1;
		;
		/* merge: .(goto)(49, 22, 49) */
		reached[4][22] = 1;
		;
		/* merge: printf('>> start heat B5:   %d\\n',time)(49, 23, 49) */
		reached[4][23] = 1;
		Printf(">> start heat B5:   %d\n", now.time);
		/* merge: tH = (time+110)(49, 24, 49) */
		reached[4][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tH;
		now.tH = (now.time+110);
#ifdef VAR_RANGES
		logval("tH", now.tH);
#endif
		;
		/* merge: cycle = 1(49, 25, 49) */
		reached[4][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 204: // STATE 20 - deadlock.plcCommented.pml:362 - [(1)] (49:0:2 - 1)
		IfNotBlocked
		reached[4][20] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(49, 22, 49) */
		reached[4][22] = 1;
		;
		/* merge: printf('>> start heat B5:   %d\\n',time)(49, 23, 49) */
		reached[4][23] = 1;
		Printf(">> start heat B5:   %d\n", now.time);
		/* merge: tH = (time+110)(49, 24, 49) */
		reached[4][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tH;
		now.tH = (now.time+110);
#ifdef VAR_RANGES
		logval("tH", now.tH);
#endif
		;
		/* merge: cycle = 1(49, 25, 49) */
		reached[4][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 205: // STATE 23 - deadlock.plcCommented.pml:364 - [printf('>> start heat B5:   %d\\n',time)] (0:49:2 - 7)
		IfNotBlocked
		reached[4][23] = 1;
		Printf(">> start heat B5:   %d\n", now.time);
		/* merge: tH = (time+110)(49, 24, 49) */
		reached[4][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tH;
		now.tH = (now.time+110);
#ifdef VAR_RANGES
		logval("tH", now.tH);
#endif
		;
		/* merge: cycle = 1(49, 25, 49) */
		reached[4][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 206: // STATE 27 - deadlock.plcCommented.pml:368 - [((((time==tH)&&(cycle==0))&&heat))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][27] = 1;
		if (!((((now.time==now.tH)&&(((int)now.cycle)==0))&&((int)now.heat))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 28 - deadlock.plcCommented.pml:370 - [((B5==undef1))] (45:0:1 - 1)
		IfNotBlocked
		reached[4][28] = 1;
		if (!((now.B5==12)))
			continue;
		/* merge: B5 = sol42H(0, 29, 45) */
		reached[4][29] = 1;
		(trpt+1)->bup.oval = now.B5;
		now.B5 = 9;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(0, 33, 45) */
		reached[4][33] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 208: // STATE 31 - deadlock.plcCommented.pml:371 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 34 - deadlock.plcCommented.pml:374 - [(v13)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][34] = 1;
		if (!(((int)now.v13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 35 - deadlock.plcCommented.pml:375 - [((B6==undef1))] (50:0:2 - 1)
		IfNotBlocked
		reached[4][35] = 1;
		if (!((now.B6==12)))
			continue;
		/* merge: B6 = water28H(50, 36, 50) */
		reached[4][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 3;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(50, 42, 50) */
		reached[4][42] = 1;
		;
		/* merge: .(goto)(50, 46, 50) */
		reached[4][46] = 1;
		;
		/* merge: printf('>> end heat B5:   %d\\n',time)(50, 47, 50) */
		reached[4][47] = 1;
		Printf(">> end heat B5:   %d\n", now.time);
		/* merge: cycle = 1(50, 48, 50) */
		reached[4][48] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 51, 50) */
		reached[4][51] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 211: // STATE 37 - deadlock.plcCommented.pml:376 - [((B6==undef2))] (50:0:2 - 1)
		IfNotBlocked
		reached[4][37] = 1;
		if (!((now.B6==11)))
			continue;
		/* merge: B6 = water56H(50, 38, 50) */
		reached[4][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B6;
		now.B6 = 1;
#ifdef VAR_RANGES
		logval("B6", now.B6);
#endif
		;
		/* merge: .(goto)(50, 42, 50) */
		reached[4][42] = 1;
		;
		/* merge: .(goto)(50, 46, 50) */
		reached[4][46] = 1;
		;
		/* merge: printf('>> end heat B5:   %d\\n',time)(50, 47, 50) */
		reached[4][47] = 1;
		Printf(">> end heat B5:   %d\n", now.time);
		/* merge: cycle = 1(50, 48, 50) */
		reached[4][48] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 51, 50) */
		reached[4][51] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 212: // STATE 40 - deadlock.plcCommented.pml:377 - [assert(0)] (0:50:1 - 1)
		IfNotBlocked
		reached[4][40] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(50, 42, 50) */
		reached[4][42] = 1;
		;
		/* merge: .(goto)(50, 46, 50) */
		reached[4][46] = 1;
		;
		/* merge: printf('>> end heat B5:   %d\\n',time)(50, 47, 50) */
		reached[4][47] = 1;
		Printf(">> end heat B5:   %d\n", now.time);
		/* merge: cycle = 1(50, 48, 50) */
		reached[4][48] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 51, 50) */
		reached[4][51] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 213: // STATE 44 - deadlock.plcCommented.pml:379 - [(1)] (50:0:1 - 1)
		IfNotBlocked
		reached[4][44] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(50, 46, 50) */
		reached[4][46] = 1;
		;
		/* merge: printf('>> end heat B5:   %d\\n',time)(50, 47, 50) */
		reached[4][47] = 1;
		Printf(">> end heat B5:   %d\n", now.time);
		/* merge: cycle = 1(50, 48, 50) */
		reached[4][48] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 51, 50) */
		reached[4][51] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 214: // STATE 47 - deadlock.plcCommented.pml:381 - [printf('>> end heat B5:   %d\\n',time)] (0:50:1 - 6)
		IfNotBlocked
		reached[4][47] = 1;
		Printf(">> end heat B5:   %d\n", now.time);
		/* merge: cycle = 1(50, 48, 50) */
		reached[4][48] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 51, 50) */
		reached[4][51] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 215: // STATE 53 - deadlock.plcCommented.pml:385 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][53] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B4toB5 */
	case 216: // STATE 1 - deadlock.plcCommented.pml:317 - [((((cycle==0)&&(B4!=cempty))&&v12))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!((((((int)now.cycle)==0)&&(now.B4!=13))&&((int)now.v12))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 2 - deadlock.plcCommented.pml:319 - [((B5==cempty))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!((now.B5==13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 3 - deadlock.plcCommented.pml:321 - [((B4==sol70C))] (33:0:4 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!((now.B4==6)))
			continue;
		/* merge: B4 = undef1(33, 4, 33) */
		reached[3][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.B4;
		now.B4 = 12;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		/* merge: .(goto)(33, 8, 33) */
		reached[3][8] = 1;
		;
		/* merge: B5 = undef1(33, 9, 33) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals[1] = now.B5;
		now.B5 = 12;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(33, 13, 33) */
		reached[3][13] = 1;
		;
		/* merge: printf('>> start B4 to B5:   %d\\n',time)(33, 14, 33) */
		reached[3][14] = 1;
		Printf(">> start B4 to B5:   %d\n", now.time);
		/* merge: tB4B5 = (time+35)(33, 15, 33) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals[2] = now.tB4B5;
		now.tB4B5 = (now.time+35);
#ifdef VAR_RANGES
		logval("tB4B5", now.tB4B5);
#endif
		;
		/* merge: cycle = 1(33, 16, 33) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 219: // STATE 5 - deadlock.plcCommented.pml:322 - [((B4==sol140C))] (33:0:4 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!((now.B4==5)))
			continue;
		/* merge: B4 = undef2(33, 6, 33) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.B4;
		now.B4 = 11;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		/* merge: .(goto)(33, 8, 33) */
		reached[3][8] = 1;
		;
		/* merge: B5 = undef1(33, 9, 33) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals[1] = now.B5;
		now.B5 = 12;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(33, 13, 33) */
		reached[3][13] = 1;
		;
		/* merge: printf('>> start B4 to B5:   %d\\n',time)(33, 14, 33) */
		reached[3][14] = 1;
		Printf(">> start B4 to B5:   %d\n", now.time);
		/* merge: tB4B5 = (time+35)(33, 15, 33) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals[2] = now.tB4B5;
		now.tB4B5 = (now.time+35);
#ifdef VAR_RANGES
		logval("tB4B5", now.tB4B5);
#endif
		;
		/* merge: cycle = 1(33, 16, 33) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 220: // STATE 9 - deadlock.plcCommented.pml:324 - [B5 = undef1] (0:33:3 - 3)
		IfNotBlocked
		reached[3][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B5;
		now.B5 = 12;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(33, 13, 33) */
		reached[3][13] = 1;
		;
		/* merge: printf('>> start B4 to B5:   %d\\n',time)(33, 14, 33) */
		reached[3][14] = 1;
		Printf(">> start B4 to B5:   %d\n", now.time);
		/* merge: tB4B5 = (time+35)(33, 15, 33) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals[1] = now.tB4B5;
		now.tB4B5 = (now.time+35);
#ifdef VAR_RANGES
		logval("tB4B5", now.tB4B5);
#endif
		;
		/* merge: cycle = 1(33, 16, 33) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 221: // STATE 11 - deadlock.plcCommented.pml:325 - [assert(0)] (0:33:2 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(33, 13, 33) */
		reached[3][13] = 1;
		;
		/* merge: printf('>> start B4 to B5:   %d\\n',time)(33, 14, 33) */
		reached[3][14] = 1;
		Printf(">> start B4 to B5:   %d\n", now.time);
		/* merge: tB4B5 = (time+35)(33, 15, 33) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tB4B5;
		now.tB4B5 = (now.time+35);
#ifdef VAR_RANGES
		logval("tB4B5", now.tB4B5);
#endif
		;
		/* merge: cycle = 1(33, 16, 33) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 222: // STATE 14 - deadlock.plcCommented.pml:327 - [printf('>> start B4 to B5:   %d\\n',time)] (0:33:2 - 3)
		IfNotBlocked
		reached[3][14] = 1;
		Printf(">> start B4 to B5:   %d\n", now.time);
		/* merge: tB4B5 = (time+35)(33, 15, 33) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tB4B5;
		now.tB4B5 = (now.time+35);
#ifdef VAR_RANGES
		logval("tB4B5", now.tB4B5);
#endif
		;
		/* merge: cycle = 1(33, 16, 33) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 223: // STATE 18 - deadlock.plcCommented.pml:331 - [((((time==tB4B5)&&(cycle==0))&&v12))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		if (!((((now.time==now.tB4B5)&&(((int)now.cycle)==0))&&((int)now.v12))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 19 - deadlock.plcCommented.pml:333 - [((B5==undef1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][19] = 1;
		if (!((now.B5==12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 20 - deadlock.plcCommented.pml:335 - [((B4==undef1))] (34:0:3 - 1)
		IfNotBlocked
		reached[3][20] = 1;
		if (!((now.B4==12)))
			continue;
		/* merge: B4 = cempty(34, 21, 34) */
		reached[3][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B4;
		now.B4 = 13;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		/* merge: .(goto)(34, 25, 34) */
		reached[3][25] = 1;
		;
		/* merge: B5 = sol70C(34, 26, 34) */
		reached[3][26] = 1;
		(trpt+1)->bup.ovals[1] = now.B5;
		now.B5 = 6;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(34, 30, 34) */
		reached[3][30] = 1;
		;
		/* merge: printf('>> end B4 to B5:   %d\\n',time)(34, 31, 34) */
		reached[3][31] = 1;
		Printf(">> end B4 to B5:   %d\n", now.time);
		/* merge: cycle = 1(34, 32, 34) */
		reached[3][32] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 226: // STATE 22 - deadlock.plcCommented.pml:336 - [((B4==undef2))] (34:0:3 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		if (!((now.B4==11)))
			continue;
		/* merge: B4 = sol70C(34, 23, 34) */
		reached[3][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B4;
		now.B4 = 6;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		/* merge: .(goto)(34, 25, 34) */
		reached[3][25] = 1;
		;
		/* merge: B5 = sol70C(34, 26, 34) */
		reached[3][26] = 1;
		(trpt+1)->bup.ovals[1] = now.B5;
		now.B5 = 6;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(34, 30, 34) */
		reached[3][30] = 1;
		;
		/* merge: printf('>> end B4 to B5:   %d\\n',time)(34, 31, 34) */
		reached[3][31] = 1;
		Printf(">> end B4 to B5:   %d\n", now.time);
		/* merge: cycle = 1(34, 32, 34) */
		reached[3][32] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 227: // STATE 26 - deadlock.plcCommented.pml:338 - [B5 = sol70C] (0:34:2 - 3)
		IfNotBlocked
		reached[3][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B5;
		now.B5 = 6;
#ifdef VAR_RANGES
		logval("B5", now.B5);
#endif
		;
		/* merge: .(goto)(34, 30, 34) */
		reached[3][30] = 1;
		;
		/* merge: printf('>> end B4 to B5:   %d\\n',time)(34, 31, 34) */
		reached[3][31] = 1;
		Printf(">> end B4 to B5:   %d\n", now.time);
		/* merge: cycle = 1(34, 32, 34) */
		reached[3][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 228: // STATE 28 - deadlock.plcCommented.pml:339 - [assert(0)] (0:34:1 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(34, 30, 34) */
		reached[3][30] = 1;
		;
		/* merge: printf('>> end B4 to B5:   %d\\n',time)(34, 31, 34) */
		reached[3][31] = 1;
		Printf(">> end B4 to B5:   %d\n", now.time);
		/* merge: cycle = 1(34, 32, 34) */
		reached[3][32] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 229: // STATE 31 - deadlock.plcCommented.pml:341 - [printf('>> end B4 to B5:   %d\\n',time)] (0:34:1 - 3)
		IfNotBlocked
		reached[3][31] = 1;
		Printf(">> end B4 to B5:   %d\n", now.time);
		/* merge: cycle = 1(34, 32, 34) */
		reached[3][32] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 230: // STATE 37 - deadlock.plcCommented.pml:345 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B3toB4 */
	case 231: // STATE 1 - deadlock.plcCommented.pml:281 - [((((cycle==0)&&(B3==sol70C))&&v11))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((((((int)now.cycle)==0)&&(now.B3==6))&&((int)now.v11))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 2 - deadlock.plcCommented.pml:283 - [((B4!=sol140C))] (10:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.B4!=5)))
			continue;
		/* merge: B3 = undef1(0, 3, 10) */
		reached[2][3] = 1;
		(trpt+1)->bup.oval = now.B3;
		now.B3 = 12;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 233: // STATE 4 - deadlock.plcCommented.pml:286 - [((B4==cempty))] (38:0:4 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!((now.B4==13)))
			continue;
		/* merge: B4 = undef1(38, 5, 38) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.B4;
		now.B4 = 12;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		/* merge: .(goto)(38, 11, 38) */
		reached[2][11] = 1;
		;
		/* merge: .(goto)(38, 15, 38) */
		reached[2][15] = 1;
		;
		/* merge: printf('>> start B3 to B4:   %d\\n',time)(38, 16, 38) */
		reached[2][16] = 1;
		Printf(">> start B3 to B4:   %d\n", now.time);
		/* merge: tB3B4 = (time+7)(38, 17, 38) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals[1] = now.tB3B4;
		now.tB3B4 = (now.time+7);
#ifdef VAR_RANGES
		logval("tB3B4", now.tB3B4);
#endif
		;
		/* merge: batches = (batches+1)(38, 18, 38) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals[2] = now.batches;
		now.batches = (now.batches+1);
#ifdef VAR_RANGES
		logval("batches", now.batches);
#endif
		;
		/* merge: cycle = 1(38, 19, 38) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 234: // STATE 6 - deadlock.plcCommented.pml:287 - [((B4==sol70C))] (38:0:4 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (!((now.B4==6)))
			continue;
		/* merge: B4 = undef2(38, 7, 38) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.B4;
		now.B4 = 11;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		/* merge: .(goto)(38, 11, 38) */
		reached[2][11] = 1;
		;
		/* merge: .(goto)(38, 15, 38) */
		reached[2][15] = 1;
		;
		/* merge: printf('>> start B3 to B4:   %d\\n',time)(38, 16, 38) */
		reached[2][16] = 1;
		Printf(">> start B3 to B4:   %d\n", now.time);
		/* merge: tB3B4 = (time+7)(38, 17, 38) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals[1] = now.tB3B4;
		now.tB3B4 = (now.time+7);
#ifdef VAR_RANGES
		logval("tB3B4", now.tB3B4);
#endif
		;
		/* merge: batches = (batches+1)(38, 18, 38) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals[2] = now.batches;
		now.batches = (now.batches+1);
#ifdef VAR_RANGES
		logval("batches", now.batches);
#endif
		;
		/* merge: cycle = 1(38, 19, 38) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 235: // STATE 9 - deadlock.plcCommented.pml:288 - [assert(0)] (0:38:3 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(38, 11, 38) */
		reached[2][11] = 1;
		;
		/* merge: .(goto)(38, 15, 38) */
		reached[2][15] = 1;
		;
		/* merge: printf('>> start B3 to B4:   %d\\n',time)(38, 16, 38) */
		reached[2][16] = 1;
		Printf(">> start B3 to B4:   %d\n", now.time);
		/* merge: tB3B4 = (time+7)(38, 17, 38) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.tB3B4;
		now.tB3B4 = (now.time+7);
#ifdef VAR_RANGES
		logval("tB3B4", now.tB3B4);
#endif
		;
		/* merge: batches = (batches+1)(38, 18, 38) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals[1] = now.batches;
		now.batches = (now.batches+1);
#ifdef VAR_RANGES
		logval("batches", now.batches);
#endif
		;
		/* merge: cycle = 1(38, 19, 38) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 236: // STATE 13 - deadlock.plcCommented.pml:290 - [assert(0)] (0:38:3 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(38, 15, 38) */
		reached[2][15] = 1;
		;
		/* merge: printf('>> start B3 to B4:   %d\\n',time)(38, 16, 38) */
		reached[2][16] = 1;
		Printf(">> start B3 to B4:   %d\n", now.time);
		/* merge: tB3B4 = (time+7)(38, 17, 38) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.tB3B4;
		now.tB3B4 = (now.time+7);
#ifdef VAR_RANGES
		logval("tB3B4", now.tB3B4);
#endif
		;
		/* merge: batches = (batches+1)(38, 18, 38) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals[1] = now.batches;
		now.batches = (now.batches+1);
#ifdef VAR_RANGES
		logval("batches", now.batches);
#endif
		;
		/* merge: cycle = 1(38, 19, 38) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 237: // STATE 16 - deadlock.plcCommented.pml:292 - [printf('>> start B3 to B4:   %d\\n',time)] (0:38:3 - 6)
		IfNotBlocked
		reached[2][16] = 1;
		Printf(">> start B3 to B4:   %d\n", now.time);
		/* merge: tB3B4 = (time+7)(38, 17, 38) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.tB3B4;
		now.tB3B4 = (now.time+7);
#ifdef VAR_RANGES
		logval("tB3B4", now.tB3B4);
#endif
		;
		/* merge: batches = (batches+1)(38, 18, 38) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals[1] = now.batches;
		now.batches = (now.batches+1);
#ifdef VAR_RANGES
		logval("batches", now.batches);
#endif
		;
		/* merge: cycle = 1(38, 19, 38) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 238: // STATE 21 - deadlock.plcCommented.pml:297 - [((((time==tB3B4)&&(cycle==0))&&v11))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		if (!((((now.time==now.tB3B4)&&(((int)now.cycle)==0))&&((int)now.v11))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 22 - deadlock.plcCommented.pml:299 - [((B4!=sol140C))] (30:0:1 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!((now.B4!=5)))
			continue;
		/* merge: B3 = cempty(0, 23, 30) */
		reached[2][23] = 1;
		(trpt+1)->bup.oval = now.B3;
		now.B3 = 13;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 240: // STATE 24 - deadlock.plcCommented.pml:302 - [((B4==undef1))] (39:0:2 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!((now.B4==12)))
			continue;
		/* merge: B4 = sol70C(39, 25, 39) */
		reached[2][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B4;
		now.B4 = 6;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		/* merge: .(goto)(39, 31, 39) */
		reached[2][31] = 1;
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: printf('>> end B3 to B4:   %d\\n',time)(39, 36, 39) */
		reached[2][36] = 1;
		Printf(">> end B3 to B4:   %d\n", now.time);
		/* merge: cycle = 1(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 241: // STATE 26 - deadlock.plcCommented.pml:303 - [((B4==undef2))] (39:0:2 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!((now.B4==11)))
			continue;
		/* merge: B4 = sol140C(39, 27, 39) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B4;
		now.B4 = 5;
#ifdef VAR_RANGES
		logval("B4", now.B4);
#endif
		;
		/* merge: .(goto)(39, 31, 39) */
		reached[2][31] = 1;
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: printf('>> end B3 to B4:   %d\\n',time)(39, 36, 39) */
		reached[2][36] = 1;
		Printf(">> end B3 to B4:   %d\n", now.time);
		/* merge: cycle = 1(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 242: // STATE 29 - deadlock.plcCommented.pml:304 - [assert(0)] (0:39:1 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(39, 31, 39) */
		reached[2][31] = 1;
		;
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: printf('>> end B3 to B4:   %d\\n',time)(39, 36, 39) */
		reached[2][36] = 1;
		Printf(">> end B3 to B4:   %d\n", now.time);
		/* merge: cycle = 1(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 243: // STATE 33 - deadlock.plcCommented.pml:306 - [assert(0)] (0:39:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(39, 35, 39) */
		reached[2][35] = 1;
		;
		/* merge: printf('>> end B3 to B4:   %d\\n',time)(39, 36, 39) */
		reached[2][36] = 1;
		Printf(">> end B3 to B4:   %d\n", now.time);
		/* merge: cycle = 1(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 244: // STATE 36 - deadlock.plcCommented.pml:308 - [printf('>> end B3 to B4:   %d\\n',time)] (0:39:1 - 6)
		IfNotBlocked
		reached[2][36] = 1;
		Printf(">> end B3 to B4:   %d\n", now.time);
		/* merge: cycle = 1(39, 37, 39) */
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 245: // STATE 42 - deadlock.plcCommented.pml:312 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B2toB3 */
	case 246: // STATE 1 - deadlock.plcCommented.pml:248 - [((((cycle==0)&&(B2!=cempty))&&v9))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((((int)now.cycle)==0)&&(now.B2!=13))&&((int)now.v9))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 2 - deadlock.plcCommented.pml:250 - [((B2==water28C))] (14:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.B2==4)))
			continue;
		/* merge: B2 = undef1(0, 3, 14) */
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.B2;
		now.B2 = 12;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		/* merge: .(goto)(0, 7, 14) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 248: // STATE 4 - deadlock.plcCommented.pml:251 - [((B2==water56C))] (14:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.B2==2)))
			continue;
		/* merge: B2 = undef2(0, 5, 14) */
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.B2;
		now.B2 = 11;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		/* merge: .(goto)(0, 7, 14) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 249: // STATE 8 - deadlock.plcCommented.pml:254 - [((B3==cempty))] (37:0:3 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((now.B3==13)))
			continue;
		/* merge: B3 = undef1(37, 9, 37) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B3;
		now.B3 = 12;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		/* merge: .(goto)(37, 15, 37) */
		reached[1][15] = 1;
		;
		/* merge: printf('>> start B2 to B3:   %d\\n',time)(37, 16, 37) */
		reached[1][16] = 1;
		Printf(">> start B2 to B3:   %d\n", now.time);
		/* merge: tB2B3 = (time+24)(37, 17, 37) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = now.tB2B3;
		now.tB2B3 = (now.time+24);
#ifdef VAR_RANGES
		logval("tB2B3", now.tB2B3);
#endif
		;
		/* merge: cycle = 1(37, 18, 37) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 250: // STATE 10 - deadlock.plcCommented.pml:255 - [(((B3==sol42C)&&mix))] (37:0:3 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(((now.B3==10)&&((int)now.mix))))
			continue;
		/* merge: B3 = undef2(37, 11, 37) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B3;
		now.B3 = 11;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		/* merge: .(goto)(37, 15, 37) */
		reached[1][15] = 1;
		;
		/* merge: printf('>> start B2 to B3:   %d\\n',time)(37, 16, 37) */
		reached[1][16] = 1;
		Printf(">> start B2 to B3:   %d\n", now.time);
		/* merge: tB2B3 = (time+24)(37, 17, 37) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = now.tB2B3;
		now.tB2B3 = (now.time+24);
#ifdef VAR_RANGES
		logval("tB2B3", now.tB2B3);
#endif
		;
		/* merge: cycle = 1(37, 18, 37) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 251: // STATE 13 - deadlock.plcCommented.pml:256 - [assert(0)] (0:37:2 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(37, 15, 37) */
		reached[1][15] = 1;
		;
		/* merge: printf('>> start B2 to B3:   %d\\n',time)(37, 16, 37) */
		reached[1][16] = 1;
		Printf(">> start B2 to B3:   %d\n", now.time);
		/* merge: tB2B3 = (time+24)(37, 17, 37) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tB2B3;
		now.tB2B3 = (now.time+24);
#ifdef VAR_RANGES
		logval("tB2B3", now.tB2B3);
#endif
		;
		/* merge: cycle = 1(37, 18, 37) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 252: // STATE 16 - deadlock.plcCommented.pml:258 - [printf('>> start B2 to B3:   %d\\n',time)] (0:37:2 - 4)
		IfNotBlocked
		reached[1][16] = 1;
		Printf(">> start B2 to B3:   %d\n", now.time);
		/* merge: tB2B3 = (time+24)(37, 17, 37) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tB2B3;
		now.tB2B3 = (now.time+24);
#ifdef VAR_RANGES
		logval("tB2B3", now.tB2B3);
#endif
		;
		/* merge: cycle = 1(37, 18, 37) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 253: // STATE 20 - deadlock.plcCommented.pml:262 - [((((time==tB2B3)&&(cycle==0))&&v9))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((((now.time==now.tB2B3)&&(((int)now.cycle)==0))&&((int)now.v9))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 21 - deadlock.plcCommented.pml:264 - [((B2==undef1))] (33:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((now.B2==12)))
			continue;
		/* merge: B2 = cempty(0, 22, 33) */
		reached[1][22] = 1;
		(trpt+1)->bup.oval = now.B2;
		now.B2 = 13;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		/* merge: .(goto)(0, 26, 33) */
		reached[1][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 255: // STATE 23 - deadlock.plcCommented.pml:265 - [((B2==undef2))] (33:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!((now.B2==11)))
			continue;
		/* merge: B2 = water28C(0, 24, 33) */
		reached[1][24] = 1;
		(trpt+1)->bup.oval = now.B2;
		now.B2 = 4;
#ifdef VAR_RANGES
		logval("B2", now.B2);
#endif
		;
		/* merge: .(goto)(0, 26, 33) */
		reached[1][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 256: // STATE 27 - deadlock.plcCommented.pml:268 - [((B3==undef1))] (38:0:2 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!((now.B3==12)))
			continue;
		/* merge: B3 = water28C(38, 28, 38) */
		reached[1][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B3;
		now.B3 = 4;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		/* merge: .(goto)(38, 34, 38) */
		reached[1][34] = 1;
		;
		/* merge: printf('>> end B2 to B3:   %d\\n',time)(38, 35, 38) */
		reached[1][35] = 1;
		Printf(">> end B2 to B3:   %d\n", now.time);
		/* merge: cycle = 1(38, 36, 38) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[1][39] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 257: // STATE 29 - deadlock.plcCommented.pml:269 - [(((B3==undef2)&&mix))] (38:0:2 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((now.B3==11)&&((int)now.mix))))
			continue;
		/* merge: B3 = sol70C(38, 30, 38) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B3;
		now.B3 = 6;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		/* merge: .(goto)(38, 34, 38) */
		reached[1][34] = 1;
		;
		/* merge: printf('>> end B2 to B3:   %d\\n',time)(38, 35, 38) */
		reached[1][35] = 1;
		Printf(">> end B2 to B3:   %d\n", now.time);
		/* merge: cycle = 1(38, 36, 38) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[1][39] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 258: // STATE 32 - deadlock.plcCommented.pml:270 - [assert(0)] (0:38:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(38, 34, 38) */
		reached[1][34] = 1;
		;
		/* merge: printf('>> end B2 to B3:   %d\\n',time)(38, 35, 38) */
		reached[1][35] = 1;
		Printf(">> end B2 to B3:   %d\n", now.time);
		/* merge: cycle = 1(38, 36, 38) */
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[1][39] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 259: // STATE 35 - deadlock.plcCommented.pml:272 - [printf('>> end B2 to B3:   %d\\n',time)] (0:38:1 - 4)
		IfNotBlocked
		reached[1][35] = 1;
		Printf(">> end B2 to B3:   %d\n", now.time);
		/* merge: cycle = 1(38, 36, 38) */
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[1][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 260: // STATE 41 - deadlock.plcCommented.pml:276 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B1toB3 */
	case 261: // STATE 1 - deadlock.plcCommented.pml:215 - [((((cycle==0)&&(B1!=cempty))&&v8))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((((int)now.cycle)==0)&&(now.B1!=13))&&((int)now.v8))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 2 - deadlock.plcCommented.pml:217 - [((B1==sol42C))] (14:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.B1==10)))
			continue;
		/* merge: B1 = undef1(0, 3, 14) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.B1;
		now.B1 = 12;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		/* merge: .(goto)(0, 7, 14) */
		reached[0][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 263: // STATE 4 - deadlock.plcCommented.pml:218 - [((B1==sol84C))] (14:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((now.B1==8)))
			continue;
		/* merge: B1 = undef2(0, 5, 14) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.B1;
		now.B1 = 11;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		/* merge: .(goto)(0, 7, 14) */
		reached[0][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 264: // STATE 8 - deadlock.plcCommented.pml:221 - [((B3==cempty))] (37:0:3 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((now.B3==13)))
			continue;
		/* merge: B3 = undef1(37, 9, 37) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B3;
		now.B3 = 12;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		/* merge: .(goto)(37, 15, 37) */
		reached[0][15] = 1;
		;
		/* merge: printf('>> start B1 to B3:   %d\\n',time)(37, 16, 37) */
		reached[0][16] = 1;
		Printf(">> start B1 to B3:   %d\n", now.time);
		/* merge: tB1B3 = (time+32)(37, 17, 37) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[1] = now.tB1B3;
		now.tB1B3 = (now.time+32);
#ifdef VAR_RANGES
		logval("tB1B3", now.tB1B3);
#endif
		;
		/* merge: cycle = 1(37, 18, 37) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 265: // STATE 10 - deadlock.plcCommented.pml:222 - [(((B3==water28C)&&mix))] (37:0:3 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(((now.B3==4)&&((int)now.mix))))
			continue;
		/* merge: B3 = undef2(37, 11, 37) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.B3;
		now.B3 = 11;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		/* merge: .(goto)(37, 15, 37) */
		reached[0][15] = 1;
		;
		/* merge: printf('>> start B1 to B3:   %d\\n',time)(37, 16, 37) */
		reached[0][16] = 1;
		Printf(">> start B1 to B3:   %d\n", now.time);
		/* merge: tB1B3 = (time+32)(37, 17, 37) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[1] = now.tB1B3;
		now.tB1B3 = (now.time+32);
#ifdef VAR_RANGES
		logval("tB1B3", now.tB1B3);
#endif
		;
		/* merge: cycle = 1(37, 18, 37) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 266: // STATE 13 - deadlock.plcCommented.pml:223 - [assert(0)] (0:37:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(37, 15, 37) */
		reached[0][15] = 1;
		;
		/* merge: printf('>> start B1 to B3:   %d\\n',time)(37, 16, 37) */
		reached[0][16] = 1;
		Printf(">> start B1 to B3:   %d\n", now.time);
		/* merge: tB1B3 = (time+32)(37, 17, 37) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tB1B3;
		now.tB1B3 = (now.time+32);
#ifdef VAR_RANGES
		logval("tB1B3", now.tB1B3);
#endif
		;
		/* merge: cycle = 1(37, 18, 37) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 267: // STATE 16 - deadlock.plcCommented.pml:225 - [printf('>> start B1 to B3:   %d\\n',time)] (0:37:2 - 4)
		IfNotBlocked
		reached[0][16] = 1;
		Printf(">> start B1 to B3:   %d\n", now.time);
		/* merge: tB1B3 = (time+32)(37, 17, 37) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.tB1B3;
		now.tB1B3 = (now.time+32);
#ifdef VAR_RANGES
		logval("tB1B3", now.tB1B3);
#endif
		;
		/* merge: cycle = 1(37, 18, 37) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 268: // STATE 20 - deadlock.plcCommented.pml:229 - [((((time==tB1B3)&&(cycle==0))&&v8))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((((now.time==now.tB1B3)&&(((int)now.cycle)==0))&&((int)now.v8))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 21 - deadlock.plcCommented.pml:231 - [((B1==undef1))] (33:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!((now.B1==12)))
			continue;
		/* merge: B1 = cempty(0, 22, 33) */
		reached[0][22] = 1;
		(trpt+1)->bup.oval = now.B1;
		now.B1 = 13;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		/* merge: .(goto)(0, 26, 33) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 270: // STATE 23 - deadlock.plcCommented.pml:232 - [((B1==undef2))] (33:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((now.B1==11)))
			continue;
		/* merge: B1 = sol42C(0, 24, 33) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.B1;
		now.B1 = 10;
#ifdef VAR_RANGES
		logval("B1", now.B1);
#endif
		;
		/* merge: .(goto)(0, 26, 33) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 271: // STATE 27 - deadlock.plcCommented.pml:235 - [((B3==undef1))] (38:0:2 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((now.B3==12)))
			continue;
		/* merge: B3 = sol42C(38, 28, 38) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B3;
		now.B3 = 10;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		/* merge: .(goto)(38, 34, 38) */
		reached[0][34] = 1;
		;
		/* merge: printf('>> end B1 to B3:   %d\\n',time)(38, 35, 38) */
		reached[0][35] = 1;
		Printf(">> end B1 to B3:   %d\n", now.time);
		/* merge: cycle = 1(38, 36, 38) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[0][39] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 272: // STATE 29 - deadlock.plcCommented.pml:236 - [(((B3==undef2)&&mix))] (38:0:2 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!(((now.B3==11)&&((int)now.mix))))
			continue;
		/* merge: B3 = sol70C(38, 30, 38) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.B3;
		now.B3 = 6;
#ifdef VAR_RANGES
		logval("B3", now.B3);
#endif
		;
		/* merge: .(goto)(38, 34, 38) */
		reached[0][34] = 1;
		;
		/* merge: printf('>> end B1 to B3:   %d\\n',time)(38, 35, 38) */
		reached[0][35] = 1;
		Printf(">> end B1 to B3:   %d\n", now.time);
		/* merge: cycle = 1(38, 36, 38) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[0][39] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 273: // STATE 32 - deadlock.plcCommented.pml:237 - [assert(0)] (0:38:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(38, 34, 38) */
		reached[0][34] = 1;
		;
		/* merge: printf('>> end B1 to B3:   %d\\n',time)(38, 35, 38) */
		reached[0][35] = 1;
		Printf(">> end B1 to B3:   %d\n", now.time);
		/* merge: cycle = 1(38, 36, 38) */
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[0][39] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 274: // STATE 35 - deadlock.plcCommented.pml:239 - [printf('>> end B1 to B3:   %d\\n',time)] (0:38:1 - 4)
		IfNotBlocked
		reached[0][35] = 1;
		Printf(">> end B1 to B3:   %d\n", now.time);
		/* merge: cycle = 1(38, 36, 38) */
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.cycle);
		now.cycle = 1;
#ifdef VAR_RANGES
		logval("cycle", ((int)now.cycle));
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[0][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 275: // STATE 41 - deadlock.plcCommented.pml:243 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

