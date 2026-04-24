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
	case 3: // STATE 1 - mutual_exclusion_wrong_2.pml:25 - [(run A())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - mutual_exclusion_wrong_2.pml:25 - [(run B())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - mutual_exclusion_wrong_2.pml:25 - [(run monitor())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 5 - mutual_exclusion_wrong_2.pml:26 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC monitor */
	case 7: // STATE 1 - mutual_exclusion_wrong_2.pml:21 - [assert((mutex!=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		spin_assert((((int)now.mutex)!=2), "(mutex!=2)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 2 - mutual_exclusion_wrong_2.pml:22 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B */
	case 9: // STATE 1 - mutual_exclusion_wrong_2.pml:13 - [y = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.y);
		now.y = 1;
#ifdef VAR_RANGES
		logval("y", ((int)now.y));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - mutual_exclusion_wrong_2.pml:14 - [((x==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.x)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - mutual_exclusion_wrong_2.pml:15 - [mutex = (mutex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 4 - mutual_exclusion_wrong_2.pml:16 - [mutex = (mutex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 5 - mutual_exclusion_wrong_2.pml:17 - [y = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.y);
		now.y = 0;
#ifdef VAR_RANGES
		logval("y", ((int)now.y));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 6 - mutual_exclusion_wrong_2.pml:18 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC A */
	case 15: // STATE 1 - mutual_exclusion_wrong_2.pml:5 - [x = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.x);
		now.x = 1;
#ifdef VAR_RANGES
		logval("x", ((int)now.x));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 2 - mutual_exclusion_wrong_2.pml:6 - [((y==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.y)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 3 - mutual_exclusion_wrong_2.pml:7 - [mutex = (mutex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 4 - mutual_exclusion_wrong_2.pml:8 - [mutex = (mutex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 5 - mutual_exclusion_wrong_2.pml:9 - [x = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.x);
		now.x = 0;
#ifdef VAR_RANGES
		logval("x", ((int)now.x));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 6 - mutual_exclusion_wrong_2.pml:10 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
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

