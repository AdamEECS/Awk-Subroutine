# UTILITY ROUTINES AND SET ALGORITHMS

function swap(i, j, t) { # x[i] :=: x[j]
    t = x[i]; x[i] = x[j]; x[j] = t
}

function randint(l, u) { # rand int in l..u
    return l + int((u - l + 1) * rand())
}

function select(k, l, u, i, t, m) {
        # post: x[1..k-1] <= x[k] <= x[k+1..n]
        # bugs: n**2 time if x[1]=...=x[n]
}
