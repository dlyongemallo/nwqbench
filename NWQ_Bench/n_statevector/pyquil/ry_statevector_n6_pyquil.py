from pyquil import Program, get_qc
from pyquil.gates import RY, MEASURE
from functools import reduce
import numpy as np

shots = 1024

p = Program()

ro = p.declare('ro', memory_type='BIT', memory_size=6)

p.inst(RY(2.1506626, 0))
p.inst(RY(1.4482467, 1))
p.inst(RY(2.3705663, 2))
p.inst(RY(1.9765769, 3))
p.inst(RY(0.62383312, 4))
p.inst(RY(2.8280429, 5))
p.inst(MEASURE(0, ro[0]))
p.inst(MEASURE(1, ro[1]))
p.inst(MEASURE(2, ro[2]))
p.inst(MEASURE(3, ro[3]))
p.inst(MEASURE(4, ro[4]))
p.inst(MEASURE(5, ro[5]))

p.wrap_in_numshots_loop(shots)

qc = get_qc('6q-qvm')
results_list = qc.run(p)
results = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1], ""), results_list))
counts = dict(zip(results,[results.count(i) for i in results]))
print(counts)
