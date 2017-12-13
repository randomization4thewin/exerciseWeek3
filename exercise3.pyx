def run_slow():
    res = []
    for j in range(500):
        tmp = 0
        for i in range(10000):
            tmp += 1/((i+1)**2)
        res.append(tmp)
    return res

def run():
    cdef double res[500]
    cdef double tmp, i
    #res = []
    cdef int j
    for j in range(500):
        tmp = 0.
        for i in range(10000):
            tmp += 1/((i+1.)**2)
        res[j] = tmp
           
    return res
