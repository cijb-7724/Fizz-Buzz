; : 参照しているメモリの場所
nmk : n minus k
(y) = (x) : 代入 (x)の値は保持されるとは限らない
(y) = copy_(x) : 複製 (x)の値は保持される保証がある
using (x) (y) : メモリ(x) (y)を使用している
dec_(x) : (x)をデクリメント
booleanization_(x) : (x)を真理値化
boolean_inversion_(x) : (x)を真理値反転

#start  初期化
+++++ +++++[
    -
    >>>>+++++ +++++
    >+++++ ++
    >+++++ ++
    >+++++ +++++
    >+++++ +++++ ++
    >+++++ +++++ ++
    <<<<< <<<<
]
(0)0; 0 0 0 100 70 70 100 120 120
>>>>+>---->>+++++>--->++<<<<< <<<<
(0)0; 0 0 0 101 66 70 105 117 122
(0)0; 0 0 0 101  B  F   i   u   z
+++++[
    -
    >>>>> >>>>>+
    >+
    >++
    >+++
    <<<<< <<<<< <<<
]
>>>>> >>>>>--
(10)3; 5 10 15

(17) = copy_(4) using (3) 101をコピー
<<<<< <
[
    -
    <+
    >>>>> >>>>> >>>>+
    <<<<< <<<<< <<<<<
]
<
[
    -
    >+
    <
]
(0)0 0 0 0; 101 ''' (17)101

(25) = copy_(13) using (15) 15をコピー
>>>>> >>>>>
[
    -
    >>+
    >>>>> >>>>>+
    <<<<< <<<<< <<
]
>>
[
    -
    <<+
    >>
]
(15)0;

(33) = copy_(10) using (15) 3をコピー
<<<<<
[
    -
    >>>>>+
    >>>>> >>>>> >>>>> >>>+
    <<<<< <<<<< <<<<< <<<<< <<<
]
>>>>>
[
    -
    <<<<<+
    >>>>>
]
(15)0;

(41) = copy_(11) using (15) 5をコピー
<<<<
[
    -
    >>>>+
    >>>>> >>>>> >>>>> >>>>> >>>>> >+
    <<<<< <<<<< <<<<< <<<<< <<<<< <<<<<
]
>>>>
[
    -
    <<<<+
    >>>>
]
(15)0;

(58) = copy_(12) using (15) 10をコピー
<<<
[
    -
    >>>+
    >>>>> >>>>> >>>>> >>>>> >>>>> >>>>>
    >>>>> >>>>> >>>+
    <<<<< <<<<< <<<<< <<<<< <<<<< <<<<<
    <<<<< <<<<< <<<<< <
]
>>>
[
    -
    <<<+
    >>>
]
(15)0;

#end  初期化

#start ループ

>+
(16)1;
[
    (18) = copy_(17) using (15)
    >
    [
        -
        >+
        <<<+
        >>
    ]
    <<
    [
        -
        >>+
        <<
    ]
    (15)0;

    (19) = copy_(16) using (15)
    >
    [
        -
        >>>+
        <<<<+
        >
    ]
    <
    [
        -
        >+
        <
    ]
    (15)0;

    (20) = (18) minus (19)
    >>>
    [
        -
        >>+
        <<
    ]
    >
    [
        -
        >-
        <
    ]
    (19)0; (18)m(19)

    (18) = 0
    (19) = 0
    nothing

    (21) = boolean_inversion_(20)
    >>+<
    [
        [-]
        >-<
    ]
    >
    (21)bool 0;

    if (21)
        (16) = 0
    >+<
    [
        [-]
        >-<
        <<<<<[-]
        >>>>>
    ]
    else
    >
    [
        -
        fizzbuzz
        <<<<< <.
        +
        >>>>> >
    ]
    <<<<< <
]

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
