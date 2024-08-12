%ECLiPSe (ECLiPSe 7.1_13)
main :-
    (
        count(N, 1, 100)
    do
        ( N mod 3 =:= 0 ->
            write("Fizz")
        ;
            true
        ),
        ( N mod 5 =:= 0 ->
            write("Buzz")
        ;
            true
        ),
        ( N mod 5 =\= 0 , N mod 3 =\= 0 ->
            write(N)
        ;
            true
        ),
        nl
    ).
