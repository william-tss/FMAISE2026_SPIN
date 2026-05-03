active proctype not_euclid(int x, y) { 
 if 
:: (x > y) -> L: x = x - y 
:: (x < y) -> y = y - x 
:: (x == y) -> assert(x!=y); goto L 
fi;
 printf(";%d\n", x) 
}
