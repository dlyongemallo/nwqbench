from pyquil import Program, get_qc
from pyquil.gates import H, RZ, CNOT, RY, CZ, MEASURE
from functools import reduce
import numpy as np

shots = 1024

p = Program()

ro = p.declare('ro', memory_type='BIT', memory_size=14)

p.inst(H(0))
p.inst(H(1))
p.inst(H(2))
p.inst(H(3))
p.inst(H(4))
p.inst(H(5))
p.inst(H(6))
p.inst(RZ(0.061746479, 0))
p.inst(RZ(2.7965488, 1))
p.inst(RZ(1.2942629, 2))
p.inst(RZ(2.7055942, 3))
p.inst(RZ(3.0888028, 4))
p.inst(RZ(1.2473229, 5))
p.inst(RZ(1.8772195, 6))
p.inst(CNOT(0, 1))
p.inst(RZ(2.3067718, 1))
p.inst(CNOT(0, 1))
p.inst(RY(0.75492671, 0))
p.inst(CNOT(1, 2))
p.inst(RZ(2.5752432, 0))
p.inst(RZ(0.53518449, 2))
p.inst(CNOT(1, 2))
p.inst(RY(2.479805, 1))
p.inst(CNOT(2, 3))
p.inst(RZ(1.2608489, 1))
p.inst(RZ(0.18265939, 3))
p.inst(CZ(0, 1))
p.inst(CNOT(2, 3))
p.inst(RY(2.4500329, 2))
p.inst(CNOT(3, 4))
p.inst(RZ(2.8002554, 2))
p.inst(RZ(0.14356041, 4))
p.inst(CZ(0, 2))
p.inst(CNOT(3, 4))
p.inst(RY(0.41270112, 3))
p.inst(CNOT(4, 5))
p.inst(RZ(2.0755942, 3))
p.inst(RZ(0.90093914, 5))
p.inst(CZ(0, 3))
p.inst(CNOT(4, 5))
p.inst(RY(2.3214174, 4))
p.inst(CNOT(5, 6))
p.inst(RZ(2.4902515, 4))
p.inst(RZ(0.70476932, 6))
p.inst(CZ(0, 4))
p.inst(CNOT(5, 6))
p.inst(RY(2.5042328, 5))
p.inst(RY(1.0951026, 6))
p.inst(RZ(3.0520425, 5))
p.inst(RZ(2.7412258, 6))
p.inst(CZ(0, 5))
p.inst(CZ(0, 6))
p.inst(RY(0.028464096, 0))
p.inst(CZ(1, 2))
p.inst(RZ(0.67373494, 0))
p.inst(CZ(1, 3))
p.inst(CZ(1, 4))
p.inst(CZ(1, 5))
p.inst(CZ(1, 6))
p.inst(RY(2.6292019, 1))
p.inst(CZ(2, 3))
p.inst(RZ(2.5904737, 1))
p.inst(CZ(2, 4))
p.inst(CZ(0, 1))
p.inst(CZ(2, 5))
p.inst(CZ(2, 6))
p.inst(RY(1.5608658, 2))
p.inst(CZ(3, 4))
p.inst(RZ(1.9889345, 2))
p.inst(CZ(3, 5))
p.inst(CZ(0, 2))
p.inst(CZ(3, 6))
p.inst(RY(0.96005601, 3))
p.inst(CZ(4, 5))
p.inst(RZ(0.64122404, 3))
p.inst(CZ(4, 6))
p.inst(CZ(0, 3))
p.inst(RY(1.8476801, 4))
p.inst(CZ(5, 6))
p.inst(RZ(0.58436478, 4))
p.inst(RY(1.7380239, 5))
p.inst(RY(1.6633512, 6))
p.inst(CZ(0, 4))
p.inst(RZ(3.1249111, 5))
p.inst(RZ(0.82860035, 6))
p.inst(CZ(0, 5))
p.inst(CZ(0, 6))
p.inst(RY(2.9818792, 0))
p.inst(CZ(1, 2))
p.inst(RZ(3.0533654, 0))
p.inst(CZ(1, 3))
p.inst(CZ(1, 4))
p.inst(CZ(1, 5))
p.inst(CZ(1, 6))
p.inst(RY(0.46640615, 1))
p.inst(CZ(2, 3))
p.inst(RZ(0.28833455, 1))
p.inst(CZ(2, 4))
p.inst(CZ(0, 1))
p.inst(CZ(2, 5))
p.inst(CZ(2, 6))
p.inst(RY(2.3577123, 2))
p.inst(CZ(3, 4))
p.inst(RZ(0.69895019, 2))
p.inst(CZ(3, 5))
p.inst(CZ(0, 2))
p.inst(CZ(3, 6))
p.inst(RY(0.54382, 3))
p.inst(CZ(4, 5))
p.inst(RZ(2.1833943, 3))
p.inst(CZ(4, 6))
p.inst(CZ(0, 3))
p.inst(RY(2.1692571, 4))
p.inst(CZ(5, 6))
p.inst(RZ(0.69129634, 4))
p.inst(RY(1.3545207, 5))
p.inst(RY(0.64753279, 6))
p.inst(CZ(0, 4))
p.inst(RZ(1.3572003, 5))
p.inst(RZ(2.5361083, 6))
p.inst(CZ(0, 5))
p.inst(CZ(0, 6))
p.inst(RY(1.4090181, 0))
p.inst(CZ(1, 2))
p.inst(RZ(2.11687, 0))
p.inst(CZ(1, 3))
p.inst(CZ(1, 4))
p.inst(CZ(1, 5))
p.inst(CZ(1, 6))
p.inst(RY(0.11502726, 1))
p.inst(CZ(2, 3))
p.inst(RZ(2.1837471, 1))
p.inst(CZ(2, 4))
p.inst(CZ(0, 1))
p.inst(CZ(2, 5))
p.inst(CZ(2, 6))
p.inst(RY(0.27630981, 2))
p.inst(CZ(3, 4))
p.inst(RZ(2.3212155, 2))
p.inst(CZ(3, 5))
p.inst(CZ(0, 2))
p.inst(CZ(3, 6))
p.inst(RY(1.6033238, 3))
p.inst(CZ(4, 5))
p.inst(RZ(0.62591067, 3))
p.inst(CZ(4, 6))
p.inst(CZ(0, 3))
p.inst(RY(0.026473999, 4))
p.inst(CZ(5, 6))
p.inst(RZ(2.9076185, 4))
p.inst(RY(0.33412436, 5))
p.inst(RY(1.7297581, 6))
p.inst(CZ(0, 4))
p.inst(RZ(0.22548423, 5))
p.inst(RZ(1.0798938, 6))
p.inst(CZ(0, 5))
p.inst(CZ(0, 6))
p.inst(CZ(1, 2))
p.inst(CZ(1, 3))
p.inst(CZ(1, 4))
p.inst(CZ(1, 5))
p.inst(CZ(1, 6))
p.inst(CZ(2, 3))
p.inst(CZ(2, 4))
p.inst(CZ(2, 5))
p.inst(CZ(2, 6))
p.inst(CZ(3, 4))
p.inst(CZ(3, 5))
p.inst(CZ(3, 6))
p.inst(CZ(4, 5))
p.inst(CZ(4, 6))
p.inst(CZ(5, 6))
p.inst(MEASURE(0, ro[7]))
p.inst(MEASURE(1, ro[8]))
p.inst(MEASURE(2, ro[9]))
p.inst(MEASURE(3, ro[10]))
p.inst(MEASURE(4, ro[11]))
p.inst(MEASURE(5, ro[12]))
p.inst(MEASURE(6, ro[13]))

p.wrap_in_numshots_loop(shots)

qc = get_qc('7q-qvm')
results_list = qc.run(p)
results = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1], ""), results_list))
counts = dict(zip(results,[results.count(i) for i in results]))
print(counts)
