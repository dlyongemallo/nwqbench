OPENQASM 2.0;
include "qelib1.inc";
qreg q0[9];
creg c0[1];
rx(-3.8535372) q0[1];
rx(-4.2592974) q0[2];
rx(0.76934517) q0[3];
rx(5.2757681) q0[4];
rx(-4.3555394) q0[5];
rx(-1.1088457) q0[6];
rx(0.60673656) q0[7];
rx(3.1760628) q0[8];
h q0[0];
cswap q0[0],q0[1],q0[5];
cswap q0[0],q0[2],q0[6];
cswap q0[0],q0[3],q0[7];
cswap q0[0],q0[4],q0[8];
h q0[0];
measure q0[0] -> c0[0];
