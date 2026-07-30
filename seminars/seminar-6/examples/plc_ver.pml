mtype = { cempty, undef1, undef2, 
          sol42C, sol42H, sol84C, sol84H, 
          sol70C, sol140C, 
          water28C, water28H, water56C, water56H 
        }
// Hardware actuators
bool v8, v9, v11, v12, v13, v15, v17, v29 ;
bool mix, heat ;
bool p1, p2 ;
// SFC Active States
bool px[13] ;
// Physical tanks
mtype B1, B2, B3, B4, B5, B6, B7 ;

#define true        1
#define false       0
#define up(x)       x=1
#define down(x)     x=0
#define open(x)     x=1
#define close(x)    x=0
#define on(x)       x=1
#define off(x)      x=0
#define error       assert(false)
#define phi(i,j)    ( (i==1 && j==1 && B1==sol42C && B3==cempty)\
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
#define conpsi(i)   (  ((i==1) && (!px[2] && !px[4] && !px[5] && !px[11]))\
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
#define ppsi(i,j)   ( phi(i,j) && conpsi(i) )
#define psi(i)      ( ppsi(i,1) || ppsi(i,2) )
        
#define contheta(i) (  ((i==1 || i==3) && !psi(5))\
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
#define theta(i,j)      ( ppsi(i,j) && contheta(i) )
#define result(i,j)    (  (i==1 && j==1 && B1==cempty && B3==sol42C)\
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
#define PB1(i)        if\
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
#define PB0(i)        if\
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
#define procnr(i)    ( (i<12) -> i : ((i==12 || i==13) -> i-1 : i-2) ) 
#define initstate    B1=sol42C ; B2=water28C ; B3=cempty ; B4=cempty ;\
                     B5=cempty ; B6=cempty ; B7=cempty

proctype B1toB3()
{      do
       :: atomic{ ((B1==sol42C || B1==sol84C) && v8) ->
                if
                :: (B1==sol42C) -> B1=undef1
                :: (B1==sol84C) -> B1=undef2
                fi ;
                if
                :: (B3==cempty) -> B3=undef1
                :: (B3==water28C && mix) -> B3=undef2
                :: else -> error
                fi ;
                printf(">> start B1 to B3\n") ;
                }
       :: atomic{ ((B1==undef1 || B1==undef2) && v8) ->
                if
                :: (B1==undef1) -> B1=cempty
                :: (B1==undef2) -> B1=sol42C
                fi ;
                if
                :: (B3==undef1) -> B3=sol42C
                :: (B3==undef2 && mix) -> B3=sol70C
                :: else -> error
                fi ;
                printf(">> end B1 to B3\n") ;
                }
       od
}
proctype B2toB3()
{
         do
         :: atomic{ ((B2==water28C || B2==water56C) && v9) ->
                if
                :: (B2==water28C) -> B2=undef1
                :: (B2==water56C) -> B2=undef2
                fi ;
                if
                :: (B3==cempty) -> B3=undef1
                :: (B3==sol42C && mix) -> B3=undef2
                :: else -> error
                fi ;
                printf(">> start B2 to B3\n") ;
                }
         :: atomic{ ((B2==undef1 || B2==undef2) && v9) ->
                if
                :: (B2==undef1) -> B2=cempty
                :: (B2==undef2) -> B2=water28C
                fi ;
                if
                :: (B3==undef1) -> B3=water28C
                :: (B3==undef2 && mix) -> B3=sol70C
                :: else -> error
                fi ;
                printf(">> end B2 to B3\n") ;
                }    
         od
}
proctype B3toB4()
{
         do
         :: atomic{ (B3==sol70C && v11) ->
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
                printf(">> start B3 to B4\n") ;
                }
         :: atomic{ (B3==undef1 && v11) ->
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
                printf(">> end B3 to B4\n") ;
                }    
         od
}
proctype B4toB5()
{
         do
         :: atomic{ ((B4==sol70C || B4==sol140C) && v12) ->
                if
                ::(B5==cempty) ->
                    if
                    :: (B4==sol70C) -> B4=undef1
                    :: (B4==sol140C) -> B4=undef2
                    fi;
                    B5=undef1
                :: else -> error
                fi ;
                printf(">> start B4 to B5\n") ;
                }
         :: atomic{ ((B4==undef1 || B4==undef2) && v12) ->
                if
                ::(B5==undef1) ->
                    if
                    :: (B4==undef1) -> B4=cempty
                    :: (B4==undef2) -> B4=sol70C
                    fi;
                    B5=sol70C
                :: else -> error
                fi ;
                printf(">> end B4 to B5\n") ;
                }
         od
}
proctype Heat5()
{
         do
         :: atomic{ (B5==sol70C && heat) -> 
                B5=undef1;
                if
                :: v13 -> if
                      :: (B6==cempty) -> B6=undef1
                      :: (B6==water28H) -> B6=undef2
                      :: (B6==water28C) -> B6=undef2
                      :: else -> error
                      fi
                :: else -> skip
                fi ;
                printf(">> start heat B5\n") ;
                }
         :: atomic{ (B5==undef1 && heat) -> 
                B5=sol42H;
                if
                :: v13 -> if
                      :: (B6==undef1) -> B6=water28H
                      :: (B6==undef2) -> B6=water56H
                      :: else -> error
                      fi
                :: else -> skip
                fi ;
                printf(">> end heat B5\n") ;
                }    
         od
}
proctype B5toB7()
{
         do
         :: atomic{ (B5==sol42H && v15) ->
                B5=undef1;
                if
                :: (B7==cempty) -> B7=undef1
                :: (B7==sol42H) -> B7=undef2
                :: (B7==sol42C) -> B7=undef2
                :: else -> error
                fi ;
                printf(">> start B5 to B7\n") ;
                }
         :: atomic{ (B5==undef1 && v15) ->
                B5=cempty;
                if
                :: (B7==undef1) -> B7=sol42H
                :: (B7==undef2) -> B7=sol84H
                :: else -> error
                fi ;
                printf(">> end B5 to B7\n") ;
               }
         od
}
proctype Cool6()
{
         do
         :: atomic{ ((B6==water28H || B6==water56H) && v29) ->    
                if
                :: (B6==water28H) -> B6=undef1 
                :: (B6==water56H) -> B6=undef2
                :: else -> error
                fi ;
                printf(">> start cool B6\n") ;
                }
         :: atomic{ ((B6==undef1 || B6==undef2) && v29) ->    
                if
                :: (B6==undef1) -> B6=water28C
                :: (B6==undef2) -> B6=water56C
                :: else -> error
                fi ;
                printf(">> end cool B6\n") ;
                }
         od
}
proctype Cool7()
{
         do
         :: atomic{ ((B7==sol42H || B7==sol84H) && v17) ->    
                if
                :: (B7==sol42H) -> B7=undef1
                :: (B7==sol84H) -> B7=undef2
                :: else -> error
                fi ;
                printf(">> start cool B7\n") ;
                }
         :: atomic{ ((B7==undef1 || B7==undef2) && v17) ->    
                if
                :: (B7==undef1) -> B7=sol42C
                :: (B7==undef2) -> B7=sol84C
                :: else -> error
                fi ;
                printf(">> end cool B7\n") ;
                }
         od
}
proctype Pump1()
{
         do
         :: atomic{((B7==sol42C || B7==sol84C) && p1) ->
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
                printf(">> start B7 to B1\n") ;
                }
         :: atomic{((B7==undef1 || B7==undef2) && p1) ->
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
                printf(">> end B7 to B1\n") ;
                }
         od
}
proctype Pump2()
{
         do
         :: atomic{((B6==water28C || B6==water56C) && p2) ->
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
                printf(">> start B6 to B2\n") ;
                }
         :: atomic{((B6==undef1 || B6==undef2) && p2) ->
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
                printf(">> end B6 to B2\n") ;
                }
         od
}
#define act        (px[1] || px[2] || px[3] || px[4] || px[5] || px[6] ||\
                             px[7] || px[8] || px[9] || px[10] || px[11] || px[12])
proctype Control()
{     int i,j,last ;
      bool precon, postcon ;
      do
      :: atomic{
         printf("Entering Control loop");
         i=1 ; j=1 ;
         
         // LOOP 1: DEACTIVATION (Stop Actions)
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
              if 
              :: (!act) -> PB1(last)
              :: else -> skip
              fi ;
         }
      od 
}

   
init{    
    close(v8) ; close(v9) ; close(v11) ; close(v12) ; 
    close(v13) ; close(v15) ; close(v17) ; close(v29) ;
    down(px[1]) ; down(px[2]) ; down(px[3]) ; down(px[4]) ; down(px[5]) ; down(px[6]) ;
    down(px[7]) ; down(px[8]) ; down(px[9]) ; down(px[10]) ; down(px[11]) ; down(px[12]) ;
 
    off(mix) ; off(heat) ;
    off(p1) ; off(p2) ;
    
    initstate;
     
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
    }    
} 
#define batch3_full  (B3 == sol70C)
#define batch3_empty (B3 == cempty)
ltl p1 { ([] <> batch3_full) && ([] <> batch3_empty) }
