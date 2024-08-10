func ston(s):
    n = 0
    for 0..s.len() each i:
        n = n * 10 + number(s[i])
    return n

nk = getInput().split(' ')
n = ston(nk[0])
k = ston(nk[1])
a = getInput().split(' ')

for 0..n each i:
    x = ston(a[i])
    if x % k == 0:
        print '{x / k}'
