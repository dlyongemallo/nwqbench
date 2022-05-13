from pyquil import Program, get_qc
from pyquil.gates import CNOT, MEASURE
from functools import reduce
import numpy as np

shots = 1024

p = Program()

ro = p.declare('ro', memory_type='BIT', memory_size=2)

# Export to pyquil WARNING: unknown gate "u".# Export to pyquil WARNING: unknown gate "u".p.inst(CNOT(0, 1))
# Export to pyquil WARNING: unknown gate "u".# Export to pyquil WARNING: unknown gate "u".p.inst(CNOT(0, 1))
# Export to pyquil WARNING: unknown gate "u".# Export to pyquil WARNING: unknown gate "u".p.inst(CNOT(0, 1))
# Export to pyquil WARNING: unknown gate "u".# Export to pyquil WARNING: unknown gate "u".p.inst(MEASURE(0, ro[0]))
p.inst(MEASURE(1, ro[1]))

p.wrap_in_numshots_loop(shots)

qc = get_qc('2q-qvm')
results_list = qc.run(p)
results = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1], ""), results_list))
counts = dict(zip(results,[results.count(i) for i in results]))
print(counts)
