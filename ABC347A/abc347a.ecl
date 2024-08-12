main :-
    read_data(K, A),
    (
        foreach(E, A),
        param(K)
    do
        ( E mod K =:= 0 ->
            Result is E div K,
            write(Result),
            nl
        ;
            true
        )
    ).

read_data(K, Lst) :-
    read_num(N),
    read_num(K),
    ( count(_, 1, N),
        foreach(Li, Lst)
    do
        read_num(Li)
    ).
        
read_str(S) :-
    read_string(user_input, " \n", "", _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
