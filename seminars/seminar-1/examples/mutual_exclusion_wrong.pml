bit flag;       /* signal entering/leaving the section */
byte mutex;     /* procs in the critical section. */

proctype P(bit i) {
    flag != 1;  /* wait until the other process leaves the section */
    flag = 1;   /* PROBLEM: both processes can pass the condition at the same time*/
    mutex++;
    printf("MSC: P(%d) has entered section.\n", i);
    mutex--;
    flag = 0;
}

proctype monitor() {
    assert(mutex != 2);
}

init {
    atomic { run P(0); run P(1); run monitor(); }
}
