byte count = 0;
byte finished = 0;
/* Spawn 2 identical worker processes */
active [2] proctype Worker() {
    count++;       /* UNDECLARATION OF REALITY: Promela treats this as atomic */
    finished++;    /* Mark that this worker is done */
}
/* A monitor process to check the final result */
active proctype Monitor() {
    finished == 2;      /* Block and wait until both workers finish */
    assert(count == 2); /* Check if the counter reached 2 */
}
