byte count = 0;
byte finished = 0;
active [2] proctype Worker() {
    byte reg;          /* Simulate a local CPU register */
    
    reg = count;       /* 1. READ the shared variable */
    reg = reg + 1;/* 2. MODIFY the local value */
    count = reg;       /* 3. WRITE the new value back */
    
    finished++;             /* Mark that this worker is done */
}
active proctype Monitor() {
    finished == 2;      
    assert(count == 2); /* SPIN WILL TRIGGER AN ERROR HERE! */
}
