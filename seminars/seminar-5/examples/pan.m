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
	case 3: // STATE 1 - leader.pml:43 - [((proc<10))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)((P1 *)_this)->proc)<10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - leader.pml:44 - [(run node((10-proc),proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, (10-((int)((P1 *)_this)->proc)), ((int)((P1 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - leader.pml:45 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->proc);
		((P1 *)_this)->proc = (((int)((P1 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - leader.pml:46 - [((proc==10))] (8:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)((P1 *)_this)->proc)==10)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.oval = ((P1 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->proc = 0;
		/* merge: goto :b1(0, 5, 8) */
		reached[1][5] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 7: // STATE 10 - leader.pml:50 - [((_nr_pr==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - leader.pml:51 - [assert((nr_leaders==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		spin_assert((((int)now.nr_leaders)==1), "(nr_leaders==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 12 - leader.pml:52 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC node */
	case 10: // STATE 1 - leader.pml:14 - [q[next_chan]!election,my_id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->my_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ], 0, 2, ((int)((P0 *)_this)->my_id), 2);
		_m = 2; goto P999; /* 0 */
	case 11: // STATE 2 - leader.pml:16 - [q[my_pos]?election,neighbor_id] (0:0:1 - 1)
		reached[0][2] = 1;
		if (q_len(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ]) == 0) continue;

		XX=1;
		if (2 != qrecv(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ], 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->neighbor_id);
		;
		((P0 *)_this)->neighbor_id = qrecv(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ], XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("node:neighbor_id", ((int)((P0 *)_this)->neighbor_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ]);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->neighbor_id)); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 3 - leader.pml:18 - [((neighbor_id==my_id))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)_this)->neighbor_id)==((int)((P0 *)_this)->my_id))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: neighbor_id */  (trpt+1)->bup.oval = ((P0 *)_this)->neighbor_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->neighbor_id = 0;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 4 - leader.pml:19 - [nr_leaders = (nr_leaders+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.nr_leaders);
		now.nr_leaders = (((int)now.nr_leaders)+1);
#ifdef VAR_RANGES
		logval("nr_leaders", ((int)now.nr_leaders));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 5 - leader.pml:20 - [q[next_chan]!winner,my_id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->my_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ], 0, 1, ((int)((P0 *)_this)->my_id), 2);
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 7 - leader.pml:22 - [((neighbor_id>my_id))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((int)((P0 *)_this)->neighbor_id)>((int)((P0 *)_this)->my_id))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - leader.pml:23 - [q[next_chan]!election,neighbor_id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (q_full(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->neighbor_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ], 0, 2, ((int)((P0 *)_this)->neighbor_id), 2);
		_m = 2; goto P999; /* 0 */
	case 17: // STATE 9 - leader.pml:24 - [((neighbor_id<my_id))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)((P0 *)_this)->neighbor_id)<((int)((P0 *)_this)->my_id))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: neighbor_id */  (trpt+1)->bup.oval = ((P0 *)_this)->neighbor_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->neighbor_id = 0;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 13 - leader.pml:27 - [q[my_pos]?winner,neighbor_id] (0:0:2 - 1)
		reached[0][13] = 1;
		if (q_len(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ], 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->neighbor_id);
		;
		((P0 *)_this)->neighbor_id = qrecv(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ], XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("node:neighbor_id", ((int)((P0 *)_this)->neighbor_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->neighbor_id)); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 1: my_pos */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->my_pos;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->my_pos = 0;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 14 - leader.pml:29 - [((neighbor_id!=my_id))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((int)((P0 *)_this)->neighbor_id)!=((int)((P0 *)_this)->my_id))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: my_id */  (trpt+1)->bup.oval = ((P0 *)_this)->my_id;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->my_id = 0;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 15 - leader.pml:30 - [q[next_chan]!winner,neighbor_id] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_full(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->neighbor_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ], 0, 1, ((int)((P0 *)_this)->neighbor_id), 2);
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 22 - leader.pml:34 - [-end-] (0:0:0 - 6)
		IfNotBlocked
		reached[0][22] = 1;
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

