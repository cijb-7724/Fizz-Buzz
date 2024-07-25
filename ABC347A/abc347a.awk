BEGIN {
    getline
    N = $1
    K = $2
    for (i=1; i<=N; ++i) {
        getline
        if ($i % K == 0) print $i / K
    }
}
