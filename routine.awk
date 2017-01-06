# UTILITY ROUTINES AND SET ALGORITHMS

function swap(i, j, t) { # x[i] :=: x[j]
    t = x[i]; x[i] = x[j]; x[j] = t
}

function randint(l, u) { # rand int in l..u
    return l + int((u - l + 1) * rand())
}
