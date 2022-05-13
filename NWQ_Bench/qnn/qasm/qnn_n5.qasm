OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
creg meas[5];
h q[0];
ry(4.9053416) q[1];
rz(5.321323) q[1];
ry(2.6219432) q[2];
rz(2.8180595) q[2];
ryy(3.8044817) q[1],q[2];
rzz(2.9653883) q[1],q[2];
cry(3.8801311) q[1],q[2];
crz(3.4880895) q[1],q[2];
ry(2.1643378) q[3];
rz(2.5775709) q[3];
ry(2.035242) q[4];
rz(0.54460083) q[4];
cswap q[0],q[1],q[3];
cswap q[0],q[2],q[4];
h q[0];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];