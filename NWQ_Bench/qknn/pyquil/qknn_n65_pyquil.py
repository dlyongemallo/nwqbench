from pyquil import Program, get_qc
from pyquil.gates import H, CSWAP, MEASURE, RY
from functools import reduce
import numpy as np

shots = 1024

p = Program()

ro = p.declare('ro', memory_type='BIT', memory_size=1)

p.inst(H(0))
p.inst(RY(0.86584834, 1))
p.inst(RY(0.14743545, 2))
p.inst(RY(0.64245885, 3))
p.inst(RY(0.25817201, 4))
p.inst(RY(0.40688468, 5))
p.inst(RY(1.0394706, 6))
p.inst(RY(2.5998695, 7))
p.inst(RY(0.1055923, 8))
p.inst(RY(2.4725444, 9))
p.inst(RY(0.18212307, 10))
p.inst(RY(2.2954319, 11))
p.inst(RY(2.4837325, 12))
p.inst(RY(1.0053865, 13))
p.inst(RY(2.3769598, 14))
p.inst(RY(0.71175862, 15))
p.inst(RY(2.8680846, 16))
p.inst(RY(2.9177723, 17))
p.inst(RY(2.7116586, 18))
p.inst(RY(1.5525267, 19))
p.inst(RY(3.0664089, 20))
p.inst(RY(1.9557245, 21))
p.inst(RY(0.33250542, 22))
p.inst(RY(0.39294631, 23))
p.inst(RY(0.08921268, 24))
p.inst(RY(2.0177685, 25))
p.inst(RY(1.08657, 26))
p.inst(RY(1.6967852, 27))
p.inst(RY(1.9741458, 28))
p.inst(RY(2.954569, 29))
p.inst(RY(2.8135386, 30))
p.inst(RY(0.13754074, 31))
p.inst(RY(1.2504093, 32))
p.inst(RY(0.17780116, 33))
p.inst(RY(3.1166501, 34))
p.inst(RY(1.5933304, 35))
p.inst(RY(1.5154323, 36))
p.inst(RY(0.98146752, 37))
p.inst(RY(0.2271846, 38))
p.inst(RY(0.68798613, 39))
p.inst(RY(1.3090969, 40))
p.inst(RY(2.1192561, 41))
p.inst(RY(2.527927, 42))
p.inst(RY(1.4018773, 43))
p.inst(RY(1.7981196, 44))
p.inst(RY(0.54568437, 45))
p.inst(RY(3.0629303, 46))
p.inst(RY(2.7640781, 47))
p.inst(RY(0.85225091, 48))
p.inst(RY(2.9031715, 49))
p.inst(RY(2.7264022, 50))
p.inst(RY(2.4490761, 51))
p.inst(RY(0.12435028, 52))
p.inst(RY(1.0599252, 53))
p.inst(RY(2.8109149, 54))
p.inst(RY(2.0532561, 55))
p.inst(RY(1.2379397, 56))
p.inst(RY(2.3032082, 57))
p.inst(RY(1.6474646, 58))
p.inst(RY(0.98522003, 59))
p.inst(RY(1.9140947, 60))
p.inst(RY(2.7385181, 61))
p.inst(RY(0.55956924, 62))
p.inst(RY(3.0138218, 63))
p.inst(RY(0.16889234, 64))
p.inst(CSWAP(0, 1, 33))
p.inst(CSWAP(0, 2, 34))
p.inst(CSWAP(0, 3, 35))
p.inst(CSWAP(0, 4, 36))
p.inst(CSWAP(0, 5, 37))
p.inst(CSWAP(0, 6, 38))
p.inst(CSWAP(0, 7, 39))
p.inst(CSWAP(0, 8, 40))
p.inst(CSWAP(0, 9, 41))
p.inst(CSWAP(0, 10, 42))
p.inst(CSWAP(0, 11, 43))
p.inst(CSWAP(0, 12, 44))
p.inst(CSWAP(0, 13, 45))
p.inst(CSWAP(0, 14, 46))
p.inst(CSWAP(0, 15, 47))
p.inst(CSWAP(0, 16, 48))
p.inst(CSWAP(0, 17, 49))
p.inst(CSWAP(0, 18, 50))
p.inst(CSWAP(0, 19, 51))
p.inst(CSWAP(0, 20, 52))
p.inst(CSWAP(0, 21, 53))
p.inst(CSWAP(0, 22, 54))
p.inst(CSWAP(0, 23, 55))
p.inst(CSWAP(0, 24, 56))
p.inst(CSWAP(0, 25, 57))
p.inst(CSWAP(0, 26, 58))
p.inst(CSWAP(0, 27, 59))
p.inst(CSWAP(0, 28, 60))
p.inst(CSWAP(0, 29, 61))
p.inst(CSWAP(0, 30, 62))
p.inst(CSWAP(0, 31, 63))
p.inst(CSWAP(0, 32, 64))
p.inst(H(0))
p.inst(MEASURE(0, ro[0]))

p.wrap_in_numshots_loop(shots)

qc = get_qc('65q-qvm')
results_list = qc.run(p)
results = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1], ""), results_list))
counts = dict(zip(results,[results.count(i) for i in results]))
print(counts)