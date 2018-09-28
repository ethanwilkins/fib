SinOsc s => dac;

// frequency
0 => int f;
// direction (add or subtract to frequency)
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

  // range length
  100 => int r;
  // creates random f within range length
  Math.random2(fib(f) - r, fib(f) + r) => int f_ran;

  f_ran => s.freq;

  <<< f_ran >>>;
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
