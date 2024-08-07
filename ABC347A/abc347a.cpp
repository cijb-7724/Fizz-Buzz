#include <iostream>
#include <string>
using namespace std;
int main() {
    int N, K;
    cin >> N >> K;
    for (;N--;) {
        int A;
        cin >> A;
        if (A % K == 0) cout << A/K << endl;
    }
}
