# UTILITY ROUTINES AND SET ALGORITHMS

function swap(i, j, t) {# x[i] :=: x[j]
    t = x[i]; x[i] = x[j]; x[j] = t
}


function randInt(l, u) { # rand int in l..u
    return l + int((u - l + 1) * rand())
}


function select(k, l, u, i, t, m) {
        # post: x[1..k-1] <= x[k] <= x[k+1..n]
        # bugs: n**2 time if x[1]=...=x[n]
    l = 1; u = n
    while (l < u) {
        # x[1..l-1] <= x[1..u] <= x[u+1..n]
        swap(l, randInt(l, u))
        t = x[l]
        m = l
        for (i = l+1; i <= u; i++) {
            # x[l+1..m] < t and t <= x[m+1..i-1]
            if (x[i] < t) swap(++m, i)
        }
        swap(l, m)
        # x[l..m-1] <= x[m] <= x[m+1..u]
        if (m <= k) l = m+1
        if (m >= k) u = m-1
    }
}
