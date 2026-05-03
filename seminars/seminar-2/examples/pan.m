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

		 /* PROC TSP */
	case 3: // STATE 1 - tsp4_optimized.pml:20 - [vv[0] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[0]);
		now.vv[0] = 1;
#ifdef VAR_RANGES
		logval("vv[0]", ((int)now.vv[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - tsp4_optimized.pml:29 - [({c_code1})] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(( now.cost >= min_cost )))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 7 - tsp4_optimized.pml:34 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 8 - tsp4_optimized.pml:34 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 10 - tsp4_optimized.pml:35 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - tsp4_optimized.pml:35 - [cost = (cost+9)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+9);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - tsp4_optimized.pml:36 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 14 - tsp4_optimized.pml:36 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 19 - tsp4_optimized.pml:41 - [vv[1] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[1]);
		now.vv[1] = 1;
#ifdef VAR_RANGES
		logval("vv[1]", ((int)now.vv[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 20 - tsp4_optimized.pml:45 - [({c_code2})] (0:0:0 - 0)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(( now.cost >= min_cost )))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 25 - tsp4_optimized.pml:50 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][25] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 26 - tsp4_optimized.pml:50 - [cost = (cost+3)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 28 - tsp4_optimized.pml:51 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][28] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 29 - tsp4_optimized.pml:51 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 32 - tsp4_optimized.pml:52 - [cost = (cost+4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 37 - tsp4_optimized.pml:57 - [vv[2] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[2]);
		now.vv[2] = 1;
#ifdef VAR_RANGES
		logval("vv[2]", ((int)now.vv[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 38 - tsp4_optimized.pml:61 - [({c_code3})] (0:0:0 - 0)
		IfNotBlocked
		reached[0][38] = 1;
		if (!(( now.cost >= min_cost )))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 43 - tsp4_optimized.pml:66 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][43] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 44 - tsp4_optimized.pml:66 - [cost = (cost+7)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 46 - tsp4_optimized.pml:67 - [(!(vv[3]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][46] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 47 - tsp4_optimized.pml:67 - [cost = (cost+8)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 50 - tsp4_optimized.pml:68 - [cost = (cost+6)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+6);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 55 - tsp4_optimized.pml:73 - [vv[3] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[3]);
		now.vv[3] = 1;
#ifdef VAR_RANGES
		logval("vv[3]", ((int)now.vv[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 56 - tsp4_optimized.pml:77 - [({c_code4})] (0:0:0 - 0)
		IfNotBlocked
		reached[0][56] = 1;
		if (!(( now.cost >= min_cost )))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 61 - tsp4_optimized.pml:82 - [(!(vv[1]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][61] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 62 - tsp4_optimized.pml:82 - [cost = (cost+3)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 64 - tsp4_optimized.pml:83 - [(!(vv[2]))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][64] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 65 - tsp4_optimized.pml:83 - [cost = (cost+8)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 68 - tsp4_optimized.pml:84 - [cost = (cost+2)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 73 - tsp4_optimized.pml:94 - [{c_code5}] (0:0:0 - 0)
		IfNotBlocked
		reached[0][73] = 1;
		/* c_code5 */
		{ 
		sv_save();

        if (now.cost < min_cost) {
            min_cost = now.cost;
            printf("> min cost now: %d\n", min_cost);


            putrail();



            Nr_Trails--;
        }
     }

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 74 - tsp4_optimized.pml:108 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][74] = 1;
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

