OPENQASM 2.0;
include "qelib1.inc";
qreg q0[3];
creg c0[3];
creg meas[3];
h q0[0];
h q0[1];
h q0[2];
p(1.5780673) q0[0];
p(1.7419695) q0[1];
p(2.3445773) q0[2];
cx q0[0],q0[1];
rz(0.42211821) q0[1];
cx q0[0],q0[1];
cx q0[1],q0[2];
rz(1.9338127) q0[2];
cx q0[1],q0[2];
cx q0[1],q0[2];
rz(1.3191528) q0[2];
cx q0[1],q0[2];
cx q0[0],q0[1];
rz(1.4449089) q0[1];
cx q0[0],q0[1];
rz(2.8656361) q0[0];
rz(1.8271938) q0[1];
rz(0.045029159) q0[2];
h q0[0];
h q0[1];
h q0[2];
barrier q0[0],q0[1],q0[2];
measure q0[0] -> meas[0];
measure q0[1] -> meas[1];
measure q0[2] -> meas[2];