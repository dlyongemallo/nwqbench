from pyquil import Program, get_qc
from pyquil.gates import CCNOT, CNOT, MEASURE, X
from functools import reduce
import numpy as np

shots = 1024

p = Program()

ro = p.declare('ro', memory_type='BIT', memory_size=10)

p.inst(X(32))
p.inst(X(34))
p.inst(X(35))
p.inst(X(43))
p.inst(X(46))
p.inst(CCNOT(40, 30, 1))
p.inst(CCNOT(1, 2, 3))
p.inst(CCNOT(40, 31, 4))
p.inst(CNOT(1, 2))
p.inst(CCNOT(4, 5, 6))
p.inst(CCNOT(40, 32, 7))
p.inst(CCNOT(0, 2, 3))
p.inst(CNOT(4, 5))
p.inst(CCNOT(7, 8, 9))
p.inst(CCNOT(40, 33, 10))
p.inst(CCNOT(3, 5, 6))
p.inst(CNOT(7, 8))
p.inst(CCNOT(10, 11, 12))
p.inst(CCNOT(40, 34, 13))
p.inst(CCNOT(6, 8, 9))
p.inst(CNOT(10, 11))
p.inst(CCNOT(13, 14, 15))
p.inst(CCNOT(40, 35, 16))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(13, 14))
p.inst(CCNOT(16, 17, 18))
p.inst(CCNOT(40, 36, 19))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(16, 17))
p.inst(CCNOT(19, 20, 21))
p.inst(CCNOT(40, 37, 22))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(19, 20))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(40, 38, 25))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(40, 39, 28))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CNOT(9, 11))
p.inst(CCNOT(6, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CNOT(6, 8))
p.inst(CCNOT(3, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CNOT(3, 5))
p.inst(CCNOT(0, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CNOT(0, 2))
p.inst(CCNOT(40, 30, 1))
p.inst(CCNOT(1, 2, 3))
p.inst(CCNOT(40, 31, 4))
p.inst(CNOT(1, 2))
p.inst(CCNOT(40, 32, 7))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(40, 33, 10))
p.inst(CCNOT(40, 34, 13))
p.inst(CCNOT(40, 35, 16))
p.inst(CCNOT(40, 36, 19))
p.inst(CCNOT(40, 37, 22))
p.inst(CCNOT(40, 38, 25))
p.inst(CCNOT(40, 39, 28))
p.inst(CCNOT(41, 30, 4))
p.inst(CCNOT(4, 5, 6))
p.inst(CCNOT(41, 31, 7))
p.inst(CNOT(4, 5))
p.inst(CCNOT(7, 8, 9))
p.inst(CCNOT(41, 32, 10))
p.inst(CCNOT(3, 5, 6))
p.inst(CNOT(7, 8))
p.inst(CCNOT(10, 11, 12))
p.inst(CCNOT(41, 33, 13))
p.inst(CCNOT(6, 8, 9))
p.inst(CNOT(10, 11))
p.inst(CCNOT(13, 14, 15))
p.inst(CCNOT(41, 34, 16))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(13, 14))
p.inst(CCNOT(16, 17, 18))
p.inst(CCNOT(41, 35, 19))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(16, 17))
p.inst(CCNOT(19, 20, 21))
p.inst(CCNOT(41, 36, 22))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(19, 20))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(41, 37, 25))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(41, 38, 28))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CNOT(9, 11))
p.inst(CCNOT(6, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CNOT(6, 8))
p.inst(CCNOT(3, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CNOT(3, 5))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(41, 30, 4))
p.inst(CNOT(1, 2))
p.inst(CCNOT(4, 5, 6))
p.inst(CCNOT(41, 31, 7))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(4, 5))
p.inst(CCNOT(41, 32, 10))
p.inst(CNOT(1, 2))
p.inst(CCNOT(41, 33, 13))
p.inst(CNOT(0, 2))
p.inst(CCNOT(41, 34, 16))
p.inst(CCNOT(1, 2, 3))
p.inst(CCNOT(41, 35, 19))
p.inst(CNOT(1, 2))
p.inst(CCNOT(41, 36, 22))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(41, 37, 25))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(41, 38, 28))
p.inst(CCNOT(42, 30, 7))
p.inst(CCNOT(7, 8, 9))
p.inst(CCNOT(42, 31, 10))
p.inst(CNOT(7, 8))
p.inst(CCNOT(10, 11, 12))
p.inst(CCNOT(42, 32, 13))
p.inst(CCNOT(6, 8, 9))
p.inst(CNOT(10, 11))
p.inst(CCNOT(13, 14, 15))
p.inst(CCNOT(42, 33, 16))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(13, 14))
p.inst(CCNOT(16, 17, 18))
p.inst(CCNOT(42, 34, 19))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(16, 17))
p.inst(CCNOT(19, 20, 21))
p.inst(CCNOT(42, 35, 22))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(19, 20))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(42, 36, 25))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(42, 37, 28))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CNOT(9, 11))
p.inst(CCNOT(6, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CNOT(6, 8))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(42, 30, 7))
p.inst(CNOT(4, 5))
p.inst(CCNOT(7, 8, 9))
p.inst(CCNOT(42, 31, 10))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(7, 8))
p.inst(CCNOT(42, 32, 13))
p.inst(CNOT(4, 5))
p.inst(CCNOT(42, 33, 16))
p.inst(CNOT(3, 5))
p.inst(CCNOT(42, 34, 19))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(4, 5, 6))
p.inst(CCNOT(42, 35, 22))
p.inst(CNOT(1, 2))
p.inst(CNOT(4, 5))
p.inst(CCNOT(42, 36, 25))
p.inst(CCNOT(1, 2, 3))
p.inst(CCNOT(42, 37, 28))
p.inst(CNOT(1, 2))
p.inst(CCNOT(43, 30, 10))
p.inst(CNOT(0, 2))
p.inst(CCNOT(10, 11, 12))
p.inst(CCNOT(43, 31, 13))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(10, 11))
p.inst(CCNOT(13, 14, 15))
p.inst(CCNOT(43, 32, 16))
p.inst(CNOT(1, 2))
p.inst(CNOT(13, 14))
p.inst(CCNOT(16, 17, 18))
p.inst(CCNOT(43, 33, 19))
p.inst(CCNOT(0, 2, 3))
p.inst(CNOT(16, 17))
p.inst(CCNOT(19, 20, 21))
p.inst(CCNOT(43, 34, 22))
p.inst(CCNOT(3, 5, 6))
p.inst(CNOT(19, 20))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(43, 35, 25))
p.inst(CCNOT(6, 8, 9))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(43, 36, 28))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(21, 23, 24))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CNOT(9, 11))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(43, 30, 10))
p.inst(CNOT(7, 8))
p.inst(CCNOT(10, 11, 12))
p.inst(CCNOT(43, 31, 13))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(10, 11))
p.inst(CCNOT(43, 32, 16))
p.inst(CNOT(7, 8))
p.inst(CCNOT(43, 33, 19))
p.inst(CNOT(6, 8))
p.inst(CCNOT(43, 34, 22))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(7, 8, 9))
p.inst(CCNOT(43, 35, 25))
p.inst(CNOT(4, 5))
p.inst(CNOT(7, 8))
p.inst(CCNOT(43, 36, 28))
p.inst(CCNOT(4, 5, 6))
p.inst(CCNOT(44, 30, 13))
p.inst(CNOT(4, 5))
p.inst(CCNOT(13, 14, 15))
p.inst(CCNOT(44, 31, 16))
p.inst(CNOT(3, 5))
p.inst(CNOT(13, 14))
p.inst(CCNOT(16, 17, 18))
p.inst(CCNOT(44, 32, 19))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(16, 17))
p.inst(CCNOT(19, 20, 21))
p.inst(CCNOT(44, 33, 22))
p.inst(CNOT(1, 2))
p.inst(CNOT(4, 5))
p.inst(CNOT(19, 20))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(44, 34, 25))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(44, 35, 28))
p.inst(CNOT(1, 2))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CNOT(0, 2))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(21, 23, 24))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(44, 30, 13))
p.inst(CNOT(10, 11))
p.inst(CCNOT(13, 14, 15))
p.inst(CCNOT(44, 31, 16))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(13, 14))
p.inst(CCNOT(44, 32, 19))
p.inst(CNOT(10, 11))
p.inst(CCNOT(44, 33, 22))
p.inst(CNOT(9, 11))
p.inst(CCNOT(44, 34, 25))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(10, 11, 12))
p.inst(CCNOT(44, 35, 28))
p.inst(CNOT(7, 8))
p.inst(CNOT(10, 11))
p.inst(CCNOT(45, 30, 16))
p.inst(CCNOT(7, 8, 9))
p.inst(CCNOT(16, 17, 18))
p.inst(CCNOT(45, 31, 19))
p.inst(CNOT(7, 8))
p.inst(CNOT(16, 17))
p.inst(CCNOT(19, 20, 21))
p.inst(CCNOT(45, 32, 22))
p.inst(CNOT(6, 8))
p.inst(CNOT(19, 20))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(45, 33, 25))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(45, 34, 28))
p.inst(CNOT(4, 5))
p.inst(CNOT(7, 8))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CNOT(3, 5))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(1, 2))
p.inst(CNOT(4, 5))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CNOT(0, 2))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(21, 23, 24))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(45, 30, 16))
p.inst(CNOT(13, 14))
p.inst(CCNOT(16, 17, 18))
p.inst(CCNOT(45, 31, 19))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(16, 17))
p.inst(CCNOT(45, 32, 22))
p.inst(CNOT(13, 14))
p.inst(CCNOT(45, 33, 25))
p.inst(CNOT(12, 14))
p.inst(CCNOT(45, 34, 28))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(13, 14, 15))
p.inst(CCNOT(46, 30, 19))
p.inst(CNOT(10, 11))
p.inst(CNOT(13, 14))
p.inst(CCNOT(19, 20, 21))
p.inst(CCNOT(46, 31, 22))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(19, 20))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(46, 32, 25))
p.inst(CNOT(10, 11))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(46, 33, 28))
p.inst(CNOT(9, 11))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(7, 8))
p.inst(CNOT(10, 11))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CNOT(6, 8))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(4, 5))
p.inst(CNOT(7, 8))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CNOT(3, 5))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(1, 2))
p.inst(CNOT(4, 5))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CNOT(0, 2))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(21, 23, 24))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(46, 30, 19))
p.inst(CNOT(16, 17))
p.inst(CCNOT(19, 20, 21))
p.inst(CCNOT(46, 31, 22))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(19, 20))
p.inst(CCNOT(46, 32, 25))
p.inst(CNOT(16, 17))
p.inst(CCNOT(46, 33, 28))
p.inst(CNOT(15, 17))
p.inst(CCNOT(47, 30, 22))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(16, 17, 18))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(47, 31, 25))
p.inst(CNOT(13, 14))
p.inst(CNOT(16, 17))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(47, 32, 28))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(10, 11))
p.inst(CNOT(13, 14))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CNOT(9, 11))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(7, 8))
p.inst(CNOT(10, 11))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CNOT(6, 8))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(4, 5))
p.inst(CNOT(7, 8))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CNOT(3, 5))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(1, 2))
p.inst(CNOT(4, 5))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CNOT(0, 2))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(21, 23, 24))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(47, 30, 22))
p.inst(CNOT(19, 20))
p.inst(CCNOT(22, 23, 24))
p.inst(CCNOT(47, 31, 25))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(22, 23))
p.inst(CCNOT(47, 32, 28))
p.inst(CNOT(19, 20))
p.inst(CCNOT(48, 30, 25))
p.inst(CNOT(18, 20))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(48, 31, 28))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(25, 26))
p.inst(CNOT(28, 29))
p.inst(CNOT(16, 17))
p.inst(CNOT(19, 20))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(13, 14))
p.inst(CNOT(16, 17))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(10, 11))
p.inst(CNOT(13, 14))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CNOT(9, 11))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(7, 8))
p.inst(CNOT(10, 11))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CNOT(6, 8))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(4, 5))
p.inst(CNOT(7, 8))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CNOT(3, 5))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(1, 2))
p.inst(CNOT(4, 5))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CNOT(0, 2))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(21, 23, 24))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CCNOT(48, 30, 25))
p.inst(CNOT(22, 23))
p.inst(CCNOT(25, 26, 27))
p.inst(CCNOT(48, 31, 28))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(25, 26))
p.inst(CCNOT(49, 30, 28))
p.inst(CNOT(22, 23))
p.inst(CNOT(28, 29))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(19, 20))
p.inst(CNOT(22, 23))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(16, 17))
p.inst(CNOT(19, 20))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(13, 14))
p.inst(CNOT(16, 17))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(10, 11))
p.inst(CNOT(13, 14))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CNOT(9, 11))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(7, 8))
p.inst(CNOT(10, 11))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CNOT(6, 8))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(4, 5))
p.inst(CNOT(7, 8))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CNOT(3, 5))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(1, 2))
p.inst(CNOT(4, 5))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CNOT(0, 2))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CCNOT(0, 2, 3))
p.inst(CCNOT(3, 5, 6))
p.inst(CCNOT(6, 8, 9))
p.inst(CCNOT(9, 11, 12))
p.inst(CCNOT(12, 14, 15))
p.inst(CCNOT(15, 17, 18))
p.inst(CCNOT(18, 20, 21))
p.inst(CCNOT(21, 23, 24))
p.inst(CCNOT(24, 26, 27))
p.inst(CNOT(27, 29))
p.inst(CCNOT(24, 26, 27))
p.inst(CCNOT(49, 30, 28))
p.inst(CNOT(25, 26))
p.inst(CCNOT(25, 26, 27))
p.inst(CNOT(25, 26))
p.inst(CNOT(24, 26))
p.inst(CCNOT(21, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CCNOT(22, 23, 24))
p.inst(CNOT(22, 23))
p.inst(CNOT(21, 23))
p.inst(CCNOT(18, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CCNOT(19, 20, 21))
p.inst(CNOT(19, 20))
p.inst(CNOT(18, 20))
p.inst(CCNOT(15, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CCNOT(16, 17, 18))
p.inst(CNOT(16, 17))
p.inst(CNOT(15, 17))
p.inst(CCNOT(12, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CCNOT(13, 14, 15))
p.inst(CNOT(13, 14))
p.inst(CNOT(12, 14))
p.inst(CCNOT(9, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CCNOT(10, 11, 12))
p.inst(CNOT(10, 11))
p.inst(CNOT(9, 11))
p.inst(CCNOT(6, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CCNOT(7, 8, 9))
p.inst(CNOT(7, 8))
p.inst(CNOT(6, 8))
p.inst(CCNOT(3, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CCNOT(4, 5, 6))
p.inst(CNOT(4, 5))
p.inst(CNOT(3, 5))
p.inst(CCNOT(0, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CCNOT(1, 2, 3))
p.inst(CNOT(1, 2))
p.inst(CNOT(0, 2))
p.inst(MEASURE(2, ro[0]))
p.inst(MEASURE(5, ro[1]))
p.inst(MEASURE(8, ro[2]))
p.inst(MEASURE(11, ro[3]))
p.inst(MEASURE(14, ro[4]))
p.inst(MEASURE(17, ro[5]))
p.inst(MEASURE(20, ro[6]))
p.inst(MEASURE(23, ro[7]))
p.inst(MEASURE(26, ro[8]))
p.inst(MEASURE(29, ro[9]))

p.wrap_in_numshots_loop(shots)

qc = get_qc('50q-qvm')
results_list = qc.run(p)
results = list(map(lambda arr: reduce(lambda x, y: str(x) + str(y), arr[::-1], ""), results_list))
counts = dict(zip(results,[results.count(i) for i in results]))
print(counts)
