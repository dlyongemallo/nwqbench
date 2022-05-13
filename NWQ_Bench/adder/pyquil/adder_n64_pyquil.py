from pyquil import Program, get_qc
from pyquil.gates import CNOT, CCNOT, MEASURE, X
from functools import reduce
import numpy as np

shots = 1024

p = Program()

ro = p.declare('ro', memory_type='BIT', memory_size=128)

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
p.inst(X(13))
p.inst(X(14))
p.inst(X(15))
p.inst(X(16))
p.inst(X(17))
p.inst(X(18))
p.inst(X(19))
p.inst(X(20))
p.inst(X(21))
p.inst(X(22))
p.inst(X(23))
p.inst(X(24))
p.inst(X(25))
p.inst(X(26))
p.inst(X(27))
p.inst(X(28))
p.inst(X(56))
p.inst(CNOT(0, 28))
p.inst(CNOT(0, 56))
p.inst(CCNOT(56, 28, 0))
p.inst(CNOT(1, 29))
p.inst(CNOT(1, 0))
p.inst(CCNOT(0, 29, 1))
p.inst(CNOT(2, 30))
p.inst(CNOT(2, 1))
p.inst(CCNOT(1, 30, 2))
p.inst(CNOT(3, 31))
p.inst(CNOT(3, 2))
p.inst(CCNOT(2, 31, 3))
p.inst(CNOT(3, 57))
p.inst(CCNOT(2, 31, 3))
p.inst(CNOT(3, 2))
p.inst(CNOT(2, 31))
p.inst(CCNOT(1, 30, 2))
p.inst(CNOT(2, 1))
p.inst(CNOT(1, 30))
p.inst(CCNOT(0, 29, 1))
p.inst(CNOT(1, 0))
p.inst(CNOT(0, 29))
p.inst(CCNOT(56, 28, 0))
p.inst(CNOT(0, 56))
p.inst(CNOT(56, 28))
p.inst(CNOT(4, 32))
p.inst(CNOT(4, 57))
p.inst(CCNOT(57, 32, 4))
p.inst(CNOT(5, 33))
p.inst(CNOT(5, 4))
p.inst(CCNOT(4, 33, 5))
p.inst(CNOT(6, 34))
p.inst(CNOT(6, 5))
p.inst(CCNOT(5, 34, 6))
p.inst(CNOT(7, 35))
p.inst(CNOT(7, 6))
p.inst(CCNOT(6, 35, 7))
p.inst(CNOT(7, 58))
p.inst(CCNOT(6, 35, 7))
p.inst(CNOT(7, 6))
p.inst(CNOT(6, 35))
p.inst(CCNOT(5, 34, 6))
p.inst(CNOT(6, 5))
p.inst(CNOT(5, 34))
p.inst(CCNOT(4, 33, 5))
p.inst(CNOT(5, 4))
p.inst(CNOT(4, 33))
p.inst(CCNOT(57, 32, 4))
p.inst(CNOT(4, 57))
p.inst(CNOT(57, 32))
p.inst(CNOT(8, 36))
p.inst(CNOT(8, 58))
p.inst(CCNOT(58, 36, 8))
p.inst(CNOT(9, 37))
p.inst(CNOT(9, 8))
p.inst(CCNOT(8, 37, 9))
p.inst(CNOT(10, 38))
p.inst(CNOT(10, 9))
p.inst(CCNOT(9, 38, 10))
p.inst(CNOT(11, 39))
p.inst(CNOT(11, 10))
p.inst(CCNOT(10, 39, 11))
p.inst(CNOT(11, 59))
p.inst(CCNOT(10, 39, 11))
p.inst(CNOT(11, 10))
p.inst(CNOT(10, 39))
p.inst(CCNOT(9, 38, 10))
p.inst(CNOT(10, 9))
p.inst(CNOT(9, 38))
p.inst(CCNOT(8, 37, 9))
p.inst(CNOT(9, 8))
p.inst(CNOT(8, 37))
p.inst(CCNOT(58, 36, 8))
p.inst(CNOT(8, 58))
p.inst(CNOT(58, 36))
p.inst(CNOT(12, 40))
p.inst(CNOT(12, 59))
p.inst(CCNOT(59, 40, 12))
p.inst(CNOT(13, 41))
p.inst(CNOT(13, 12))
p.inst(CCNOT(12, 41, 13))
p.inst(CNOT(14, 42))
p.inst(CNOT(14, 13))
p.inst(CCNOT(13, 42, 14))
p.inst(CNOT(15, 43))
p.inst(CNOT(15, 14))
p.inst(CCNOT(14, 43, 15))
p.inst(CNOT(15, 60))
p.inst(CCNOT(14, 43, 15))
p.inst(CNOT(15, 14))
p.inst(CNOT(14, 43))
p.inst(CCNOT(13, 42, 14))
p.inst(CNOT(14, 13))
p.inst(CNOT(13, 42))
p.inst(CCNOT(12, 41, 13))
p.inst(CNOT(13, 12))
p.inst(CNOT(12, 41))
p.inst(CCNOT(59, 40, 12))
p.inst(CNOT(12, 59))
p.inst(CNOT(59, 40))
p.inst(CNOT(16, 44))
p.inst(CNOT(16, 60))
p.inst(CCNOT(60, 44, 16))
p.inst(CNOT(17, 45))
p.inst(CNOT(17, 16))
p.inst(CCNOT(16, 45, 17))
p.inst(CNOT(18, 46))
p.inst(CNOT(18, 17))
p.inst(CCNOT(17, 46, 18))
p.inst(CNOT(19, 47))
p.inst(CNOT(19, 18))
p.inst(CCNOT(18, 47, 19))
p.inst(CNOT(19, 61))
p.inst(CCNOT(18, 47, 19))
p.inst(CNOT(19, 18))
p.inst(CNOT(18, 47))
p.inst(CCNOT(17, 46, 18))
p.inst(CNOT(18, 17))
p.inst(CNOT(17, 46))
p.inst(CCNOT(16, 45, 17))
p.inst(CNOT(17, 16))
p.inst(CNOT(16, 45))
p.inst(CCNOT(60, 44, 16))
p.inst(CNOT(16, 60))
p.inst(CNOT(60, 44))
p.inst(CNOT(20, 48))
p.inst(CNOT(20, 61))
p.inst(CCNOT(61, 48, 20))
p.inst(CNOT(21, 49))
p.inst(CNOT(21, 20))
p.inst(CCNOT(20, 49, 21))
p.inst(CNOT(22, 50))
p.inst(CNOT(22, 21))
p.inst(CCNOT(21, 50, 22))
p.inst(CNOT(23, 51))
p.inst(CNOT(23, 22))
p.inst(CCNOT(22, 51, 23))
p.inst(CNOT(23, 62))
p.inst(CCNOT(22, 51, 23))
p.inst(CNOT(23, 22))
p.inst(CNOT(22, 51))
p.inst(CCNOT(21, 50, 22))
p.inst(CNOT(22, 21))
p.inst(CNOT(21, 50))
p.inst(CCNOT(20, 49, 21))
p.inst(CNOT(21, 20))
p.inst(CNOT(20, 49))
p.inst(CCNOT(61, 48, 20))
p.inst(CNOT(20, 61))
p.inst(CNOT(61, 48))
p.inst(CNOT(24, 52))
p.inst(CNOT(24, 62))
p.inst(CCNOT(62, 52, 24))
p.inst(CNOT(25, 53))
p.inst(CNOT(25, 24))
p.inst(CCNOT(24, 53, 25))
p.inst(CNOT(26, 54))
p.inst(CNOT(26, 25))
p.inst(CCNOT(25, 54, 26))
p.inst(CNOT(27, 55))
p.inst(CNOT(27, 26))
p.inst(CCNOT(26, 55, 27))
p.inst(CNOT(27, 63))
p.inst(CCNOT(26, 55, 27))
p.inst(CNOT(27, 26))
p.inst(CNOT(26, 55))
p.inst(CCNOT(25, 54, 26))
p.inst(CNOT(26, 25))
p.inst(CNOT(25, 54))
p.inst(CCNOT(24, 53, 25))
p.inst(CNOT(25, 24))
p.inst(CNOT(24, 53))
p.inst(CCNOT(62, 52, 24))
p.inst(CNOT(24, 62))
p.inst(CNOT(62, 52))
p.inst(MEASURE(0, ro[64]))
p.inst(MEASURE(1, ro[65]))
p.inst(MEASURE(2, ro[66]))
p.inst(MEASURE(3, ro[67]))
p.inst(MEASURE(4, ro[68]))
p.inst(MEASURE(5, ro[69]))
p.inst(MEASURE(6, ro[70]))
p.inst(MEASURE(7, ro[71]))
p.inst(MEASURE(8, ro[72]))
p.inst(MEASURE(9, ro[73]))
p.inst(MEASURE(10, ro[74]))
p.inst(MEASURE(11, ro[75]))
p.inst(MEASURE(12, ro[76]))
p.inst(MEASURE(13, ro[77]))
p.inst(MEASURE(14, ro[78]))
p.inst(MEASURE(15, ro[79]))
p.inst(MEASURE(16, ro[80]))
p.inst(MEASURE(17, ro[81]))
p.inst(MEASURE(18, ro[82]))
p.inst(MEASURE(19, ro[83]))
p.inst(MEASURE(20, ro[84]))
p.inst(MEASURE(21, ro[85]))
p.inst(MEASURE(22, ro[86]))
p.inst(MEASURE(23, ro[87]))
p.inst(MEASURE(24, ro[88]))
p.inst(MEASURE(25, ro[89]))
p.inst(MEASURE(26, ro[90]))
p.inst(MEASURE(27, ro[91]))
p.inst(MEASURE(28, ro[92]))
p.inst(MEASURE(29, ro[93]))
p.inst(MEASURE(30, ro[94]))
p.inst(MEASURE(31, ro[95]))
p.inst(MEASURE(32, ro[96]))
p.inst(MEASURE(33, ro[97]))
p.inst(MEASURE(34, ro[98]))
p.inst(MEASURE(35, ro[99]))
p.inst(MEASURE(36, ro[100]))
p.inst(MEASURE(37, ro[101]))
p.inst(MEASURE(38, ro[102]))
p.inst(MEASURE(39, ro[103]))
p.inst(MEASURE(40, ro[104]))
p.inst(MEASURE(41, ro[105]))
p.inst(MEASURE(42, ro[106]))
p.inst(MEASURE(43, ro[107]))
p.inst(MEASURE(44, ro[108]))
p.inst(MEASURE(45, ro[109]))
p.inst(MEASURE(46, ro[110]))
p.inst(MEASURE(47, ro[111]))
p.inst(MEASURE(48, ro[112]))
p.inst(MEASURE(49, ro[113]))
p.inst(MEASURE(50, ro[114]))
p.inst(MEASURE(51, ro[115]))
p.inst(MEASURE(52, ro[116]))
p.inst(MEASURE(53, ro[117]))
p.inst(MEASURE(54, ro[118]))
p.inst(MEASURE(55, ro[119]))
p.inst(MEASURE(56, ro[120]))
p.inst(MEASURE(57, ro[121]))
p.inst(MEASURE(58, ro[122]))
p.inst(MEASURE(59, ro[123]))
p.inst(MEASURE(60, ro[124]))
p.inst(MEASURE(61, ro[125]))
p.inst(MEASURE(62, ro[126]))
p.inst(MEASURE(63, ro[127]))

p.wrap_in_numshots_loop(shots)

qc = get_qc('64q-qvm')
results_list = qc.run(p)
results = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1], ""), results_list))
counts = dict(zip(results,[results.count(i) for i in results]))
print(counts)
