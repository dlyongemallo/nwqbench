from pyquil import Program, get_qc
from pyquil.gates import RY, MEASURE
from functools import reduce
import numpy as np

shots = 1024

p = Program()

ro = p.declare('ro', memory_type='BIT', memory_size=31)

p.inst(RY(2.1506626, 0))
p.inst(RY(1.4482467, 1))
p.inst(RY(2.3705663, 2))
p.inst(RY(1.9765769, 3))
p.inst(RY(0.62383312, 4))
p.inst(RY(2.8280429, 5))
p.inst(RY(2.120318, 6))
p.inst(RY(2.1798952, 7))
p.inst(RY(0.7320994, 8))
p.inst(RY(1.4714046, 9))
p.inst(RY(1.3094267, 10))
p.inst(RY(2.5935193, 11))
p.inst(RY(1.8626523, 12))
p.inst(RY(2.2725045, 13))
p.inst(RY(1.4573817, 14))
p.inst(RY(0.99378383, 15))
p.inst(RY(1.6801839, 16))
p.inst(RY(0.51077586, 17))
p.inst(RY(2.2853262, 18))
p.inst(RY(1.8372675, 19))
p.inst(RY(2.1131759, 20))
p.inst(RY(1.2755787, 21))
p.inst(RY(2.7975419, 22))
p.inst(RY(2.4755003, 23))
p.inst(RY(2.161285, 24))
p.inst(RY(0.91382352, 25))
p.inst(RY(1.5041891, 26))
p.inst(RY(0.42170479, 27))
p.inst(RY(0.80734219, 28))
p.inst(RY(1.9456087, 29))
p.inst(RY(2.0823405, 30))
p.inst(MEASURE(0, ro[0]))
p.inst(MEASURE(1, ro[1]))
p.inst(MEASURE(2, ro[2]))
p.inst(MEASURE(3, ro[3]))
p.inst(MEASURE(4, ro[4]))
p.inst(MEASURE(5, ro[5]))
p.inst(MEASURE(6, ro[6]))
p.inst(MEASURE(7, ro[7]))
p.inst(MEASURE(8, ro[8]))
p.inst(MEASURE(9, ro[9]))
p.inst(MEASURE(10, ro[10]))
p.inst(MEASURE(11, ro[11]))
p.inst(MEASURE(12, ro[12]))
p.inst(MEASURE(13, ro[13]))
p.inst(MEASURE(14, ro[14]))
p.inst(MEASURE(15, ro[15]))
p.inst(MEASURE(16, ro[16]))
p.inst(MEASURE(17, ro[17]))
p.inst(MEASURE(18, ro[18]))
p.inst(MEASURE(19, ro[19]))
p.inst(MEASURE(20, ro[20]))
p.inst(MEASURE(21, ro[21]))
p.inst(MEASURE(22, ro[22]))
p.inst(MEASURE(23, ro[23]))
p.inst(MEASURE(24, ro[24]))
p.inst(MEASURE(25, ro[25]))
p.inst(MEASURE(26, ro[26]))
p.inst(MEASURE(27, ro[27]))
p.inst(MEASURE(28, ro[28]))
p.inst(MEASURE(29, ro[29]))
p.inst(MEASURE(30, ro[30]))

p.wrap_in_numshots_loop(shots)

qc = get_qc('31q-qvm')
results_list = qc.run(p)
results = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1], ""), results_list))
counts = dict(zip(results,[results.count(i) for i in results]))
print(counts)
