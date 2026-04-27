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
	case 3: // STATE 1 - mutual_exclusion_wrong.pml:18 - [(run P(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - mutual_exclusion_wrong.pml:18 - [(run P(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - mutual_exclusion_wrong.pml:18 - [(run monitor())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 5 - mutual_exclusion_wrong.pml:19 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC monitor */
	case 7: // STATE 1 - mutual_exclusion_wrong.pml:14 - [assert((mutex!=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		spin_assert((((int)now.mutex)!=2), "(mutex!=2)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 2 - mutual_exclusion_wrong.pml:15 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 9: // STATE 1 - mutual_exclusion_wrong.pml:5 - [((flag!=1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.flag)!=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - mutual_exclusion_wrong.pml:6 - [flag = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.flag);
		now.flag = 1;
#ifdef VAR_RANGES
		logval("flag", ((int)now.flag));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - mutual_exclusion_wrong.pml:7 - [mutex = (mutex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 4 - mutual_exclusion_wrong.pml:8 - [printf('MSC: P(%d) has entered section.\\n',i)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		Printf("MSC: P(%d) has entered section.\n", ((int)((P0 *)_this)->i));
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 5 - mutual_exclusion_wrong.pml:9 - [mutex = (mutex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 6 - mutual_exclusion_wrong.pml:10 - [flag = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.flag);
		now.flag = 0;
#ifdef VAR_RANGES
		logval("flag", ((int)now.flag));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 7 - mutual_exclusion_wrong.pml:11 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
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

