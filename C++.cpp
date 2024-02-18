//C++23(gcc12.2)
#include <iostream>
#include <string>
using namespace std;
int main() {
    for (int i=1; i<=100; ++i) {
        string s = "";
        if (i % 3 == 0) s += "Fizz";
        if (i % 5 == 0) s += "Buzz";
        if (s == "") s += to_string(i);
        cout << s << endl;
    }
}