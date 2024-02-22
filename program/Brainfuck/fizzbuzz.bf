(k) := 左からk番目のメモリの値
(0) : n=対象とする数を0になるまでデクリメントする場所
(1) : 割る数m、ずっと保持
(2) : (1)のデクリメント
(3) : (2)のコピー
(4) : (3)の真理値化
(5) : (4)の真理値反転

; : 参照しているメモリの場所
nmk : n minus k
(y) = (x) : 代入
(y) = copy_(x) : 複製
using (x) (y) : ここを使用している
dec_(x) : (x)をデクリメント
booleanization_(x) : (x)を真理値化
boolean_inversion_(x) : (x)を真理値反転

nを1つの割る数mで割り切れるか判定するために
n m m x x xのメモリ空間が必要になる
fizzbuzzをやるために，単純に
n 3 3 0 0 0 n 5 5 0 0 0 n 15 15 0 0 0
だけ試す？
if else はできるけど　現状複数の else if に対応できていない
(a) (b) (c) (d)という並びで以下をやりたい
if (a)
    code
else if (b)
    code
else if (c)
    code
else
    code
end

(a)=1 (b)=1 (c)=1 (d)=1 で初期化
(a); (b) (c) (d)
if (a)
    m r m r m r m r
    code
    l l l l
else if (b)
r
    m r m r m r
    code
    l l l
else if (c)
r
    m r m r
    code
    l l
else
r
    m r
    code
    l
end
とすればよい

n k k でn mod kの判定ができる
,>+++>+++<<
n; 3 3
[
    破壊空間の初期化 and dec_(0) and dec_(2)
    ->>->[-]>[-]>[-]<<<
    nm1 3 2; 0 0 0

    (3) = copy_(2) using (2) (3) (4)
    {
        (3) = (2) and (4) = (2) and (2) = 0
        [->+>+<<]>>
        nm1 3 0 2 2; 0

        (2) = (4) and (4) = 0
        [-<<+>>]<
        nm1 3 2 2; 0 0
    }

    (4) = booleanization_(3) and (3) = 0
    [[-]>+<]>
    nm1 3 2 0 1; 0

    (5) = boolean_inversion_(4) and (4) = 0
    >+<[[-]>-<]>
    nm1 3 2 0 0 0;

    if id5=true id2 = id1
    if (5) == true
    [
        <<<<
        nmk 3; 0 0 0 1
        (2) = copy_(1) using (1) (2) (3)
        [->+>+<<]>>[-<<+>>]
        nmk 3 3 0; 0 1

        (5) = 0
        >>-
        nmk 3 3 0 0 0;
    ]
    <<<<<
    nmk; 3 2 0 0 0
]
0; 3 k 0 0 0

###
    (0)==n and (2)==mでスタートして
    (0)==0になるまで(2)を3ずつデクリメントした
    (0)==0のとき(2)==(1)==mならば n mod m == 0である
###
>
(2) = (2) minus (1) and (1) = 0
[->-<]
0 0; km3 0 0 0

if (2) == 0 { (1) = 1 }
else { (1) = 0 }
+>[[-]<->]<
0 1; 0 0 0 0 or 0 0; 0 0 0 0

>+<
0 0/1; 1 0 0 0
if (1) == 1
    put "Yes"
[
    ->-<
    Yes 89 101 115
    10×(9 10 11)
    ++++++++++
    [>>>>
    +++++[<++<++<++>>>-]
    <+<<-<-
    ]
    90 100 110 to 89 101 115
    >-.>+.>+++++.

    Reset
    [-]<[-]<[-]<
]
else
    put "No"
>
[
    -
    No 78 111
    11×(7 10)

    ++++++++++ +
    [>>>
    * 9 9
    +++[<+++<+++>>-]
    * 7 10
    <+<--<-
    ]
    77 110 to 78 111
    >+.>+.

    Reset
    [-]<[-]<
]
<
