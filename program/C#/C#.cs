// C# 11.0 (.NET 7.0.7)
using System;

class Program {
    static void Main() {
        int N, K;
        string input = Console.ReadLine();
        N = int.Parse(input.Split(' ')[0]);
        for (int i = 1; i <= N; i++) {
            string output = "";
            if (i % 3 == 0) output += "Fizz";
            if (i % 5 == 0) output += "Buzz";
            if (output == "") output = i.ToString();
            Console.WriteLine(output);
        }
        K = int.Parse(input.Split(' ')[1]);
        Console.WriteLine(K);
    }
}
