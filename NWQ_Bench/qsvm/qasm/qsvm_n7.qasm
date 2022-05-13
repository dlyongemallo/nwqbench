OPENQASM 2.0;
include "qelib1.inc";
qreg q0[7];
creg c0[7];
creg meas[7];
h q0[0];
h q0[1];
h q0[2];
h q0[3];
h q0[4];
h q0[5];
h q0[6];
p(0.9366307) q0[0];
p(0.84399939) q0[1];
p(3.0435402) q0[2];
p(2.2304186) q0[3];
p(1.308009) q0[4];
p(2.4208026) q0[5];
p(2.9282009) q0[6];
cx q0[0],q0[1];
rz(0.50713447) q0[1];
cx q0[0],q0[1];
cx q0[1],q0[2];
rz(1.8462245) q0[2];
cx q0[1],q0[2];
cx q0[2],q0[3];
rz(2.5802095) q0[3];
cx q0[2],q0[3];
cx q0[3],q0[4];
rz(2.6000677) q0[4];
cx q0[3],q0[4];
cx q0[4],q0[5];
rz(0.64096198) q0[5];
cx q0[4],q0[5];
cx q0[5],q0[6];
rz(0.98574732) q0[6];
cx q0[5],q0[6];
cx q0[5],q0[6];
rz(0.2277678) q0[6];
cx q0[5],q0[6];
cx q0[4],q0[5];
rz(0.078687971) q0[5];
cx q0[4],q0[5];
cx q0[3],q0[4];
rz(2.3168539) q0[4];
cx q0[3],q0[4];
cx q0[2],q0[3];
rz(1.7757852) q0[3];
cx q0[2],q0[3];
cx q0[1],q0[2];
rz(0.59138485) q0[2];
cx q0[1],q0[2];
cx q0[0],q0[1];
rz(1.9256754) q0[1];
cx q0[0],q0[1];
rz(3.0664915) q0[0];
rz(2.2495515) q0[1];
rz(1.0629948) q0[2];
rz(2.2976536) q0[3];
rz(1.939598) q0[4];
rz(0.74503425) q0[5];
rz(0.021417735) q0[6];
h q0[0];
h q0[1];
h q0[2];
h q0[3];
h q0[4];
h q0[5];
h q0[6];
barrier q0[0],q0[1],q0[2],q0[3],q0[4],q0[5],q0[6];
measure q0[0] -> meas[0];
measure q0[1] -> meas[1];
measure q0[2] -> meas[2];
measure q0[3] -> meas[3];
measure q0[4] -> meas[4];
measure q0[5] -> meas[5];
measure q0[6] -> meas[6];
