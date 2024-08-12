import 'Dart:io';
void main() {
    List nk = stdin.readLineSync()!.split(" ").map((x) => int.parse(x)).toList();
    List a = stdin.readLineSync()!.split(" ").map((x) => int.parse(x)).toList();
    int n = nk[0], k = nk[1];
    for (int i=0; i<n; ++i) if (a[i] % k == 0) print(a[i] ~/ k);
}
