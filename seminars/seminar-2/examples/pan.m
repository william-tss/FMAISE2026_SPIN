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
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [(!((cost>=14)))] (0:0:0 - 1)
		
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
		if (!( !((now.cost>=14))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:6 - [-end-] (0:0:0 - 1)
		
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
	case 5: // STATE 1 - tsp4.pml:5 - [vv[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[0]);
		now.vv[0] = 1;
#ifdef VAR_RANGES
		logval("vv[0]", ((int)now.vv[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - tsp4.pml:9 - [(!(vv[1]))] (26:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		/* merge: cost = (cost+7)(26, 3, 26) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P1(26, 4, 26) */
		reached[0][4] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 5 - tsp4.pml:10 - [(!(vv[2]))] (39:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		/* merge: cost = (cost+9)(39, 6, 39) */
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+9);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P2(39, 7, 39) */
		reached[0][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 8 - tsp4.pml:11 - [(!(vv[3]))] (52:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		/* merge: cost = (cost+2)(52, 9, 52) */
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P3(52, 10, 52) */
		reached[0][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 14 - tsp4.pml:16 - [vv[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[1]);
		now.vv[1] = 1;
#ifdef VAR_RANGES
		logval("vv[1]", ((int)now.vv[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 15 - tsp4.pml:18 - [(!(vv[2]))] (39:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		/* merge: cost = (cost+3)(39, 16, 39) */
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P2(39, 17, 39) */
		reached[0][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 18 - tsp4.pml:19 - [(!(vv[3]))] (52:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		/* merge: cost = (cost+7)(52, 19, 52) */
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P3(52, 20, 52) */
		reached[0][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 22 - tsp4.pml:20 - [cost = (cost+4)] (0:53:1 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+4);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto end(53, 23, 53) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 13: // STATE 27 - tsp4.pml:25 - [vv[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[2]);
		now.vv[2] = 1;
#ifdef VAR_RANGES
		logval("vv[2]", ((int)now.vv[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 28 - tsp4.pml:27 - [(!(vv[1]))] (26:0:1 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		/* merge: cost = (cost+7)(26, 29, 26) */
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+7);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P1(26, 30, 26) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 31 - tsp4.pml:28 - [(!(vv[3]))] (52:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!( !(((int)now.vv[3]))))
			continue;
		/* merge: cost = (cost+8)(52, 32, 52) */
		reached[0][32] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P3(52, 33, 52) */
		reached[0][33] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: // STATE 35 - tsp4.pml:29 - [cost = (cost+6)] (0:53:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+6);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto end(53, 36, 53) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 17: // STATE 40 - tsp4.pml:34 - [vv[3] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((int)now.vv[3]);
		now.vv[3] = 1;
#ifdef VAR_RANGES
		logval("vv[3]", ((int)now.vv[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 41 - tsp4.pml:36 - [(!(vv[1]))] (26:0:1 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!( !(((int)now.vv[1]))))
			continue;
		/* merge: cost = (cost+3)(26, 42, 26) */
		reached[0][42] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+3);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P1(26, 43, 26) */
		reached[0][43] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 44 - tsp4.pml:37 - [(!(vv[2]))] (39:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!( !(((int)now.vv[2]))))
			continue;
		/* merge: cost = (cost+8)(39, 45, 39) */
		reached[0][45] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+8);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto P2(39, 46, 39) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 48 - tsp4.pml:38 - [cost = (cost+2)] (0:53:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = now.cost;
		now.cost = (now.cost+2);
#ifdef VAR_RANGES
		logval("cost", now.cost);
#endif
		;
		/* merge: goto end(53, 49, 53) */
		reached[0][49] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 21: // STATE 53 - tsp4.pml:42 - [{c_code1}] (0:0:0 - 4)
		IfNotBlocked
		reached[0][53] = 1;
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
	case 22: // STATE 54 - tsp4.pml:45 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][54] = 1;
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

