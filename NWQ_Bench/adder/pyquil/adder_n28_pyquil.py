from pyquil import Program, get_qc
from pyquil.gates import CNOT, CCNOT, MEASURE, X
from functools import reduce
import numpy as np

shots = 1024

p = Program()

ro = p.declare('ro', memory_type='BIT', memory_size=56)

p.inst(X(1))
p.inst(X(2))
p.inst(X(3))
p.inst(X(4))
p.inst(X(5))
p.inst(X(6))
p.inst(X(7))
p.inst(X(8))
p.inst(X(9))
p.inst(X(10))
p.inst(X(11))
p.inst(X(12))
p.inst(X(24))
p.inst(CNOT(0, 12))
p.inst(CNOT(0, 24))
p.inst(CCNOT(24, 12, 0))
p.inst(CNOT(1, 13))
p.inst(CNOT(1, 0))
p.inst(CCNOT(0, 13, 1))
p.inst(CNOT(2, 14))
p.inst(CNOT(2, 1))
p.inst(CCNOT(1, 14, 2))
p.inst(CNOT(3, 15))
p.inst(CNOT(3, 2))
p.inst(CCNOT(2, 15, 3))
p.inst(CNOT(3, 25))
p.inst(CCNOT(2, 15, 3))
p.inst(CNOT(3, 2))
p.inst(CNOT(2, 15))
p.inst(CCNOT(1, 14, 2))
p.inst(CNOT(2, 1))
p.inst(CNOT(1, 14))
p.inst(CCNOT(0, 13, 1))
p.inst(CNOT(1, 0))
p.inst(CNOT(0, 13))
p.inst(CCNOT(24, 12, 0))
p.inst(CNOT(0, 24))
p.inst(CNOT(24, 12))
p.inst(CNOT(4, 16))
p.inst(CNOT(4, 25))
p.inst(CCNOT(25, 16, 4))
p.inst(CNOT(5, 17))
p.inst(CNOT(5, 4))
p.inst(CCNOT(4, 17, 5))
p.inst(CNOT(6, 18))
p.inst(CNOT(6, 5))
p.inst(CCNOT(5, 18, 6))
p.inst(CNOT(7, 19))
p.inst(CNOT(7, 6))
p.inst(CCNOT(6, 19, 7))
p.inst(CNOT(7, 26))
p.inst(CCNOT(6, 19, 7))
p.inst(CNOT(7, 6))
p.inst(CNOT(6, 19))
p.inst(CCNOT(5, 18, 6))
p.inst(CNOT(6, 5))
p.inst(CNOT(5, 18))
p.inst(CCNOT(4, 17, 5))
p.inst(CNOT(5, 4))
p.inst(CNOT(4, 17))
p.inst(CCNOT(25, 16, 4))
p.inst(CNOT(4, 25))
p.inst(CNOT(25, 16))
p.inst(CNOT(8, 20))
p.inst(CNOT(8, 26))
p.inst(CCNOT(26, 20, 8))
p.inst(CNOT(9, 21))
p.inst(CNOT(9, 8))
p.inst(CCNOT(8, 21, 9))
p.inst(CNOT(10, 22))
p.inst(CNOT(10, 9))
p.inst(CCNOT(9, 22, 10))
p.inst(CNOT(11, 23))
p.inst(CNOT(11, 10))
p.inst(CCNOT(10, 23, 11))
p.inst(CNOT(11, 27))
p.inst(CCNOT(10, 23, 11))
p.inst(CNOT(11, 10))
p.inst(CNOT(10, 23))
p.inst(CCNOT(9, 22, 10))
p.inst(CNOT(10, 9))
p.inst(CNOT(9, 22))
p.inst(CCNOT(8, 21, 9))
p.inst(CNOT(9, 8))
p.inst(CNOT(8, 21))
p.inst(CCNOT(26, 20, 8))
p.inst(CNOT(8, 26))
p.inst(CNOT(26, 20))
p.inst(MEASURE(0, ro[28]))
p.inst(MEASURE(1, ro[29]))
p.inst(MEASURE(2, ro[30]))
p.inst(MEASURE(3, ro[31]))
p.inst(MEASURE(4, ro[32]))
p.inst(MEASURE(5, ro[33]))
p.inst(MEASURE(6, ro[34]))
p.inst(MEASURE(7, ro[35]))
p.inst(MEASURE(8, ro[36]))
p.inst(MEASURE(9, ro[37]))
p.inst(MEASURE(10, ro[38]))
p.inst(MEASURE(11, ro[39]))
p.inst(MEASURE(12, ro[40]))
p.inst(MEASURE(13, ro[41]))
p.inst(MEASURE(14, ro[42]))
p.inst(MEASURE(15, ro[43]))
p.inst(MEASURE(16, ro[44]))
p.inst(MEASURE(17, ro[45]))
p.inst(MEASURE(18, ro[46]))
p.inst(MEASURE(19, ro[47]))
p.inst(MEASURE(20, ro[48]))
p.inst(MEASURE(21, ro[49]))
p.inst(MEASURE(22, ro[50]))
p.inst(MEASURE(23, ro[51]))
p.inst(MEASURE(24, ro[52]))
p.inst(MEASURE(25, ro[53]))
p.inst(MEASURE(26, ro[54]))
p.inst(MEASURE(27, ro[55]))

p.wrap_in_numshots_loop(shots)

qc = get_qc('28q-qvm')
results_list = qc.run(p)
results = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1], ""), results_list))
counts = dict(zip(results,[results.count(i) for i in results]))
print(counts)
