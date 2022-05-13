OPENQASM 2.0;
include "qelib1.inc";
qreg q0[2];
creg meas[2];
u(0.53173774,-4.5297099e-14,-pi) q0[0];
u(pi/2,-0.91231427,pi/2) q0[1];
cx q0[0],q0[1];
u(1.0856999,0,-pi) q0[0];
u(0,-3*pi/2,0) q0[1];
cx q0[0],q0[1];
u(0.80597202,-pi/2,-pi) q0[0];
u(pi/2,3*pi/2,0) q0[1];
cx q0[0],q0[1];
u(1.4007356,0,3*pi/2) q0[0];
u(2.1325072,-pi,0) q0[1];
barrier q0[0],q0[1];
measure q0[0] -> meas[0];
measure q0[1] -> meas[1];
