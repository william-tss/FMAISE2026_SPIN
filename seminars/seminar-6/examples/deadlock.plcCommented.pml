/* =========================================================================
   SECTION 1: DECLARATIONS & SYSTEM VARIABLES
   Defines the physical states of the materials and the hardware components.
   ========================================================================= */

// 'mtype' (Message Type) is used here as an enumeration to define the possible 
// physical states and contents of the tanks.
mtype = { cempty, undef1, undef2,           // Empty state, transitional/undefined states during processes
	  sol42C, sol42H, sol84C, sol84H,   // Salt solutions of varying concentrations/volumes (Cold/Hot)
	  sol70C, sol140C,                  // Mixed solutions
	  water28C, water28H, water56C, water56H // Water states (Cold/Hot, 1 or 2 units)
	}

// Hardware actuators: valves (v), mixers (mix), heaters (heat), and pumps (p1, p2)
bool 	v8, v9, v11, v12, v13, v15, v17, v29 ;
bool	mix, heat ;
bool	p1, p2 ;

// Control flag: Used to synchronize the continuous plant with the instantaneous PLC scan cycle.
// When cycle==0, the plant can execute an atomic step. When cycle==1, the PLC executes a scan.
bool	cycle ;

// Array representing the active states (steps) of the SFC (Sequential Function Chart) program.
// px[i] is true if plant process 'i' is currently active/running.
bool	px[13] ;

// The 7 physical tanks/containers in the batch plant
mtype	B1, B2, B3, B4, B5, B6, B7 ;

// Global time variable and completion times for each specific physical process.
// E.g., tB1B3 is the time when the transfer from B1 to B3 will finish.
short	time, tB1B3, tB2B3, tB3B4, tB4B5, tB5B7 ;
short	tH, tC6, tC7, tP1, tP2 ;

// Global counter for the number of produced batches (used to find the optimal schedule)
short 	batches


/* =========================================================================
   SECTION 2: MACROS AND PLC LOGIC CONDITIONS
   Translates the PLC Instruction List and SFC logic into Promela macros.
   ========================================================================= */

// Syntactic sugar to make the code more readable and closer to hardware instructions.
#define true		1
#define false		0
#define up(x)		x=1   // Activate a step
#define down(x)		x=0   // Deactivate a step
#define open(x)		x=1   // Open a valve
#define close(x)	x=0   // Close a valve
#define on(x)		x=1   // Turn on a pump/mixer
#define off(x)		x=0   // Turn off a pump/mixer

// Triggers an assertion failure to catch unreachable/illegal plant states during verification.
#define error		assert(false)

// PHI (Φ): Preconditions for tank filling. 
// Checks if the source tank has enough material AND the destination tank has enough space.
// 'i' is the process number, 'j' handles sub-cases (e.g., transferring 1 vs 2 units).
#define phi(i,j)	( (i==1 && j==1 && B1==sol42C && B3==cempty)\
			||(i==1 && j==2 && B1==sol84C && B3==cempty)\
			||(i==2 && j==1 && B2==water28C && B3==cempty)\
			||(i==2 && j==2 && B2==water56C && B3==cempty)\
			||(i==3 && j==1 && B1==sol42C && B3==water28C)\
			||(i==3 && j==2 && B1==sol84C && B3==water28C)\
			||(i==4 && j==1 && B2==water28C && B3==sol42C)\
			||(i==4 && j==2 && B2==water56C && B3==sol42C)\
			||(i==5 && j==1 && B3==sol70C && B4==cempty)\
			||(i==5 && j==2 && B3==sol70C && B4==sol70C)\
			||(i==6 && j==1 && B4==sol70C && B5==cempty)\
			||(i==6 && j==2 && B4==sol140C && B5==cempty)\
			||(i==7 && j==1 && B5==sol70C && B6==cempty)\
			||(i==7 && j==2 && B5==sol70C && (B6==water28C || B6==water28H))\
			||(i==8 && j==1 && B5==sol42H && B7==cempty)\
			||(i==8 && j==2 && B5==sol42H && (B7==sol42C || B7==sol42H))\
			||(i==9 && j==1 && B7==sol42H)\
			||(i==9 && j==2 && B7==sol84H)\
			||(i==10 && j==1 && B6==water28H)\
			||(i==10 && j==2 && B6==water56H)\
			||(i==11 && j==1 && B7==sol42C && B1==cempty)\
			||(i==11 && j==2 && B7==sol84C && B1==cempty)\
			||(i==12 && j==1 && B7==sol42C && B1==sol42C)\
			||(i==12 && j==2 && B7==sol84C && B1==sol42C)\
			||(i==13 && j==1 && B6==water28C && B2==cempty)\
			||(i==13 && j==2 && B6==water56C && B2==cempty)\
			||(i==14 && j==1 && B6==water28C && B2==water28C)\
			||(i==14 && j==2 && B6==water56C && B2==water28C)\
			)

// CONPSI (Conflict Psi): Mutual exclusion conditions.
// A process cannot start if a conflicting process (e.g., using the same tank or valve) is already active.
#define conpsi(i)	(  ((i==1) && (!px[2] && !px[4] && !px[5] && !px[11]))\
			|| ((i==2) && (!px[1] && !px[3] && !px[5] && !px[12]))\
			|| ((i==3) && (!px[2] && !px[4] && !px[5] && !px[11]))\
			|| ((i==4) && (!px[1] && !px[3] && !px[5] && !px[12]))\
			|| ((i==5) && (!px[1] && !px[2] && !px[3] && !px[4] && !px[6]))\
			|| ((i==6) && (!px[5] && !px[7] && !px[8]))\
			|| ((i==7) && (!px[6] && !px[8] && !px[10] && !px[12]))\
			|| ((i==8) && (!px[6] && !px[7] && !px[9] && !px[11]))\
			|| ((i==9) && (!px[8] && !px[11]))\
			|| ((i==10) && (!px[7] && !px[12]))\
			|| ((i==11) && (!px[1] && !px[3] && !px[8] && !px[9]))\
			|| ((i==12) && (!px[1] && !px[3] && !px[8] && !px[9]))\
			|| ((i==13) && (!px[2] && !px[4] && !px[7] && !px[10]))\
			|| ((i==14) && (!px[2] && !px[4] && !px[7] && !px[10]))\
			)

// Combines physical preconditions and conflict conditions.
#define ppsi(i,j)	( phi(i,j) && conpsi(i) )
#define psi(i)		( ppsi(i,1) || ppsi(i,2) )
	
// CONTHETA: Priority evaluation.
// If two conflicting processes could start simultaneously, this strictly defines which one has priority.
#define contheta(i)	(  ((i==1 || i==3) && !psi(5))\
			|| ((i==2 || i==4) && (!psi(1) && !psi(3) && !psi(5)))\
			|| ((i==5) && !psi(6))\
			|| ((i==6) && (!psi(7) && !psi(8)))\
			|| ((i==7) && true)\
			|| ((i==8) && !psi(7))\
			|| ((i==9) && !psi(8))\
			|| ((i==10) && !psi(7))\
			|| ((i==11 || i==12) && (!psi(1) && !psi(3) && !psi(8) && !psi(9)))\
			|| ((i==13 || i==14) && (!psi(2) && !psi(4) && !psi(7) && !psi(10)))\
			)

// THETA (Θ): Final activation condition. 
// A process 'i' can start ONLY IF physical conditions, conflict checks, and priorities are all satisfied.
#define theta(i,j)      ( ppsi(i,j) && contheta(i) )

// RESULT: Postconditions. Evaluates to true when a process has physically finished its job.
#define result(i,j)	(  (i==1 && j==1 && B1==cempty && B3==sol42C)\
			|| (i==1 && j==2 && B1==sol42C && B3==sol42C)\
			|| (i==2 && j==1 && B2==cempty && B3==water28C)\
			|| (i==2 && j==2 && B2==water28C && B3==water28C)\
			|| (i==3 && j==1 && B1==cempty && B3==sol70C)\
			|| (i==3 && j==2 && B1==sol42C && B3==sol70C)\
			|| (i==4 && j==1 && B2==cempty && B3==sol70C)\
			|| (i==4 && j==2 && B2==water28C && B3==sol70C)\
			|| (i==5 && j==1 && B3==cempty && B4==sol70C)\
			|| (i==5 && j==2 && B3==cempty && B4==sol140C)\
			|| (i==6 && j==1 && B4==cempty && B5==sol70C)\
			|| (i==6 && j==2 && B4==sol70C && B5==sol70C)\
			|| (i==7 && j==1 && B5==sol42H && B6==water28H)\
			|| (i==7 && j==2 && B5==sol42H && B6==water56H)\
			|| (i==8 && j==1 && B5==cempty && B7==sol42H)\
			|| (i==8 && j==2 && B5==cempty && B7==sol84H)\
			|| (i==9 && j==1 && B7==sol42C)\
			|| (i==9 && j==2 && B7==sol84C)\
			|| (i==10 && j==1 && B6==water28C)\
			|| (i==10 && j==2 && B6==water56C)\
			|| (i==11 && j==1 && B7==cempty && B1==sol42C)\
			|| (i==11 && j==2 && B7==sol42C && B1==sol42C)\
			|| (i==12 && j==1 && B7==cempty && B1==sol84C)\
			|| (i==12 && j==2 && B7==sol42C && B1==sol84C)\
			|| (i==13 && j==1 && B6==cempty && B2==water28C)\
			|| (i==13 && j==2 && B6==water28C && B2==water28C)\
			|| (i==14 && j==1 && B6==cempty && B2==water56C)\
			|| (i==14 && j==2 && B6==water28C && B2==water56C)\
			)

// PB1: The "Start" Instruction List block. 
// When the PLC activates step 'i', it raises the flag px[i] and opens the corresponding actuators.
#define PB1(i)		if\
			:: (i==1) -> up(px[1]) ; open(v8)\
	  	        :: (i==2) -> up(px[2]) ; open(v9)\
			:: (i==3) -> up(px[3]) ; open(v8) ; on(mix)\
			:: (i==4) -> up(px[4]) ; open(v9) ; on(mix)\
			:: (i==5) -> up(px[5]) ; open(v11)\
			:: (i==6) -> up(px[6]) ; open(v12)\
			:: (i==7) -> up(px[7]) ; on(heat) ; open(v13)\
			:: (i==8) -> up(px[8]) ; open(v15)\
			:: (i==9) -> up(px[9]) ; open(v17)\
			:: (i==10) -> up(px[10]) ; open(v29)\
			:: (i==11 || i==12) -> up(px[11]) ; on(p1)\
			:: (i==13 || i==14) -> up(px[12]) ; on(p2)\
			fi

// PB0: The "Stop" Instruction List block.
// When a step completes, the PLC lowers the flag px[i] and closes all related actuators.
#define PB0(i)		if\
			:: (i==1) -> down(px[1]) ; close(v8)\
		       	:: (i==2) -> down(px[2]) ; close(v9)\
			:: (i==3) -> down(px[3]) ; close(v8) ; off(mix)\
			:: (i==4) -> down(px[4]) ; close(v9) ; off(mix)\
			:: (i==5) -> down(px[5]) ; close(v11)\
			:: (i==6) -> down(px[6]) ; close(v12)\
			:: (i==7) -> down(px[7]) ; off(heat) ; close(v13)\
			:: (i==8) -> down(px[8]) ; close(v15)\
			:: (i==9) -> down(px[9]) ; close(v17)\
			:: (i==10) -> down(px[10]) ; close(v29)\
			:: (i==11 || i==12) -> down(px[11]) ; off(p1)\
			:: (i==13 || i==14) -> down(px[12]) ; off(p2)\
			fi 

// Helper macro to map the 14 logical sub-cases down to the 12 physical steps.
#define procnr(i)	( (i<12) -> i : ((i==12 || i==13) -> i-1 : i-2) ) 

// Initial plant load (configured for exactly 1 batch).
#define initstate	B1=sol42C ; B2=water28C ; B3=cempty ; B4=cempty ;\
		  	B5=cempty ; B6=cempty ; B7=cempty


/* =========================================================================
   SECTION 3: PLANT PROCESSES (PHYSICS SIMULATION)
   Each physical transfer/process is modeled as a 2-step atomic transaction.
   ========================================================================= */

// NOTE ON PLANT PROCTYPES:
// Every process below follows the exact same two-phase pattern:
// Phase 1 (Start): If valves are open, change materials to "undef", calculate end time, trigger PLC cycle.
// Phase 2 (End): Wait until global time equals end time. Convert "undef" into final material, trigger PLC.

proctype B1toB3()
{  	do
  	:: atomic{ (cycle==0 && B1!=cempty && v8) ->
			if
        		:: (B1==sol42C) -> B1=undef1
			:: (B1==sol84C) -> B1=undef2
			fi ;
			if
			:: (B3==cempty) -> B3=undef1
			:: (B3==water28C && mix) -> B3=undef2
			:: else -> error
			fi ;
			printf(">> start B1 to B3:   %d\n", time) ;
			tB1B3=time+32 ;   // Process takes 320 seconds (scaled as 32 time units)
			cycle=1           // Hand over control to the PLC
     	   } ;
	   atomic{ (time==tB1B3 && cycle==0 && v8) ->
			if
        		:: (B1==undef1) -> B1=cempty
			:: (B1==undef2) -> B1=sol42C
			fi ;
			if
			:: (B3==undef1) -> B3=sol42C
			:: (B3==undef2 && mix) -> B3=sol70C
			:: else -> error
			fi ;
			printf(">> end B1 to B3:   %d\n", time) ;
			cycle=1
     	   }
	od
}

proctype B2toB3()
{
  	do
  	:: atomic{ (cycle==0 && B2!=cempty && v9) ->
			if
        		:: (B2==water28C) -> B2=undef1
			:: (B2==water56C) -> B2=undef2
			fi ;
			if
			:: (B3==cempty) -> B3=undef1
			:: (B3==sol42C && mix) -> B3=undef2
			:: else -> error
			fi ;
			printf(">> start B2 to B3:   %d\n", time) ;
			tB2B3=time+24 ;  // Takes 24 time units
			cycle=1
     	   } ;
	   atomic{ (time==tB2B3 && cycle==0 && v9) ->
			if
        		:: (B2==undef1) -> B2=cempty
			:: (B2==undef2) -> B2=water28C
			fi ;
			if
			:: (B3==undef1) -> B3=water28C
			:: (B3==undef2 && mix) -> B3=sol70C
			:: else -> error
			fi ;
			printf(">> end B2 to B3:   %d\n", time) ;
			cycle=1
     	   }	
	od
}

proctype B3toB4()
{
  	do
  	:: atomic{ (cycle==0 && B3==sol70C && v11) ->
			if
			:: (B4!=sol140C) ->
				B3=undef1;
				if
				:: (B4==cempty) -> B4=undef1
				:: (B4==sol70C) -> B4=undef2
				:: else -> error
				fi
			:: else -> error
			fi ;
			printf(">> start B3 to B4:   %d\n", time) ;
			tB3B4=time+7 ;
			batches=batches+1 ; // INCREMENTS BATCH COUNTER: Crucial for optimal scheduling verification
			cycle=1
     	   } ;
	   atomic{ (time==tB3B4 && cycle==0 && v11) ->
			if
			:: (B4!=sol140C) ->
				B3=cempty;
				if
				:: (B4==undef1) -> B4=sol70C
				:: (B4==undef2) -> B4=sol140C
				:: else -> error
				fi
			:: else -> error
			fi ;
			printf(">> end B3 to B4:   %d\n", time) ;
			cycle=1
     	   }	
	od
}

proctype B4toB5()
{
  	do
  	:: atomic{ (cycle==0 && B4!=cempty && v12) ->
			if
			::(B5==cempty) ->
				if
				:: (B4==sol70C) -> B4=undef1
				:: (B4==sol140C) -> B4=undef2
				fi;
				B5=undef1
			:: else -> error
			fi ;
			printf(">> start B4 to B5:   %d\n", time) ;
			tB4B5=time+35 ;
			cycle=1	
     	   } ;
	   atomic{ (time==tB4B5 && cycle==0 && v12) ->
			if
			::(B5==undef1) ->
				if
				:: (B4==undef1) -> B4=cempty
				:: (B4==undef2) -> B4=sol70C
				fi;
				B5=sol70C
			:: else -> error
			fi ;
			printf(">> end B4 to B5:   %d\n", time) ;
			cycle=1	
     	   }
	od
}

proctype Heat5()
{
  	do
  	:: atomic{ (cycle==0 && heat) -> 
			if
        		:: (B5==sol70C) -> B5=undef1
			:: else -> error
			fi ;
			if
			:: v13 -> if
				  :: (B6==cempty) -> B6=undef1
				  :: (B6==water28H) -> B6=undef2
				  :: (B6==water28C) -> B6=undef2
				  :: else -> error
				  fi
			:: else -> skip
			fi ;
			printf(">> start heat B5:   %d\n", time) ;
			tH=time+110 ; // Bottleneck process: Heating takes 110 time units
			cycle=1 
     	   } ;
	   atomic{ (time==tH && cycle==0 && heat) -> 
			if
        		:: (B5==undef1) -> B5=sol42H
			:: else -> error
			fi ;
			if
			:: v13 -> if
				  :: (B6==undef1) -> B6=water28H
				  :: (B6==undef2) -> B6=water56H
				  :: else -> error
				  fi
			:: else -> skip
			fi ;
			printf(">> end heat B5:   %d\n", time) ;
			cycle=1 
     	   }	
	od
}

proctype B5toB7()
{
  	do
  	:: atomic{ (cycle==0 && B5!=cempty && v15) ->
			if
        		:: (B5==sol42H) -> B5=undef1
			:: else -> error
			fi ;
			if
			:: (B7==cempty) -> B7=undef1
			:: (B7==sol42H) -> B7=undef2
			:: (B7==sol42C) -> B7=undef2
			:: else -> error
			fi ;
			printf(">> start B5 to B7:   %d\n", time) ;
			tB5B7=time+28 ;
			cycle=1
     	   } ;
	   atomic{ (time==tB5B7 && cycle==0 && v15) ->
			if
        		:: (B5==undef1) -> B5=cempty
			:: else -> error
			fi ;
			if
			:: (B7==undef1) -> B7=sol42H
			:: (B7==undef2) -> B7=sol84H
			:: else -> error
			fi ;
			printf(">> end B5 to B7:   %d\n", time) ;
			cycle=1
    	   }
	od
}

proctype Cool6()
{
  	do
  	:: atomic{ (cycle==0 && v29) ->	
			if
			:: (B6==water28H) -> B6=undef1 ; tC6=time+30
			:: (B6==water56H) -> B6=undef2 ; tC6=time+60
			:: else -> error
			fi ;
			printf(">> start cool B6:   %d\n", time) ;
			cycle=1
     	   } ;
	   atomic{ (time==tC6 && cycle==0 && v29) ->	
			if
			:: (B6==undef1) -> B6=water28C
			:: (B6==undef2) -> B6=water56C
			:: else -> error
			fi ;
			printf(">> end cool B6:   %d\n", time) ;
			cycle=1
     	   }
	od
}

proctype Cool7()
{
  	do
  	:: atomic{ (cycle==0 && v17) ->	
			if
			:: (B7==sol42H) -> B7=undef1 ; tC7=time+60
			:: (B7==sol84H) -> B7=undef2 ; tC7=time+120
			:: else -> error
			fi ;
			printf(">> start cool B7:   %d\n", time) ;
			cycle=1
     	   } ;
	   atomic{ (time==tC7 && cycle==0 && v17) ->	
			if
			:: (B7==undef1) -> B7=sol42C
			:: (B7==undef2) -> B7=sol84C
			:: else -> error
			fi ;
			printf(">> end cool B7:   %d\n", time) ;
			cycle=1
     	   }
	od
}

proctype Pump1()
{
  	do
  	:: atomic{(cycle==0 && B7!=cempty && p1) ->
			if
        		:: (B7==sol42C) -> B7=undef1
			:: (B7==sol84C) -> B7=undef2
			:: else -> error
			fi ;
			if
			:: (B1==cempty) -> B1=undef1
			:: (B1==sol42C) -> B1=undef2
			:: else -> error
			fi ;
			printf(">> start B7 to B1:   %d\n", time) ;
			tP1=time+22 ;
			cycle=1
     	   } ;
	   atomic{(time==tP1 && cycle==0 && p1) ->
			if
        		:: (B7==undef1) -> B7=cempty
			:: (B7==undef2) -> B7=sol42C
			:: else -> error
			fi ;
			if
			:: (B1==undef1) -> B1=sol42C
			:: (B1==undef2) -> B1=sol84C
			:: else -> error
			fi ;
			printf(">> end B7 to B1:   %d\n", time) ;
			cycle=1
     	   }
	od
}

proctype Pump2()
{
  	do
  	:: atomic{(cycle==0 && B6!=cempty && p2) ->
			if
        		:: (B6==water28C) -> B6=undef1
			:: (B6==water56C) -> B6=undef2
			:: else -> error
			fi ;
			if
			:: (B2==cempty) -> B2=undef1
			:: (B2==water28C) -> B2=undef2
			:: else -> error
			fi ;
			printf(">> start B6 to B2:   %d\n", time) ;
			tP2=time+24 ;
			cycle=1
     	   } ;
	   atomic{(time==tP2 && cycle==0 && p2) ->
			if
        		:: (B6==undef1) -> B6=cempty
			:: (B6==undef2) -> B6=water28C
			:: else -> error
			fi ;
			if
			:: (B2==undef1) -> B2=water28C
			:: (B2==undef2) -> B2=water56C
			:: else -> error
			fi ;
			printf(">> end B6 to B2:   %d\n", time) ;
			cycle=1
     	   }
	od
}

/* =========================================================================
   SECTION 4: PLC SCAN CYCLE CONTROL
   Simulates the real-time execution of the PLC program loop.
   ========================================================================= */

// Define simulation time limit to bound the search tree
#define maxtime		5000

// Quick check to see if ANY process is currently active
#define act		(px[1] || px[2] || px[3] || px[4] || px[5] || px[6] ||\
                         px[7] || px[8] || px[9] || px[10] || px[11] || px[12])

// The Refined Control Model (to find optimal schedules)
proctype Control()
{ 	int i,j,last ;
	bool precon, postcon ;

	  do
	  :: (time<maxtime) ->
	     atomic{
		i=1 ; j=1 ;
		
		// LOOP 1: DEACTIVATION (Stop Actions)
		// Scan all processes. If a process 'i' is active AND its result postcondition
		// is met (the physical plant finished), execute the PB0 (stop) instruction.
		do
		:: (i<15) -> 
			postcon=(result(i,j) && px[procnr(i)]) ;
			if
			:: postcon -> PB0(i)
			:: else -> skip
			fi ;
			if
			:: (j==1) -> j=2
			:: (j==2) -> j=1 ; i=i+1
			fi
		:: (i==15) -> goto loop2
		od ;
		
		loop2:
		i=1 ; j=1 ; last=1 ;
		
		// LOOP 2: ACTIVATION (Start Actions)
		// Scan all processes. If preconditions (theta) are met and process is not active,
		// non-deterministically CHOOSE to either start it (PB1) OR save its ID in 'last'.
		// This non-determinism allows Spin to explore all possible subsets of active processes.
		do
		:: (i<15) -> 
			precon=(theta(i,j) && !px[procnr(i)]) ;
			if
			:: precon -> PB1(i)
		 	:: precon -> last=i
			:: else -> skip
			fi ;
			if
			:: (j==1) -> j=2
			:: (j==2) -> j=1 ; i=i+1
			fi
		:: (i==15) -> goto finish
		od ;
		
		finish: 
			  // RETROSPECTIVE ACTIVATION:
			  // If the PLC scan finishes and literally NO process is active (!act),
			  // it prevents total plant starvation by forcing the 'last' viable process to start.
			  if 
			  :: (!act) -> PB1(last)
			  :: else -> skip
			  fi ;
			  
		cycle=0 // Hand control back to the Plant physics
	     }
	  :: (time>=maxtime) -> goto endtime
  	  od ;
	  endtime: skip
}


/* =========================================================================
   SECTION 5: VARIABLE TIME ADVANCE
   A technique to avoid state-space explosion by skipping "empty" time units.
   ========================================================================= */

#define maxstep		120
#define implies(x,y)	((!x)||(y))
#define undef(x)	(x==undef1 || x==undef2)

// promptcondition: Evaluates to TRUE only if all currently active processes (px[i]) 
// have properly transitioned their physical materials into the 'undef' state AND 
// their calculated finish times are strictly in the future.
#define promptcondition	act &&\
			implies(px[1],(undef(B1) && undef(B3) && tB1B3>time)) &&\
			implies(px[2],(undef(B2) && undef(B3) && tB2B3>time)) &&\
			implies(px[3],(undef(B1) && undef(B3) && tB1B3>time)) &&\
			implies(px[4],(undef(B2) && undef(B3) && tB2B3>time)) &&\
			implies(px[5],(undef(B3) && undef(B4) && tB3B4>time)) &&\
			implies(px[6],(undef(B4) && undef(B5) && tB4B5>time)) &&\
			implies(px[7],(undef(B5) && undef(B6) && tH>time)) &&\
			implies(px[8],(undef(B5) && undef(B7) && tB5B7>time)) &&\
			implies(px[9],(undef(B7) && v17 && tC7>time)) &&\
			implies(px[10],(undef(B6) && v29 && tC6>time)) &&\
			implies(px[11],(undef(B7) && undef(B1) && tP1>time)) &&\
			implies(px[12],(undef(B6) && undef(B2) && tP2>time))

// Helper to easily fetch the expected completion time of process 'j'
#define ptime(j)	(j==1 -> tB1B3 :\
			(j==2 -> tB2B3 :\
			(j==3 -> tB1B3 :\
			(j==4 -> tB2B3 :\
			(j==5 -> tB3B4 :\
			(j==6 -> tB4B5 :\
			(j==7 -> tH :\
			(j==8 -> tB5B7 :\
			(j==9 -> tC7 :\
			(j==10 -> tC6 :\
			(j==11 -> tP1 : tP2\
			)))))))))))

// The Time Controller Process
proctype Advance()
{	int i ;
	short minstep ;

	do
	:: atomic{
	      (promptcondition) ->
	         // 1. Initialize minstep to the maximum possible duration
		 minstep=maxstep ;
		 i=1 ;
		 
		 // 2. Iterate through all active processes to find the one that will finish FIRST
		 do
		 :: (i<13) ->
			if
			:: (px[i] && ((ptime(i)-time)<minstep)) ->
		       		minstep=(ptime(i)-time) // Update minstep to the shortest time left
			:: else -> skip
			fi ;
			i=i+1
		 :: (i==13) ->
		        goto step
		 od ;
		 
		 // 3. Jump time directly to that next event, skipping idle ticks (Variable Time Advance)
		 step: time=time+minstep
	   }
	od
}
	 
/* =========================================================================
   SECTION 6: INITIALIZATION
   Sets the initial physical environment and spawns all the concurrent processes.
   ========================================================================= */
init{	
        // Close all hardware valves
        close(v8) ; close(v9) ; close(v11) ; close(v12) ; 
	close(v13) ; close(v15) ; close(v17) ; close(v29) ;

        // Reset global clocks and individual process clocks
	time=0 ; 
	tB1B3=0 ; tB2B3=0 ; tB3B4=0 ; tB4B5=0 ; tB5B7=0 ;
	tH=0 ; tC6=0 ; tC7=0 ; tP1=0 ; tP2=0 ;
	
	// Reset counters and flags
	batches=0 ;
	cycle=0 ;

        // Deactivate all steps in the PLC program
	down(px[1]) ; down(px[2]) ; down(px[3]) ; down(px[4]) ; down(px[5]) ; down(px[6]) ;
	down(px[7]) ; down(px[8]) ; down(px[9]) ; down(px[10]) ; down(px[11]) ; down(px[12]) ;
 
        // Turn off all pumps and mixers
	off(mix) ; off(heat) ;
	off(p1) ; off(p2) ;
	
	// Load the tanks based on the chosen scenario (1 batch)
	initstate;
	 
	// Atomically spawn all concurrent processes
	atomic{ run B1toB3();
		run B2toB3();
		run B3toB4();
		run B4toB5();
		run Heat5();
		run B5toB7();
		run Cool6();
		run Cool7();
		run Pump1();
		run Pump2();
		run Control();
		run Advance()
	}	
}
