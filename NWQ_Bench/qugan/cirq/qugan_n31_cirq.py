import cirq
import numpy as np
from functools import reduce

def u2(p_phi, p_lambda):
    return cirq.MatrixGate(np.array([[1/np.sqrt(2), -np.exp(1j*p_lambda)*1/np.sqrt(2)], [np.exp(1j*p_phi)*1/np.sqrt(2), np.exp(1j*p_lambda+1j*p_phi)*1/np.sqrt(2)]]))

def u3(p_theta, p_phi, p_lambda):
    return cirq.MatrixGate(np.array([[np.cos(p_theta/2), -np.exp(1j*p_lambda)*np.sin(p_theta/2)], [np.exp(1j*p_phi)*np.sin(p_theta/2), np.exp(1j*p_lambda+1j*p_phi)*np.cos(p_theta/2)]]))

q = [cirq.NamedQubit('q' + str(i)) for i in range(31)]

circuit = cirq.Circuit(
    u2(np.pi, np.pi)(q[0]),
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    # Export to cirq WARNING: unknown gate "r".,
    cirq.rx(np.pi / 2)(q[1]),
    cirq.rx(np.pi / 2)(q[2]),
    cirq.rx(np.pi / 2)(q[3]),
    cirq.rx(np.pi / 2)(q[4]),
    cirq.rx(np.pi / 2)(q[5]),
    cirq.rx(np.pi / 2)(q[6]),
    cirq.rx(np.pi / 2)(q[7]),
    cirq.rx(np.pi / 2)(q[8]),
    cirq.rx(np.pi / 2)(q[9]),
    cirq.rx(np.pi / 2)(q[10]),
    cirq.rx(np.pi / 2)(q[11]),
    cirq.rx(np.pi / 2)(q[12]),
    cirq.rx(np.pi / 2)(q[13]),
    cirq.rx(np.pi / 2)(q[14]),
    cirq.rx(np.pi / 2)(q[15]),
    cirq.rx(np.pi / 2)(q[16]),
    cirq.rx(np.pi / 2)(q[17]),
    cirq.rx(np.pi / 2)(q[18]),
    cirq.rx(np.pi / 2)(q[19]),
    cirq.rx(np.pi / 2)(q[20]),
    cirq.rx(np.pi / 2)(q[21]),
    cirq.rx(np.pi / 2)(q[22]),
    cirq.rx(np.pi / 2)(q[23]),
    cirq.rx(np.pi / 2)(q[24]),
    cirq.rx(np.pi / 2)(q[25]),
    cirq.rx(np.pi / 2)(q[26]),
    cirq.rx(np.pi / 2)(q[27]),
    cirq.rx(np.pi / 2)(q[28]),
    cirq.rx(np.pi / 2)(q[29]),
    cirq.rx(np.pi / 2)(q[30]),
    cirq.CNOT(q[1], q[2]),
    cirq.CNOT(q[16], q[17]),
    cirq.rz(1.2977392)(q[2]),
    cirq.rz(2.2214731)(q[17]),
    cirq.CNOT(q[1], q[2]),
    cirq.CNOT(q[16], q[17]),
    cirq.rx(-np.pi / 2)(q[1]),
    cirq.rx(-np.pi / 2)(q[2]),
    cirq.rx(-np.pi / 2)(q[16]),
    cirq.rx(-np.pi / 2)(q[17]),
    u3(0, 0, 0)(q[2]),
    u3(0, 0, 0)(q[17]),
    cirq.CNOT(q[1], q[2]),
    cirq.CNOT(q[16], q[17]),
    u3(-1.4432896, 0, 0)(q[2]),
    u3(-1.4239223, 0, 0)(q[17]),
    cirq.CNOT(q[1], q[2]),
    cirq.CNOT(q[16], q[17]),
    cirq.rx(np.pi / 2)(q[2]),
    cirq.rx(np.pi / 2)(q[17]),
    cirq.CNOT(q[2], q[3]),
    cirq.CNOT(q[17], q[18]),
    cirq.rz(2.8649402)(q[3]),
    cirq.rz(0.81255174)(q[18]),
    cirq.CNOT(q[2], q[3]),
    cirq.CNOT(q[17], q[18]),
    cirq.rx(-np.pi / 2)(q[2]),
    cirq.rx(-np.pi / 2)(q[3]),
    cirq.rx(-np.pi / 2)(q[17]),
    cirq.rx(-np.pi / 2)(q[18]),
    u3(0, 0, 0)(q[3]),
    u3(0, 0, 0)(q[18]),
    cirq.CNOT(q[2], q[3]),
    cirq.CNOT(q[17], q[18]),
    u3(-0.60753935, 0, 0)(q[3]),
    u3(-0.42437439, 0, 0)(q[18]),
    cirq.CNOT(q[2], q[3]),
    cirq.CNOT(q[17], q[18]),
    cirq.rx(np.pi / 2)(q[3]),
    cirq.rx(np.pi / 2)(q[18]),
    cirq.CNOT(q[3], q[4]),
    cirq.CNOT(q[18], q[19]),
    cirq.rz(1.2287728)(q[4]),
    cirq.rz(1.5930278)(q[19]),
    cirq.CNOT(q[3], q[4]),
    cirq.CNOT(q[18], q[19]),
    cirq.rx(-np.pi / 2)(q[3]),
    cirq.rx(-np.pi / 2)(q[4]),
    cirq.rx(-np.pi / 2)(q[18]),
    cirq.rx(-np.pi / 2)(q[19]),
    u3(0, 0, 0)(q[4]),
    u3(0, 0, 0)(q[19]),
    cirq.CNOT(q[3], q[4]),
    cirq.CNOT(q[18], q[19]),
    u3(-0.89724501, 0, 0)(q[4]),
    u3(-0.39638608, 0, 0)(q[19]),
    cirq.CNOT(q[3], q[4]),
    cirq.CNOT(q[18], q[19]),
    cirq.rx(np.pi / 2)(q[4]),
    cirq.rx(np.pi / 2)(q[19]),
    cirq.CNOT(q[4], q[5]),
    cirq.CNOT(q[19], q[20]),
    cirq.rz(0.88703672)(q[5]),
    cirq.rz(2.6889413)(q[20]),
    cirq.CNOT(q[4], q[5]),
    cirq.CNOT(q[19], q[20]),
    cirq.rx(-np.pi / 2)(q[4]),
    cirq.rx(-np.pi / 2)(q[5]),
    cirq.rx(-np.pi / 2)(q[19]),
    cirq.rx(-np.pi / 2)(q[20]),
    u3(0, 0, 0)(q[5]),
    u3(0, 0, 0)(q[20]),
    cirq.CNOT(q[4], q[5]),
    cirq.CNOT(q[19], q[20]),
    u3(-0.56500464, 0, 0)(q[5]),
    u3(-0.5119179, 0, 0)(q[20]),
    cirq.CNOT(q[4], q[5]),
    cirq.CNOT(q[19], q[20]),
    cirq.rx(np.pi / 2)(q[5]),
    cirq.rx(np.pi / 2)(q[20]),
    cirq.CNOT(q[5], q[6]),
    cirq.CNOT(q[20], q[21]),
    cirq.rz(1.1945889)(q[6]),
    cirq.rz(2.221667)(q[21]),
    cirq.CNOT(q[5], q[6]),
    cirq.CNOT(q[20], q[21]),
    cirq.rx(-np.pi / 2)(q[5]),
    cirq.rx(-np.pi / 2)(q[6]),
    cirq.rx(-np.pi / 2)(q[20]),
    cirq.rx(-np.pi / 2)(q[21]),
    u3(0, 0, 0)(q[6]),
    u3(0, 0, 0)(q[21]),
    cirq.CNOT(q[5], q[6]),
    cirq.CNOT(q[20], q[21]),
    u3(-0.78663791, 0, 0)(q[6]),
    u3(-0.69135081, 0, 0)(q[21]),
    cirq.CNOT(q[5], q[6]),
    cirq.CNOT(q[20], q[21]),
    cirq.rx(np.pi / 2)(q[6]),
    cirq.rx(np.pi / 2)(q[21]),
    cirq.CNOT(q[6], q[7]),
    cirq.CNOT(q[21], q[22]),
    cirq.rz(0.98968875)(q[7]),
    cirq.rz(2.2607776)(q[22]),
    cirq.CNOT(q[6], q[7]),
    cirq.CNOT(q[21], q[22]),
    cirq.rx(-np.pi / 2)(q[6]),
    cirq.rx(-np.pi / 2)(q[7]),
    cirq.rx(-np.pi / 2)(q[21]),
    cirq.rx(-np.pi / 2)(q[22]),
    u3(0, 0, 0)(q[7]),
    u3(0, 0, 0)(q[22]),
    cirq.CNOT(q[6], q[7]),
    cirq.CNOT(q[21], q[22]),
    u3(-1.3825416, 0, 0)(q[7]),
    u3(-0.67053226, 0, 0)(q[22]),
    cirq.CNOT(q[6], q[7]),
    cirq.CNOT(q[21], q[22]),
    cirq.rx(np.pi / 2)(q[7]),
    cirq.rx(np.pi / 2)(q[22]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[22], q[23]),
    cirq.rz(2.8925702)(q[8]),
    cirq.rz(0.70521178)(q[23]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[22], q[23]),
    cirq.rx(-np.pi / 2)(q[7]),
    cirq.rx(-np.pi / 2)(q[8]),
    cirq.rx(-np.pi / 2)(q[22]),
    cirq.rx(-np.pi / 2)(q[23]),
    u3(0, 0, 0)(q[8]),
    u3(0, 0, 0)(q[23]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[22], q[23]),
    u3(-1.5320829, 0, 0)(q[8]),
    u3(-1.2476792, 0, 0)(q[23]),
    cirq.CNOT(q[7], q[8]),
    cirq.CNOT(q[22], q[23]),
    cirq.rx(np.pi / 2)(q[8]),
    cirq.rx(np.pi / 2)(q[23]),
    cirq.CNOT(q[8], q[9]),
    cirq.CNOT(q[23], q[24]),
    cirq.rz(2.6101061)(q[9]),
    cirq.rz(0.44044227)(q[24]),
    cirq.CNOT(q[8], q[9]),
    cirq.CNOT(q[23], q[24]),
    cirq.rx(-np.pi / 2)(q[8]),
    cirq.rx(-np.pi / 2)(q[9]),
    cirq.rx(-np.pi / 2)(q[23]),
    cirq.rx(-np.pi / 2)(q[24]),
    u3(0, 0, 0)(q[9]),
    u3(0, 0, 0)(q[24]),
    cirq.CNOT(q[8], q[9]),
    cirq.CNOT(q[23], q[24]),
    u3(-0.67987172, 0, 0)(q[9]),
    u3(-0.57223555, 0, 0)(q[24]),
    cirq.CNOT(q[8], q[9]),
    cirq.CNOT(q[23], q[24]),
    cirq.rx(np.pi / 2)(q[9]),
    cirq.rx(np.pi / 2)(q[24]),
    cirq.CNOT(q[9], q[10]),
    cirq.CNOT(q[24], q[25]),
    cirq.rz(0.67584848)(q[10]),
    cirq.rz(2.4825481)(q[25]),
    cirq.CNOT(q[9], q[10]),
    cirq.CNOT(q[24], q[25]),
    cirq.rx(-np.pi / 2)(q[9]),
    cirq.rx(-np.pi / 2)(q[10]),
    cirq.rx(-np.pi / 2)(q[24]),
    cirq.rx(-np.pi / 2)(q[25]),
    u3(0, 0, 0)(q[10]),
    u3(0, 0, 0)(q[25]),
    cirq.CNOT(q[9], q[10]),
    cirq.CNOT(q[24], q[25]),
    u3(-0.30508649, 0, 0)(q[10]),
    u3(-0.087312936, 0, 0)(q[25]),
    cirq.CNOT(q[9], q[10]),
    cirq.CNOT(q[24], q[25]),
    cirq.rx(np.pi / 2)(q[10]),
    cirq.rx(np.pi / 2)(q[25]),
    cirq.CNOT(q[10], q[11]),
    cirq.CNOT(q[25], q[26]),
    cirq.rz(2.8535391)(q[11]),
    cirq.rz(0.022614947)(q[26]),
    cirq.CNOT(q[10], q[11]),
    cirq.CNOT(q[25], q[26]),
    cirq.rx(-np.pi / 2)(q[10]),
    cirq.rx(-np.pi / 2)(q[11]),
    cirq.rx(-np.pi / 2)(q[25]),
    cirq.rx(-np.pi / 2)(q[26]),
    u3(0, 0, 0)(q[11]),
    u3(0, 0, 0)(q[26]),
    cirq.CNOT(q[10], q[11]),
    cirq.CNOT(q[25], q[26]),
    u3(-1.1107695, 0, 0)(q[11]),
    u3(-1.1183785, 0, 0)(q[26]),
    cirq.CNOT(q[10], q[11]),
    cirq.CNOT(q[25], q[26]),
    cirq.rx(np.pi / 2)(q[11]),
    cirq.rx(np.pi / 2)(q[26]),
    cirq.CNOT(q[11], q[12]),
    cirq.CNOT(q[26], q[27]),
    cirq.rz(0.70415312)(q[12]),
    cirq.rz(2.2450724)(q[27]),
    cirq.CNOT(q[11], q[12]),
    cirq.CNOT(q[26], q[27]),
    cirq.rx(-np.pi / 2)(q[11]),
    cirq.rx(-np.pi / 2)(q[12]),
    cirq.rx(-np.pi / 2)(q[26]),
    cirq.rx(-np.pi / 2)(q[27]),
    u3(0, 0, 0)(q[12]),
    u3(0, 0, 0)(q[27]),
    cirq.CNOT(q[11], q[12]),
    cirq.CNOT(q[26], q[27]),
    u3(-0.031031735, 0, 0)(q[12]),
    u3(-1.3044612, 0, 0)(q[27]),
    cirq.CNOT(q[11], q[12]),
    cirq.CNOT(q[26], q[27]),
    cirq.rx(np.pi / 2)(q[12]),
    cirq.rx(np.pi / 2)(q[27]),
    cirq.CNOT(q[12], q[13]),
    cirq.CNOT(q[27], q[28]),
    cirq.rz(0.60245421)(q[13]),
    cirq.rz(3.0687889)(q[28]),
    cirq.CNOT(q[12], q[13]),
    cirq.CNOT(q[27], q[28]),
    cirq.rx(-np.pi / 2)(q[12]),
    cirq.rx(-np.pi / 2)(q[13]),
    cirq.rx(-np.pi / 2)(q[27]),
    cirq.rx(-np.pi / 2)(q[28]),
    u3(0, 0, 0)(q[13]),
    u3(0, 0, 0)(q[28]),
    cirq.CNOT(q[12], q[13]),
    cirq.CNOT(q[27], q[28]),
    u3(-0.14378759, 0, 0)(q[13]),
    u3(-0.3777522, 0, 0)(q[28]),
    cirq.CNOT(q[12], q[13]),
    cirq.CNOT(q[27], q[28]),
    cirq.rx(np.pi / 2)(q[13]),
    cirq.rx(np.pi / 2)(q[28]),
    cirq.CNOT(q[13], q[14]),
    cirq.CNOT(q[28], q[29]),
    cirq.rz(0.9650285)(q[14]),
    cirq.rz(1.039868)(q[29]),
    cirq.CNOT(q[13], q[14]),
    cirq.CNOT(q[28], q[29]),
    cirq.rx(-np.pi / 2)(q[13]),
    cirq.rx(-np.pi / 2)(q[14]),
    cirq.rx(-np.pi / 2)(q[28]),
    cirq.rx(-np.pi / 2)(q[29]),
    u3(0, 0, 0)(q[14]),
    u3(0, 0, 0)(q[29]),
    cirq.CNOT(q[13], q[14]),
    cirq.CNOT(q[28], q[29]),
    u3(-0.15877809, 0, 0)(q[14]),
    u3(-0.22709394, 0, 0)(q[29]),
    cirq.CNOT(q[13], q[14]),
    cirq.CNOT(q[28], q[29]),
    cirq.rx(np.pi / 2)(q[14]),
    cirq.rx(np.pi / 2)(q[29]),
    cirq.CNOT(q[14], q[15]),
    cirq.CNOT(q[29], q[30]),
    cirq.rz(1.8244342)(q[15]),
    cirq.rz(0.85073632)(q[30]),
    cirq.CNOT(q[14], q[15]),
    cirq.CNOT(q[29], q[30]),
    cirq.rx(-np.pi / 2)(q[14]),
    cirq.rx(-np.pi / 2)(q[15]),
    cirq.rx(-np.pi / 2)(q[29]),
    cirq.rx(-np.pi / 2)(q[30]),
    u3(0, 0, 0)(q[15]),
    u3(0, 0, 0)(q[30]),
    cirq.CNOT(q[14], q[15]),
    cirq.CNOT(q[29], q[30]),
    u3(-0.84721245, 0, 0)(q[15]),
    u3(-0.45886514, 0, 0)(q[30]),
    cirq.CNOT(q[14], q[15]),
    cirq.CNOT(q[29], q[30]),
    cirq.CNOT(q[16], q[1]),
    cirq.CCX(q[0], q[1], q[16]),
    cirq.CNOT(q[16], q[1]),
    cirq.CNOT(q[17], q[2]),
    cirq.CCX(q[0], q[2], q[17]),
    cirq.CNOT(q[17], q[2]),
    cirq.CNOT(q[18], q[3]),
    cirq.CCX(q[0], q[3], q[18]),
    cirq.CNOT(q[18], q[3]),
    cirq.CNOT(q[19], q[4]),
    cirq.CCX(q[0], q[4], q[19]),
    cirq.CNOT(q[19], q[4]),
    cirq.CNOT(q[20], q[5]),
    cirq.CCX(q[0], q[5], q[20]),
    cirq.CNOT(q[20], q[5]),
    cirq.CNOT(q[21], q[6]),
    cirq.CCX(q[0], q[6], q[21]),
    cirq.CNOT(q[21], q[6]),
    cirq.CNOT(q[22], q[7]),
    cirq.CCX(q[0], q[7], q[22]),
    cirq.CNOT(q[22], q[7]),
    cirq.CNOT(q[23], q[8]),
    cirq.CCX(q[0], q[8], q[23]),
    cirq.CNOT(q[23], q[8]),
    cirq.CNOT(q[24], q[9]),
    cirq.CCX(q[0], q[9], q[24]),
    cirq.CNOT(q[24], q[9]),
    cirq.CNOT(q[25], q[10]),
    cirq.CCX(q[0], q[10], q[25]),
    cirq.CNOT(q[25], q[10]),
    cirq.CNOT(q[26], q[11]),
    cirq.CCX(q[0], q[11], q[26]),
    cirq.CNOT(q[26], q[11]),
    cirq.CNOT(q[27], q[12]),
    cirq.CCX(q[0], q[12], q[27]),
    cirq.CNOT(q[27], q[12]),
    cirq.CNOT(q[28], q[13]),
    cirq.CCX(q[0], q[13], q[28]),
    cirq.CNOT(q[28], q[13]),
    cirq.CNOT(q[29], q[14]),
    cirq.CCX(q[0], q[14], q[29]),
    cirq.CNOT(q[29], q[14]),
    cirq.CNOT(q[30], q[15]),
    cirq.CCX(q[0], q[15], q[30]),
    u2(np.pi, np.pi)(q[0]),
    cirq.CNOT(q[30], q[15]),
    cirq.measure(q[16], key='c00'),
    cirq.measure(q[17], key='c01'),
    cirq.measure(q[18], key='c02'),
    cirq.measure(q[19], key='c03'),
    cirq.measure(q[20], key='c04'),
    cirq.measure(q[21], key='c05'),
    cirq.measure(q[22], key='c06'),
    cirq.measure(q[23], key='c07'),
    cirq.measure(q[24], key='c08'),
    cirq.measure(q[25], key='c09'),
    cirq.measure(q[26], key='c010'),
    cirq.measure(q[27], key='c011'),
    cirq.measure(q[28], key='c012'),
    cirq.measure(q[29], key='c013'),
    cirq.measure(q[30], key='c014')
)

simulator = cirq.Simulator()
result = simulator.run(circuit, repetitions=1024)
result_dict = dict(result.multi_measurement_histogram(keys=['c00', 'c01', 'c02', 'c03', 'c04', 'c05', 'c06', 'c07', 'c08', 'c09', 'c010', 'c011', 'c012', 'c013', 'c014']))
keys = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1]), result_dict.keys()))
counts = dict(zip(keys,[value for value in result_dict.values()]))
print(counts)