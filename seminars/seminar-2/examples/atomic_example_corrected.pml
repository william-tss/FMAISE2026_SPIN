byte count = 0;
byte finished = 0;
active [2] proctype Worker() {
    byte register;          /* Simulate a local CPU register */
    
    register = count;       /* 1. READ the shared variable */
    register = register + 1;/* 2. MODIFY the local value */
    count = register;       /* 3. WRITE the new value back */
    
    finished++;             /* Mark that this worker is done */
}
active proctype Monitor() {
    finished == 2;      
    assert(count == 2); /* SPIN WILL TRIGGER AN ERROR HERE! */
}
