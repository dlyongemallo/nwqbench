import cirq
import numpy as np
from functools import reduce

q = [cirq.NamedQubit('q' + str(i)) for i in range(20)]

circuit = cirq.Circuit(
    cirq.X(q[13]),
    cirq.X(q[16]),
    cirq.X(q[17]),
    cirq.CCX(q[16], q[12], q[1]),
    cirq.CCX(q[1], q[2], q[3]),
    cirq.CCX(q[16], q[13], q[4]),
    cirq.CNOT(q[1], q[2]),
    cirq.CCX(q[4], q[5], q[6]),
    cirq.CCX(q[16], q[14], q[7]),
    cirq.CCX(q[0], q[2], q[3]),
    cirq.CNOT(q[4], q[5]),
    cirq.CCX(q[7], q[8], q[9]),
    cirq.CCX(q[16], q[15], q[10]),
    cirq.CCX(q[3], q[5], q[6]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[10], q[11]),
    cirq.CCX(q[6], q[8], q[9]),
    cirq.CNOT(q[9], q[11]),
    cirq.CCX(q[6], q[8], q[9]),
    cirq.CNOT(q[7], q[8]),
    cirq.CCX(q[7], q[8], q[9]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[6], q[8]),
    cirq.CCX(q[3], q[5], q[6]),
    cirq.CNOT(q[4], q[5]),
    cirq.CCX(q[4], q[5], q[6]),
    cirq.CNOT(q[4], q[5]),
    cirq.CNOT(q[3], q[5]),
    cirq.CCX(q[0], q[2], q[3]),
    cirq.CNOT(q[1], q[2]),
    cirq.CCX(q[1], q[2], q[3]),
    cirq.CNOT(q[1], q[2]),
    cirq.CNOT(q[0], q[2]),
    cirq.CCX(q[16], q[12], q[1]),
    cirq.CCX(q[1], q[2], q[3]),
    cirq.CCX(q[16], q[13], q[4]),
    cirq.CNOT(q[1], q[2]),
    cirq.CCX(q[16], q[14], q[7]),
    cirq.CCX(q[0], q[2], q[3]),
    cirq.CCX(q[16], q[15], q[10]),
    cirq.CCX(q[17], q[12], q[4]),
    cirq.CCX(q[4], q[5], q[6]),
    cirq.CCX(q[17], q[13], q[7]),
    cirq.CNOT(q[4], q[5]),
    cirq.CCX(q[7], q[8], q[9]),
    cirq.CCX(q[17], q[14], q[10]),
    cirq.CCX(q[3], q[5], q[6]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[10], q[11]),
    cirq.CCX(q[6], q[8], q[9]),
    cirq.CNOT(q[9], q[11]),
    cirq.CCX(q[6], q[8], q[9]),
    cirq.CNOT(q[7], q[8]),
    cirq.CCX(q[7], q[8], q[9]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[6], q[8]),
    cirq.CCX(q[3], q[5], q[6]),
    cirq.CNOT(q[4], q[5]),
    cirq.CCX(q[4], q[5], q[6]),
    cirq.CNOT(q[4], q[5]),
    cirq.CNOT(q[3], q[5]),
    cirq.CCX(q[0], q[2], q[3]),
    cirq.CCX(q[17], q[12], q[4]),
    cirq.CNOT(q[1], q[2]),
    cirq.CCX(q[4], q[5], q[6]),
    cirq.CCX(q[17], q[13], q[7]),
    cirq.CCX(q[1], q[2], q[3]),
    cirq.CNOT(q[4], q[5]),
    cirq.CCX(q[17], q[14], q[10]),
    cirq.CNOT(q[1], q[2]),
    cirq.CCX(q[18], q[12], q[7]),
    cirq.CNOT(q[0], q[2]),
    cirq.CCX(q[7], q[8], q[9]),
    cirq.CCX(q[18], q[13], q[10]),
    cirq.CCX(q[1], q[2], q[3]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[10], q[11]),
    cirq.CNOT(q[1], q[2]),
    cirq.CCX(q[0], q[2], q[3]),
    cirq.CCX(q[3], q[5], q[6]),
    cirq.CCX(q[6], q[8], q[9]),
    cirq.CNOT(q[9], q[11]),
    cirq.CCX(q[6], q[8], q[9]),
    cirq.CNOT(q[7], q[8]),
    cirq.CCX(q[7], q[8], q[9]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[6], q[8]),
    cirq.CCX(q[3], q[5], q[6]),
    cirq.CCX(q[18], q[12], q[7]),
    cirq.CNOT(q[4], q[5]),
    cirq.CCX(q[7], q[8], q[9]),
    cirq.CCX(q[18], q[13], q[10]),
    cirq.CCX(q[4], q[5], q[6]),
    cirq.CNOT(q[7], q[8]),
    cirq.CCX(q[19], q[12], q[10]),
    cirq.CNOT(q[4], q[5]),
    cirq.CNOT(q[10], q[11]),
    cirq.CNOT(q[3], q[5]),
    cirq.CCX(q[0], q[2], q[3]),
    cirq.CCX(q[4], q[5], q[6]),
    cirq.CNOT(q[1], q[2]),
    cirq.CNOT(q[4], q[5]),
    cirq.CCX(q[1], q[2], q[3]),
    cirq.CNOT(q[1], q[2]),
    cirq.CNOT(q[0], q[2]),
    cirq.CCX(q[1], q[2], q[3]),
    cirq.CNOT(q[1], q[2]),
    cirq.CCX(q[0], q[2], q[3]),
    cirq.CCX(q[3], q[5], q[6]),
    cirq.CCX(q[6], q[8], q[9]),
    cirq.CNOT(q[9], q[11]),
    cirq.CCX(q[6], q[8], q[9]),
    cirq.CCX(q[19], q[12], q[10]),
    cirq.CNOT(q[7], q[8]),
    cirq.CCX(q[7], q[8], q[9]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[6], q[8]),
    cirq.CCX(q[3], q[5], q[6]),
    cirq.CNOT(q[4], q[5]),
    cirq.CCX(q[4], q[5], q[6]),
    cirq.CNOT(q[4], q[5]),
    cirq.CNOT(q[3], q[5]),
    cirq.CCX(q[0], q[2], q[3]),
    cirq.CNOT(q[1], q[2]),
    cirq.CCX(q[1], q[2], q[3]),
    cirq.CNOT(q[1], q[2]),
    cirq.CNOT(q[0], q[2]),
    cirq.measure(q[2], key='c00'),
    cirq.measure(q[5], key='c01'),
    cirq.measure(q[8], key='c02'),
    cirq.measure(q[11], key='c03')
)

simulator = cirq.Simulator()
result = simulator.run(circuit, repetitions=1024)
result_dict = dict(result.multi_measurement_histogram(keys=['c00', 'c01', 'c02', 'c03', ]))
keys = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1]), result_dict.keys()))
counts = dict(zip(keys,[value for value in result_dict.values()]))
print(counts)