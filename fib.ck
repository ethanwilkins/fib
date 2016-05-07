SinOsc s => dac;

0 => int f;

while(true) {
  100::ms => now;
  
  if (fib(f) < 10000) {
    1 +=> f;
  } else {
    0 => f;
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
