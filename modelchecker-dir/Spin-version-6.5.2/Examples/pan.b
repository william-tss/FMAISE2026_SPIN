	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC monitor */
;
		;
		
	case 8: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC B */

	case 9: // STATE 1
		;
		now.y = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 3
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 4
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 5
		;
		now.y = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC A */

	case 15: // STATE 1
		;
		now.x = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: // STATE 3
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 4
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 5
		;
		now.x = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;
	}

