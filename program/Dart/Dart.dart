// Dart (Dart 3.0.5)
import 'Dart:io';
void main() {
    for (int n=1; n<=100; ++n) {
        if (n % 3 == 0) stdout.write('Fizz');
        if (n % 5 == 0) stdout.write('Buzz');
        if (n % 3 != 0 && n % 5 != 0) stdout.write(n);
        print('');
    }
}
