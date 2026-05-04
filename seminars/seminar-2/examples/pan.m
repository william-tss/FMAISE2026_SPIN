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

		 /* CLAIM check_opt */
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [(!((cost>=1000)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!( !((now.cost>=1000))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:6 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC TSP */
	case 5: // STATE 1 - tsp8.pml:5 - [vv[0] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[0]);
		now.vv[0] = 1;
#ifdef VAR_RANGES
		logval("vv[0]", ((int)now.vv[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - tsp8.pml:9 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - tsp8.pml:9 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 5 - tsp8.pml:10 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 6 - tsp8.pml:10 - [cost = (cost+9)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+9);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - tsp8.pml:11 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - tsp8.pml:11 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 11 - tsp8.pml:12 - [(!(vv[4]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][11] = 1;
		if (!( !(((int)now.vv[4]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 12 - tsp8.pml:12 - [cost = (cost+5)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+5);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 14 - tsp8.pml:13 - [(!(vv[5]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		if (!( !(((int)now.vv[5]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 15 - tsp8.pml:13 - [cost = (cost+8)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 17 - tsp8.pml:14 - [(!(vv[6]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][17] = 1;
		if (!( !(((int)now.vv[6]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 18 - tsp8.pml:14 - [cost = (cost+4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 20 - tsp8.pml:15 - [(!(vv[7]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][20] = 1;
		if (!( !(((int)now.vv[7]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 21 - tsp8.pml:15 - [cost = (cost+6)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+6);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 26 - tsp8.pml:20 - [vv[1] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[1]);
		now.vv[1] = 1;
#ifdef VAR_RANGES
		logval("vv[1]", ((int)now.vv[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 27 - tsp8.pml:22 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][27] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 28 - tsp8.pml:22 - [cost = (cost+3)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 30 - tsp8.pml:23 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][30] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 31 - tsp8.pml:23 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 33 - tsp8.pml:24 - [(!(vv[4]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][33] = 1;
		if (!( !(((int)now.vv[4]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 34 - tsp8.pml:24 - [cost = (cost+6)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+6);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 36 - tsp8.pml:25 - [(!(vv[5]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][36] = 1;
		if (!( !(((int)now.vv[5]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 37 - tsp8.pml:25 - [cost = (cost+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+1);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 39 - tsp8.pml:26 - [(!(vv[6]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][39] = 1;
		if (!( !(((int)now.vv[6]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 40 - tsp8.pml:26 - [cost = (cost+9)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+9);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 42 - tsp8.pml:27 - [(!(vv[7]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][42] = 1;
		if (!( !(((int)now.vv[7]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 43 - tsp8.pml:27 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 46 - tsp8.pml:28 - [cost = (cost+4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 51 - tsp8.pml:33 - [vv[2] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[2]);
		now.vv[2] = 1;
#ifdef VAR_RANGES
		logval("vv[2]", ((int)now.vv[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 52 - tsp8.pml:35 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][52] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 53 - tsp8.pml:35 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 55 - tsp8.pml:36 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][55] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 56 - tsp8.pml:36 - [cost = (cost+8)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][56] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 58 - tsp8.pml:37 - [(!(vv[4]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][58] = 1;
		if (!( !(((int)now.vv[4]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 59 - tsp8.pml:37 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][59] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 61 - tsp8.pml:38 - [(!(vv[5]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][61] = 1;
		if (!( !(((int)now.vv[5]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 62 - tsp8.pml:38 - [cost = (cost+4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 64 - tsp8.pml:39 - [(!(vv[6]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][64] = 1;
		if (!( !(((int)now.vv[6]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 65 - tsp8.pml:39 - [cost = (cost+3)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 67 - tsp8.pml:40 - [(!(vv[7]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][67] = 1;
		if (!( !(((int)now.vv[7]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 68 - tsp8.pml:40 - [cost = (cost+5)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+5);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 71 - tsp8.pml:41 - [cost = (cost+6)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+6);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 76 - tsp8.pml:46 - [vv[3] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[3]);
		now.vv[3] = 1;
#ifdef VAR_RANGES
		logval("vv[3]", ((int)now.vv[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 77 - tsp8.pml:48 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][77] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 78 - tsp8.pml:48 - [cost = (cost+3)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][78] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 80 - tsp8.pml:49 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][80] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 81 - tsp8.pml:49 - [cost = (cost+8)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][81] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 83 - tsp8.pml:50 - [(!(vv[4]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][83] = 1;
		if (!( !(((int)now.vv[4]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 84 - tsp8.pml:50 - [cost = (cost+9)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+9);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 86 - tsp8.pml:51 - [(!(vv[5]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][86] = 1;
		if (!( !(((int)now.vv[5]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 87 - tsp8.pml:51 - [cost = (cost+5)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][87] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+5);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 89 - tsp8.pml:52 - [(!(vv[6]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][89] = 1;
		if (!( !(((int)now.vv[6]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 90 - tsp8.pml:52 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][90] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 92 - tsp8.pml:53 - [(!(vv[7]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][92] = 1;
		if (!( !(((int)now.vv[7]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 93 - tsp8.pml:53 - [cost = (cost+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][93] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+1);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 96 - tsp8.pml:54 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][96] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 101 - tsp8.pml:59 - [vv[4] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][101] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[4]);
		now.vv[4] = 1;
#ifdef VAR_RANGES
		logval("vv[4]", ((int)now.vv[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 102 - tsp8.pml:61 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][102] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 103 - tsp8.pml:61 - [cost = (cost+6)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][103] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+6);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 105 - tsp8.pml:62 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][105] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 106 - tsp8.pml:62 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][106] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 108 - tsp8.pml:63 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][108] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 109 - tsp8.pml:63 - [cost = (cost+9)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][109] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+9);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 111 - tsp8.pml:64 - [(!(vv[5]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][111] = 1;
		if (!( !(((int)now.vv[5]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 112 - tsp8.pml:64 - [cost = (cost+3)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][112] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 114 - tsp8.pml:65 - [(!(vv[6]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][114] = 1;
		if (!( !(((int)now.vv[6]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 115 - tsp8.pml:65 - [cost = (cost+8)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][115] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 117 - tsp8.pml:66 - [(!(vv[7]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][117] = 1;
		if (!( !(((int)now.vv[7]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 118 - tsp8.pml:66 - [cost = (cost+4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][118] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 121 - tsp8.pml:67 - [cost = (cost+5)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][121] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+5);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 126 - tsp8.pml:72 - [vv[5] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][126] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[5]);
		now.vv[5] = 1;
#ifdef VAR_RANGES
		logval("vv[5]", ((int)now.vv[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 127 - tsp8.pml:74 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][127] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 128 - tsp8.pml:74 - [cost = (cost+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][128] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+1);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 130 - tsp8.pml:75 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][130] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 131 - tsp8.pml:75 - [cost = (cost+4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][131] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 133 - tsp8.pml:76 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][133] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 134 - tsp8.pml:76 - [cost = (cost+5)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][134] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+5);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 136 - tsp8.pml:77 - [(!(vv[4]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][136] = 1;
		if (!( !(((int)now.vv[4]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 137 - tsp8.pml:77 - [cost = (cost+3)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][137] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 139 - tsp8.pml:78 - [(!(vv[6]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][139] = 1;
		if (!( !(((int)now.vv[6]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 140 - tsp8.pml:78 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][140] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 142 - tsp8.pml:79 - [(!(vv[7]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][142] = 1;
		if (!( !(((int)now.vv[7]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 143 - tsp8.pml:79 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][143] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 146 - tsp8.pml:80 - [cost = (cost+8)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][146] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 151 - tsp8.pml:85 - [vv[6] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][151] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[6]);
		now.vv[6] = 1;
#ifdef VAR_RANGES
		logval("vv[6]", ((int)now.vv[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 152 - tsp8.pml:87 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][152] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 153 - tsp8.pml:87 - [cost = (cost+9)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][153] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+9);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 155 - tsp8.pml:88 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][155] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 156 - tsp8.pml:88 - [cost = (cost+3)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][156] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 158 - tsp8.pml:89 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][158] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 159 - tsp8.pml:89 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][159] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 161 - tsp8.pml:90 - [(!(vv[4]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][161] = 1;
		if (!( !(((int)now.vv[4]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 162 - tsp8.pml:90 - [cost = (cost+8)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][162] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 164 - tsp8.pml:91 - [(!(vv[5]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][164] = 1;
		if (!( !(((int)now.vv[5]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 165 - tsp8.pml:91 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][165] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 167 - tsp8.pml:92 - [(!(vv[7]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][167] = 1;
		if (!( !(((int)now.vv[7]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 168 - tsp8.pml:92 - [cost = (cost+5)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][168] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+5);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 171 - tsp8.pml:93 - [cost = (cost+4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][171] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 176 - tsp8.pml:98 - [vv[7] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][176] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[7]);
		now.vv[7] = 1;
#ifdef VAR_RANGES
		logval("vv[7]", ((int)now.vv[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 177 - tsp8.pml:100 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][177] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 178 - tsp8.pml:100 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][178] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 180 - tsp8.pml:101 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][180] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 181 - tsp8.pml:101 - [cost = (cost+5)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][181] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+5);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 183 - tsp8.pml:102 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][183] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 184 - tsp8.pml:102 - [cost = (cost+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][184] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+1);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 186 - tsp8.pml:103 - [(!(vv[4]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][186] = 1;
		if (!( !(((int)now.vv[4]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 187 - tsp8.pml:103 - [cost = (cost+4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][187] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 189 - tsp8.pml:104 - [(!(vv[5]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][189] = 1;
		if (!( !(((int)now.vv[5]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 190 - tsp8.pml:104 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][190] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 192 - tsp8.pml:105 - [(!(vv[6]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][192] = 1;
		if (!( !(((int)now.vv[6]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 193 - tsp8.pml:105 - [cost = (cost+5)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][193] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+5);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 196 - tsp8.pml:106 - [cost = (cost+6)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][196] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+6);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 201 - tsp8.pml:111 - [{c_code1}] (0:0:0 - 0)
		IfNotBlocked
		reached[0][201] = 1;
		/* c_code1 */
		{ 
		sv_save();
            printf("#############\nfound another solution: %d\n############\n", now.cost);
         }

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 202 - tsp8.pml:114 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][202] = 1;
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

