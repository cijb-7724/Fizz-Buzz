using System;

class Program {
    static void Main() {
        int N, K;
        string input = Console.ReadLine();
        N = int.Parse(input.Split(' ')[0]);
        K = int.Parse(input.Split(' ')[1]);
        input = Console.ReadLine();
        int[] A = input.Split(' ').Select(int.Parse).ToArray();
        for (int i=0; i<N; ++i) {
            if (A[i] % K == 0)
                Console.WriteLine(A[i]/K);
        }
    }
}
