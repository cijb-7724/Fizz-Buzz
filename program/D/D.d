//D (DMD 2.104.0)
import std.stdio;
void main() {
  for (int i=1; i<=100; ++i) {
    if (i % 3 == 0) write("Fizz");
    if (i % 5 == 0) write("Buzz");
    if (i % 3 != 0 && i % 5 != 0) write(i);
    writeln("");
  }
}