BEGIN {
    getline
    N = $1
    K = $2
    getline
    for (i=1; i<=N; ++i) {
        if ($i % K == 0) print $i / K
    }
}
