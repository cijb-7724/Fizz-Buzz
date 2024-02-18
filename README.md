# Fizz-Buzz
### Fizz Buzzの定義

```
i(in [1, 100])行目が
3の倍数なら"Fizz"
5の倍数なら"Buzz"
15の倍数なら"FizzBuzz"
どれでもなければ"i"
```
https://ja.wikipedia.org/wiki/Fizz_Buzz

### Rules
- AtCoderのコードテストにある全言語でFizzBuzzの問題を解く
- 「🔍OO言語　FizzBuzz」の検索はしない


### Fizz Buzz Checker
![checker](data/fizzbuzzChecker.png)

https://komari.co.jp/fizzbuzz/
で100/100にする

## 1.><>
fish
```fish
```

## 2.AWK
```AWK
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
```

