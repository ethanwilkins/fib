SinOsc s => dac;

0 => int f;
1 => int d;

while(true) {
  100::ms => now;
  
  if (fib(f) >= 10000) {
    0 => d;
  } else if (fib(f) <= 0) {
    1 => d;
  }
  
  if (d) {
    1 +=> f;
  } else {
    1 -=> f;
  }
  
  fib(f) => s.freq;
  
  <<< fib(f) >>>;
}

fun int fib(int n) {
  if (n == 0) {
    return 0;
  }
  else if (n == 1) {
    return 1;
  }
  else {
    return (fib(n-1) + fib(n-2));
  }
}
