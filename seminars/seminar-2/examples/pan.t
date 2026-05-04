#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#else
#define tr_2_src(m,f,l)
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(3*sizeof(Trans **));

	/* proctype 1: check_opt */

	trans[1] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[1][4]	= settr(205,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[1][3] = settr(204,0,0,0,0,"DO", 0, 2, 0);
		/* _spin_nvr.tmp:3 */
	    T->nxt	= settr(204,0,1,0,0,"DO", 0, 2, 0);
		/* _spin_nvr.tmp:3 */
	trans[1][1]	= settr(202,0,3,3,0,"(!((cost>=1000)))", 0, 2, 0);
		tr_2_src(3, "_spin_nvr.tmp", 4);
	trans[1][2]	= settr(203,0,3,1,0,"goto T0_init", 0, 2, 0);
	trans[1][5]	= settr(206,0,6,1,0,"break", 0, 2, 0);
	trans[1][6]	= settr(207,0,0,4,4,"-end-", 0, 3500, 0);
		tr_2_src(4, "_spin_nvr.tmp", 6);

	/* proctype 0: TSP */

	trans[0] = (Trans **) emalloc(203*sizeof(Trans *));

	trans[0][1]	= settr(0,0,25,5,5,"vv[0] = 1", 0, 2, 0);
		tr_2_src(5, "tsp8.pml", 5);
	T = trans[ 0][25] = settr(24,2,0,0,0,"ATOMIC", 0, 2, 0);
		/* tsp8.pml:7 */
	T->nxt	= settr(24,2,23,0,0,"ATOMIC", 0, 2, 0);
		/* tsp8.pml:7 */
	T = trans[0][23] = settr(22,2,0,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:8 */
	T = T->nxt	= settr(22,2,2,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:8 */
	T = T->nxt	= settr(22,2,5,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:8 */
	T = T->nxt	= settr(22,2,8,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:8 */
	T = T->nxt	= settr(22,2,11,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:8 */
	T = T->nxt	= settr(22,2,14,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:8 */
	T = T->nxt	= settr(22,2,17,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:8 */
	    T->nxt	= settr(22,2,20,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:8 */
	trans[0][2]	= settr(1,2,3,6,0,"(!(vv[1]))", 0, 2, 0);
		tr_2_src(6, "tsp8.pml", 9);
	trans[0][3]	= settr(2,2,4,7,7,"cost = (cost+7)", 0, 2, 0);
		tr_2_src(7, "tsp8.pml", 9);
	trans[0][4]	= settr(3,0,50,1,0,"goto P1", 0, 2, 0);
	trans[0][24]	= settr(23,0,50,1,0,".(goto)", 0, 2, 0);
	trans[0][5]	= settr(4,2,6,8,0,"(!(vv[2]))", 0, 2, 0);
		tr_2_src(8, "tsp8.pml", 10);
	trans[0][6]	= settr(5,2,7,9,9,"cost = (cost+9)", 0, 2, 0);
		tr_2_src(9, "tsp8.pml", 10);
	trans[0][7]	= settr(6,0,75,1,0,"goto P2", 0, 2, 0);
	trans[0][8]	= settr(7,2,9,10,0,"(!(vv[3]))", 0, 2, 0);
		tr_2_src(10, "tsp8.pml", 11);
	trans[0][9]	= settr(8,2,10,11,11,"cost = (cost+2)", 0, 2, 0);
		tr_2_src(11, "tsp8.pml", 11);
	trans[0][10]	= settr(9,0,100,1,0,"goto P3", 0, 2, 0);
	trans[0][11]	= settr(10,2,12,12,0,"(!(vv[4]))", 0, 2, 0);
		tr_2_src(12, "tsp8.pml", 12);
	trans[0][12]	= settr(11,2,13,13,13,"cost = (cost+5)", 0, 2, 0);
		tr_2_src(13, "tsp8.pml", 12);
	trans[0][13]	= settr(12,0,125,1,0,"goto P4", 0, 2, 0);
	trans[0][14]	= settr(13,2,15,14,0,"(!(vv[5]))", 0, 2, 0);
		tr_2_src(14, "tsp8.pml", 13);
	trans[0][15]	= settr(14,2,16,15,15,"cost = (cost+8)", 0, 2, 0);
		tr_2_src(15, "tsp8.pml", 13);
	trans[0][16]	= settr(15,0,150,1,0,"goto P5", 0, 2, 0);
	trans[0][17]	= settr(16,2,18,16,0,"(!(vv[6]))", 0, 2, 0);
		tr_2_src(16, "tsp8.pml", 14);
	trans[0][18]	= settr(17,2,19,17,17,"cost = (cost+4)", 0, 2, 0);
		tr_2_src(17, "tsp8.pml", 14);
	trans[0][19]	= settr(18,0,175,1,0,"goto P6", 0, 2, 0);
	trans[0][20]	= settr(19,2,21,18,0,"(!(vv[7]))", 0, 2, 0);
		tr_2_src(18, "tsp8.pml", 15);
	trans[0][21]	= settr(20,2,22,19,19,"cost = (cost+6)", 0, 2, 0);
		tr_2_src(19, "tsp8.pml", 15);
	trans[0][22]	= settr(21,0,200,1,0,"goto P7", 0, 2, 0);
	T = trans[ 0][50] = settr(49,2,0,0,0,"ATOMIC", 0, 2, 0);
		/* tsp8.pml:19 */
	T->nxt	= settr(49,2,26,0,0,"ATOMIC", 0, 2, 0);
		/* tsp8.pml:19 */
	trans[0][26]	= settr(25,2,48,20,20,"vv[1] = 1", 0, 2, 0);
		tr_2_src(20, "tsp8.pml", 20);
	T = trans[0][48] = settr(47,2,0,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:21 */
	T = T->nxt	= settr(47,2,27,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:21 */
	T = T->nxt	= settr(47,2,30,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:21 */
	T = T->nxt	= settr(47,2,33,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:21 */
	T = T->nxt	= settr(47,2,36,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:21 */
	T = T->nxt	= settr(47,2,39,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:21 */
	T = T->nxt	= settr(47,2,42,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:21 */
	    T->nxt	= settr(47,2,45,0,0,"IF", 0, 2, 0);
		/* tsp8.pml:21 */
	trans[0][27]	= settr(26,2,28,21,0,"(!(vv[2]))", 0, 2, 0);
		tr_2_src(21, "tsp8.pml", 22);
	trans[0][28]	= settr(27,2,29,22,22,"cost = (cost+3)", 0, 2, 0);
		tr_2_src(22, "tsp8.pml", 22);
	trans[0][29]	= settr(28,0,75,1,0,"goto P2", 0, 2, 0);
	trans[0][49]	= settr(48,0,75,1,0,".(goto)", 0, 2, 0);
	trans[0][30]	= settr(29,2,31,23,0,"(!(vv[3]))", 0, 2, 0);
		tr_2_src(23, "tsp8.pml", 23);
	trans[0][31]	= settr(30,2,32,24,24,"cost = (cost+7)", 0, 2, 0);
		tr_2_src(24, "tsp8.pml", 23);
	trans[0][32]	= settr(31,0,100,1,0,"goto P3", 0, 2, 0);
	trans[0][33]	= settr(32,2,34,25,0,"(!(vv[4]))", 0, 2, 0);
		tr_2_src(25, "tsp8.pml", 24);
	trans[0][34]	= settr(33,2,35,26,26,"cost = (cost+6)", 0, 2, 0);
		tr_2_src(26, "tsp8.pml", 24);
	trans[0][35]	= settr(34,0,125,1,0,"goto P4", 0, 2, 0);
	trans[0][36]	= settr(35,2,37,27,0,"(!(vv[5]))", 0, 2, 0);
		tr_2_src(27, "tsp8.pml", 25);
	trans[0][37]	= settr(36,2,38,28,28,"cost = (cost+1)", 0, 2, 0);
		tr_2_src(28, "tsp8.pml", 25);
	trans[0][38]	= settr(37,0,150,1,0,"goto P5", 0, 2, 0);
	trans[0][39]	= settr(38,2,40,29,0,"(!(vv[6]))", 0, 2, 0);
		tr_2_src(29, "tsp8.pml", 26);
	trans[0][40]	= settr(39,2,41,30,30,"cost = (cost+9)", 0, 2, 0);
		tr_2_src(30, "tsp8.pml", 26);
	trans[0][41]	= settr(40,0,175,1,0,"goto P6", 0, 2, 0);
	trans[0][42]	= settr(41,2,43,31,0,"(!(vv[7]))", 0, 2, 0);
		tr_2_src(31, "tsp8.pml", 27);
	trans[0][43]	= settr(42,2,44,32,32,"cost = (cost+2)", 0, 2, 0);
		tr_2_src(32, "tsp8.pml", 27);
	trans[0][44]	= settr(43,0,200,1,0,"goto P7", 0, 2, 0);
	trans[0][45]	= settr(44,2,46,2,0,"else", 0, 2, 0);
	trans[0][46]	= settr(45,2,47,33,33,"cost = (cost+4)", 0, 2, 0);
		tr_2_src(33, "tsp8.pml", 28);
	trans[0][47]	= settr(46,0,201,1,0,"goto end", 0, 2, 0);
	/* mark-down line 35 status 772 = 0 */
	T = trans[ 0][75] = settr(74,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:32 */
	T->nxt	= settr(74,2,51,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:32 */
	trans[0][51]	= settr(50,2,73,34,34,"vv[2] = 1", 1, 2, 0);
		tr_2_src(34, "tsp8.pml", 33);
	T = trans[0][73] = settr(72,2,0,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:34 */
	T = T->nxt	= settr(72,2,52,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:34 */
	T = T->nxt	= settr(72,2,55,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:34 */
	T = T->nxt	= settr(72,2,58,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:34 */
	T = T->nxt	= settr(72,2,61,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:34 */
	T = T->nxt	= settr(72,2,64,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:34 */
	T = T->nxt	= settr(72,2,67,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:34 */
	    T->nxt	= settr(72,2,70,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:34 */
	trans[0][52]	= settr(51,2,53,35,0,"(!(vv[1]))", 1, 2, 0);
		tr_2_src(35, "tsp8.pml", 35);
	trans[0][53]	= settr(52,2,54,36,36,"cost = (cost+7)", 1, 2, 0);
		tr_2_src(36, "tsp8.pml", 35);
	trans[0][54]	= settr(53,0,50,1,0,"goto P1", 1, 2, 0);
	trans[0][74]	= settr(73,0,100,1,0,".(goto)", 1, 2, 0);
	trans[0][55]	= settr(54,2,56,37,0,"(!(vv[3]))", 1, 2, 0);
		tr_2_src(37, "tsp8.pml", 36);
	trans[0][56]	= settr(55,2,57,38,38,"cost = (cost+8)", 1, 2, 0);
		tr_2_src(38, "tsp8.pml", 36);
	trans[0][57]	= settr(56,0,100,1,0,"goto P3", 1, 2, 0);
	trans[0][58]	= settr(57,2,59,39,0,"(!(vv[4]))", 1, 2, 0);
		tr_2_src(39, "tsp8.pml", 37);
	trans[0][59]	= settr(58,2,60,40,40,"cost = (cost+2)", 1, 2, 0);
		tr_2_src(40, "tsp8.pml", 37);
	trans[0][60]	= settr(59,0,125,1,0,"goto P4", 1, 2, 0);
	trans[0][61]	= settr(60,2,62,41,0,"(!(vv[5]))", 1, 2, 0);
		tr_2_src(41, "tsp8.pml", 38);
	trans[0][62]	= settr(61,2,63,42,42,"cost = (cost+4)", 1, 2, 0);
		tr_2_src(42, "tsp8.pml", 38);
	trans[0][63]	= settr(62,0,150,1,0,"goto P5", 1, 2, 0);
	trans[0][64]	= settr(63,2,65,43,0,"(!(vv[6]))", 1, 2, 0);
		tr_2_src(43, "tsp8.pml", 39);
	trans[0][65]	= settr(64,2,66,44,44,"cost = (cost+3)", 1, 2, 0);
		tr_2_src(44, "tsp8.pml", 39);
	trans[0][66]	= settr(65,0,175,1,0,"goto P6", 1, 2, 0);
	trans[0][67]	= settr(66,2,68,45,0,"(!(vv[7]))", 1, 2, 0);
		tr_2_src(45, "tsp8.pml", 40);
	trans[0][68]	= settr(67,2,69,46,46,"cost = (cost+5)", 1, 2, 0);
		tr_2_src(46, "tsp8.pml", 40);
	trans[0][69]	= settr(68,0,200,1,0,"goto P7", 1, 2, 0);
	trans[0][70]	= settr(69,2,71,2,0,"else", 1, 2, 0);
	trans[0][71]	= settr(70,2,72,47,47,"cost = (cost+6)", 1, 2, 0);
		tr_2_src(47, "tsp8.pml", 41);
	trans[0][72]	= settr(71,0,201,1,0,"goto end", 1, 2, 0);
	/* mark-down line 48 status 772 = 0 */
	T = trans[ 0][100] = settr(99,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:45 */
	T->nxt	= settr(99,2,76,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:45 */
	trans[0][76]	= settr(75,2,98,48,48,"vv[3] = 1", 1, 2, 0);
		tr_2_src(48, "tsp8.pml", 46);
	T = trans[0][98] = settr(97,2,0,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:47 */
	T = T->nxt	= settr(97,2,77,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:47 */
	T = T->nxt	= settr(97,2,80,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:47 */
	T = T->nxt	= settr(97,2,83,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:47 */
	T = T->nxt	= settr(97,2,86,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:47 */
	T = T->nxt	= settr(97,2,89,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:47 */
	T = T->nxt	= settr(97,2,92,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:47 */
	    T->nxt	= settr(97,2,95,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:47 */
	trans[0][77]	= settr(76,2,78,49,0,"(!(vv[1]))", 1, 2, 0);
		tr_2_src(49, "tsp8.pml", 48);
	trans[0][78]	= settr(77,2,79,50,50,"cost = (cost+3)", 1, 2, 0);
		tr_2_src(50, "tsp8.pml", 48);
	trans[0][79]	= settr(78,0,50,1,0,"goto P1", 1, 2, 0);
	trans[0][99]	= settr(98,0,125,1,0,".(goto)", 1, 2, 0);
	trans[0][80]	= settr(79,2,81,51,0,"(!(vv[2]))", 1, 2, 0);
		tr_2_src(51, "tsp8.pml", 49);
	trans[0][81]	= settr(80,2,82,52,52,"cost = (cost+8)", 1, 2, 0);
		tr_2_src(52, "tsp8.pml", 49);
	trans[0][82]	= settr(81,0,75,1,0,"goto P2", 1, 2, 0);
	trans[0][83]	= settr(82,2,84,53,0,"(!(vv[4]))", 1, 2, 0);
		tr_2_src(53, "tsp8.pml", 50);
	trans[0][84]	= settr(83,2,85,54,54,"cost = (cost+9)", 1, 2, 0);
		tr_2_src(54, "tsp8.pml", 50);
	trans[0][85]	= settr(84,0,125,1,0,"goto P4", 1, 2, 0);
	trans[0][86]	= settr(85,2,87,55,0,"(!(vv[5]))", 1, 2, 0);
		tr_2_src(55, "tsp8.pml", 51);
	trans[0][87]	= settr(86,2,88,56,56,"cost = (cost+5)", 1, 2, 0);
		tr_2_src(56, "tsp8.pml", 51);
	trans[0][88]	= settr(87,0,150,1,0,"goto P5", 1, 2, 0);
	trans[0][89]	= settr(88,2,90,57,0,"(!(vv[6]))", 1, 2, 0);
		tr_2_src(57, "tsp8.pml", 52);
	trans[0][90]	= settr(89,2,91,58,58,"cost = (cost+7)", 1, 2, 0);
		tr_2_src(58, "tsp8.pml", 52);
	trans[0][91]	= settr(90,0,175,1,0,"goto P6", 1, 2, 0);
	trans[0][92]	= settr(91,2,93,59,0,"(!(vv[7]))", 1, 2, 0);
		tr_2_src(59, "tsp8.pml", 53);
	trans[0][93]	= settr(92,2,94,60,60,"cost = (cost+1)", 1, 2, 0);
		tr_2_src(60, "tsp8.pml", 53);
	trans[0][94]	= settr(93,0,200,1,0,"goto P7", 1, 2, 0);
	trans[0][95]	= settr(94,2,96,2,0,"else", 1, 2, 0);
	trans[0][96]	= settr(95,2,97,61,61,"cost = (cost+2)", 1, 2, 0);
		tr_2_src(61, "tsp8.pml", 54);
	trans[0][97]	= settr(96,0,201,1,0,"goto end", 1, 2, 0);
	/* mark-down line 61 status 772 = 0 */
	T = trans[ 0][125] = settr(124,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:58 */
	T->nxt	= settr(124,2,101,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:58 */
	trans[0][101]	= settr(100,2,123,62,62,"vv[4] = 1", 1, 2, 0);
		tr_2_src(62, "tsp8.pml", 59);
	T = trans[0][123] = settr(122,2,0,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:60 */
	T = T->nxt	= settr(122,2,102,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:60 */
	T = T->nxt	= settr(122,2,105,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:60 */
	T = T->nxt	= settr(122,2,108,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:60 */
	T = T->nxt	= settr(122,2,111,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:60 */
	T = T->nxt	= settr(122,2,114,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:60 */
	T = T->nxt	= settr(122,2,117,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:60 */
	    T->nxt	= settr(122,2,120,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:60 */
	trans[0][102]	= settr(101,2,103,63,0,"(!(vv[1]))", 1, 2, 0);
		tr_2_src(63, "tsp8.pml", 61);
	trans[0][103]	= settr(102,2,104,64,64,"cost = (cost+6)", 1, 2, 0);
		tr_2_src(64, "tsp8.pml", 61);
	trans[0][104]	= settr(103,0,50,1,0,"goto P1", 1, 2, 0);
	trans[0][124]	= settr(123,0,150,1,0,".(goto)", 1, 2, 0);
	trans[0][105]	= settr(104,2,106,65,0,"(!(vv[2]))", 1, 2, 0);
		tr_2_src(65, "tsp8.pml", 62);
	trans[0][106]	= settr(105,2,107,66,66,"cost = (cost+2)", 1, 2, 0);
		tr_2_src(66, "tsp8.pml", 62);
	trans[0][107]	= settr(106,0,75,1,0,"goto P2", 1, 2, 0);
	trans[0][108]	= settr(107,2,109,67,0,"(!(vv[3]))", 1, 2, 0);
		tr_2_src(67, "tsp8.pml", 63);
	trans[0][109]	= settr(108,2,110,68,68,"cost = (cost+9)", 1, 2, 0);
		tr_2_src(68, "tsp8.pml", 63);
	trans[0][110]	= settr(109,0,100,1,0,"goto P3", 1, 2, 0);
	trans[0][111]	= settr(110,2,112,69,0,"(!(vv[5]))", 1, 2, 0);
		tr_2_src(69, "tsp8.pml", 64);
	trans[0][112]	= settr(111,2,113,70,70,"cost = (cost+3)", 1, 2, 0);
		tr_2_src(70, "tsp8.pml", 64);
	trans[0][113]	= settr(112,0,150,1,0,"goto P5", 1, 2, 0);
	trans[0][114]	= settr(113,2,115,71,0,"(!(vv[6]))", 1, 2, 0);
		tr_2_src(71, "tsp8.pml", 65);
	trans[0][115]	= settr(114,2,116,72,72,"cost = (cost+8)", 1, 2, 0);
		tr_2_src(72, "tsp8.pml", 65);
	trans[0][116]	= settr(115,0,175,1,0,"goto P6", 1, 2, 0);
	trans[0][117]	= settr(116,2,118,73,0,"(!(vv[7]))", 1, 2, 0);
		tr_2_src(73, "tsp8.pml", 66);
	trans[0][118]	= settr(117,2,119,74,74,"cost = (cost+4)", 1, 2, 0);
		tr_2_src(74, "tsp8.pml", 66);
	trans[0][119]	= settr(118,0,200,1,0,"goto P7", 1, 2, 0);
	trans[0][120]	= settr(119,2,121,2,0,"else", 1, 2, 0);
	trans[0][121]	= settr(120,2,122,75,75,"cost = (cost+5)", 1, 2, 0);
		tr_2_src(75, "tsp8.pml", 67);
	trans[0][122]	= settr(121,0,201,1,0,"goto end", 1, 2, 0);
	/* mark-down line 74 status 772 = 0 */
	T = trans[ 0][150] = settr(149,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:71 */
	T->nxt	= settr(149,2,126,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:71 */
	trans[0][126]	= settr(125,2,148,76,76,"vv[5] = 1", 1, 2, 0);
		tr_2_src(76, "tsp8.pml", 72);
	T = trans[0][148] = settr(147,2,0,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:73 */
	T = T->nxt	= settr(147,2,127,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:73 */
	T = T->nxt	= settr(147,2,130,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:73 */
	T = T->nxt	= settr(147,2,133,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:73 */
	T = T->nxt	= settr(147,2,136,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:73 */
	T = T->nxt	= settr(147,2,139,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:73 */
	T = T->nxt	= settr(147,2,142,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:73 */
	    T->nxt	= settr(147,2,145,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:73 */
	trans[0][127]	= settr(126,2,128,77,0,"(!(vv[1]))", 1, 2, 0);
		tr_2_src(77, "tsp8.pml", 74);
	trans[0][128]	= settr(127,2,129,78,78,"cost = (cost+1)", 1, 2, 0);
		tr_2_src(78, "tsp8.pml", 74);
	trans[0][129]	= settr(128,0,50,1,0,"goto P1", 1, 2, 0);
	trans[0][149]	= settr(148,0,175,1,0,".(goto)", 1, 2, 0);
	trans[0][130]	= settr(129,2,131,79,0,"(!(vv[2]))", 1, 2, 0);
		tr_2_src(79, "tsp8.pml", 75);
	trans[0][131]	= settr(130,2,132,80,80,"cost = (cost+4)", 1, 2, 0);
		tr_2_src(80, "tsp8.pml", 75);
	trans[0][132]	= settr(131,0,75,1,0,"goto P2", 1, 2, 0);
	trans[0][133]	= settr(132,2,134,81,0,"(!(vv[3]))", 1, 2, 0);
		tr_2_src(81, "tsp8.pml", 76);
	trans[0][134]	= settr(133,2,135,82,82,"cost = (cost+5)", 1, 2, 0);
		tr_2_src(82, "tsp8.pml", 76);
	trans[0][135]	= settr(134,0,100,1,0,"goto P3", 1, 2, 0);
	trans[0][136]	= settr(135,2,137,83,0,"(!(vv[4]))", 1, 2, 0);
		tr_2_src(83, "tsp8.pml", 77);
	trans[0][137]	= settr(136,2,138,84,84,"cost = (cost+3)", 1, 2, 0);
		tr_2_src(84, "tsp8.pml", 77);
	trans[0][138]	= settr(137,0,125,1,0,"goto P4", 1, 2, 0);
	trans[0][139]	= settr(138,2,140,85,0,"(!(vv[6]))", 1, 2, 0);
		tr_2_src(85, "tsp8.pml", 78);
	trans[0][140]	= settr(139,2,141,86,86,"cost = (cost+2)", 1, 2, 0);
		tr_2_src(86, "tsp8.pml", 78);
	trans[0][141]	= settr(140,0,175,1,0,"goto P6", 1, 2, 0);
	trans[0][142]	= settr(141,2,143,87,0,"(!(vv[7]))", 1, 2, 0);
		tr_2_src(87, "tsp8.pml", 79);
	trans[0][143]	= settr(142,2,144,88,88,"cost = (cost+7)", 1, 2, 0);
		tr_2_src(88, "tsp8.pml", 79);
	trans[0][144]	= settr(143,0,200,1,0,"goto P7", 1, 2, 0);
	trans[0][145]	= settr(144,2,146,2,0,"else", 1, 2, 0);
	trans[0][146]	= settr(145,2,147,89,89,"cost = (cost+8)", 1, 2, 0);
		tr_2_src(89, "tsp8.pml", 80);
	trans[0][147]	= settr(146,0,201,1,0,"goto end", 1, 2, 0);
	/* mark-down line 87 status 772 = 0 */
	T = trans[ 0][175] = settr(174,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:84 */
	T->nxt	= settr(174,2,151,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:84 */
	trans[0][151]	= settr(150,2,173,90,90,"vv[6] = 1", 1, 2, 0);
		tr_2_src(90, "tsp8.pml", 85);
	T = trans[0][173] = settr(172,2,0,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:86 */
	T = T->nxt	= settr(172,2,152,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:86 */
	T = T->nxt	= settr(172,2,155,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:86 */
	T = T->nxt	= settr(172,2,158,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:86 */
	T = T->nxt	= settr(172,2,161,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:86 */
	T = T->nxt	= settr(172,2,164,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:86 */
	T = T->nxt	= settr(172,2,167,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:86 */
	    T->nxt	= settr(172,2,170,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:86 */
	trans[0][152]	= settr(151,2,153,91,0,"(!(vv[1]))", 1, 2, 0);
		tr_2_src(91, "tsp8.pml", 87);
	trans[0][153]	= settr(152,2,154,92,92,"cost = (cost+9)", 1, 2, 0);
		tr_2_src(92, "tsp8.pml", 87);
	trans[0][154]	= settr(153,0,50,1,0,"goto P1", 1, 2, 0);
	trans[0][174]	= settr(173,0,200,1,0,".(goto)", 1, 2, 0);
	trans[0][155]	= settr(154,2,156,93,0,"(!(vv[2]))", 1, 2, 0);
		tr_2_src(93, "tsp8.pml", 88);
	trans[0][156]	= settr(155,2,157,94,94,"cost = (cost+3)", 1, 2, 0);
		tr_2_src(94, "tsp8.pml", 88);
	trans[0][157]	= settr(156,0,75,1,0,"goto P2", 1, 2, 0);
	trans[0][158]	= settr(157,2,159,95,0,"(!(vv[3]))", 1, 2, 0);
		tr_2_src(95, "tsp8.pml", 89);
	trans[0][159]	= settr(158,2,160,96,96,"cost = (cost+7)", 1, 2, 0);
		tr_2_src(96, "tsp8.pml", 89);
	trans[0][160]	= settr(159,0,100,1,0,"goto P3", 1, 2, 0);
	trans[0][161]	= settr(160,2,162,97,0,"(!(vv[4]))", 1, 2, 0);
		tr_2_src(97, "tsp8.pml", 90);
	trans[0][162]	= settr(161,2,163,98,98,"cost = (cost+8)", 1, 2, 0);
		tr_2_src(98, "tsp8.pml", 90);
	trans[0][163]	= settr(162,0,125,1,0,"goto P4", 1, 2, 0);
	trans[0][164]	= settr(163,2,165,99,0,"(!(vv[5]))", 1, 2, 0);
		tr_2_src(99, "tsp8.pml", 91);
	trans[0][165]	= settr(164,2,166,100,100,"cost = (cost+2)", 1, 2, 0);
		tr_2_src(100, "tsp8.pml", 91);
	trans[0][166]	= settr(165,0,150,1,0,"goto P5", 1, 2, 0);
	trans[0][167]	= settr(166,2,168,101,0,"(!(vv[7]))", 1, 2, 0);
		tr_2_src(101, "tsp8.pml", 92);
	trans[0][168]	= settr(167,2,169,102,102,"cost = (cost+5)", 1, 2, 0);
		tr_2_src(102, "tsp8.pml", 92);
	trans[0][169]	= settr(168,0,200,1,0,"goto P7", 1, 2, 0);
	trans[0][170]	= settr(169,2,171,2,0,"else", 1, 2, 0);
	trans[0][171]	= settr(170,2,172,103,103,"cost = (cost+4)", 1, 2, 0);
		tr_2_src(103, "tsp8.pml", 93);
	trans[0][172]	= settr(171,0,201,1,0,"goto end", 1, 2, 0);
	/* mark-down line 100 status 772 = 0 */
	T = trans[ 0][200] = settr(199,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:97 */
	T->nxt	= settr(199,2,176,0,0,"ATOMIC", 1, 2, 0);
		/* tsp8.pml:97 */
	trans[0][176]	= settr(175,2,198,104,104,"vv[7] = 1", 1, 2, 0);
		tr_2_src(104, "tsp8.pml", 98);
	T = trans[0][198] = settr(197,2,0,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:99 */
	T = T->nxt	= settr(197,2,177,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:99 */
	T = T->nxt	= settr(197,2,180,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:99 */
	T = T->nxt	= settr(197,2,183,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:99 */
	T = T->nxt	= settr(197,2,186,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:99 */
	T = T->nxt	= settr(197,2,189,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:99 */
	T = T->nxt	= settr(197,2,192,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:99 */
	    T->nxt	= settr(197,2,195,0,0,"IF", 1, 2, 0);
		/* tsp8.pml:99 */
	trans[0][177]	= settr(176,2,178,105,0,"(!(vv[1]))", 1, 2, 0);
		tr_2_src(105, "tsp8.pml", 100);
	trans[0][178]	= settr(177,2,179,106,106,"cost = (cost+2)", 1, 2, 0);
		tr_2_src(106, "tsp8.pml", 100);
	trans[0][179]	= settr(178,0,50,1,0,"goto P1", 1, 2, 0);
	trans[0][199]	= settr(198,0,201,1,0,".(goto)", 1, 2, 0);
	trans[0][180]	= settr(179,2,181,107,0,"(!(vv[2]))", 1, 2, 0);
		tr_2_src(107, "tsp8.pml", 101);
	trans[0][181]	= settr(180,2,182,108,108,"cost = (cost+5)", 1, 2, 0);
		tr_2_src(108, "tsp8.pml", 101);
	trans[0][182]	= settr(181,0,75,1,0,"goto P2", 1, 2, 0);
	trans[0][183]	= settr(182,2,184,109,0,"(!(vv[3]))", 1, 2, 0);
		tr_2_src(109, "tsp8.pml", 102);
	trans[0][184]	= settr(183,2,185,110,110,"cost = (cost+1)", 1, 2, 0);
		tr_2_src(110, "tsp8.pml", 102);
	trans[0][185]	= settr(184,0,100,1,0,"goto P3", 1, 2, 0);
	trans[0][186]	= settr(185,2,187,111,0,"(!(vv[4]))", 1, 2, 0);
		tr_2_src(111, "tsp8.pml", 103);
	trans[0][187]	= settr(186,2,188,112,112,"cost = (cost+4)", 1, 2, 0);
		tr_2_src(112, "tsp8.pml", 103);
	trans[0][188]	= settr(187,0,125,1,0,"goto P4", 1, 2, 0);
	trans[0][189]	= settr(188,2,190,113,0,"(!(vv[5]))", 1, 2, 0);
		tr_2_src(113, "tsp8.pml", 104);
	trans[0][190]	= settr(189,2,191,114,114,"cost = (cost+7)", 1, 2, 0);
		tr_2_src(114, "tsp8.pml", 104);
	trans[0][191]	= settr(190,0,150,1,0,"goto P5", 1, 2, 0);
	trans[0][192]	= settr(191,2,193,115,0,"(!(vv[6]))", 1, 2, 0);
		tr_2_src(115, "tsp8.pml", 105);
	trans[0][193]	= settr(192,2,194,116,116,"cost = (cost+5)", 1, 2, 0);
		tr_2_src(116, "tsp8.pml", 105);
	trans[0][194]	= settr(193,0,175,1,0,"goto P6", 1, 2, 0);
	trans[0][195]	= settr(194,2,196,2,0,"else", 1, 2, 0);
	trans[0][196]	= settr(195,2,197,117,117,"cost = (cost+6)", 1, 2, 0);
		tr_2_src(117, "tsp8.pml", 106);
	trans[0][197]	= settr(196,0,201,1,0,"goto end", 1, 2, 0);
	trans[0][201]	= settr(200,0,202,118,118,"{c_code1}", 1, 2, 0);
		tr_2_src(118, "tsp8.pml", 111);
	trans[0][202]	= settr(201,0,0,119,119,"-end-", 0, 3500, 0);
		tr_2_src(119, "tsp8.pml", 114);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
