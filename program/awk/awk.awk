BEGIN {
    for (i=1; i<=100; ++i) {
      s = ""
      if (i % 15 == 0) s = "FizzBuzz";
      else if (i % 3 == 0) s = "Fizz";
      else if (i % 5 == 0)  s = "Buzz";
      else s = i;
      print s;
    }
}