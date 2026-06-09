	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */
;
		;
		
	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		((P1 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 4
		;
	/* 0 */	((P1 *)_this)->proc = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 9: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC node */

	case 10: // STATE 1
		;
		_m = unsend(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]);
		;
		goto R999;

	case 11: // STATE 2
		;
		XX = 1;
		unrecv(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ], XX-1, 0, 2, 1);
		unrecv(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ], XX-1, 1, ((int)((P0 *)_this)->neighbor_id), 0);
		((P0 *)_this)->neighbor_id = trpt->bup.oval;
		;
		;
		goto R999;

	case 12: // STATE 3
		;
	/* 0 */	((P0 *)_this)->neighbor_id = trpt->bup.oval;
		;
		;
		goto R999;

	case 13: // STATE 4
		;
		now.nr_leaders = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 5
		;
		_m = unsend(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]);
		;
		goto R999;
;
		;
		
	case 16: // STATE 8
		;
		_m = unsend(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]);
		;
		goto R999;

	case 17: // STATE 9
		;
	/* 0 */	((P0 *)_this)->neighbor_id = trpt->bup.oval;
		;
		;
		goto R999;

	case 18: // STATE 13
		;
	/* 0 */	((P0 *)_this)->my_pos = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ], XX-1, 0, 1, 1);
		unrecv(now.q[ Index(((int)((P0 *)_this)->my_pos), 10) ], XX-1, 1, ((int)((P0 *)_this)->neighbor_id), 0);
		((P0 *)_this)->neighbor_id = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: // STATE 14
		;
	/* 0 */	((P0 *)_this)->my_id = trpt->bup.oval;
		;
		;
		goto R999;

	case 20: // STATE 15
		;
		_m = unsend(now.q[ Index(((int)((P0 *)_this)->next_chan), 10) ]);
		;
		goto R999;

	case 21: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;
	}

