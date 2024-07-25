read N K
read A
for a in ${A[@]}; do
    if ((a % K == 0)); then
        echo $((a/K))
    fi
done
