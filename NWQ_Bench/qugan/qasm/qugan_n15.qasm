OPENQASM 2.0;
include "qelib1.inc";
qreg q0[15];
creg c0[7];
u2(0,pi) q0[0];
r(2.2547452,pi/2) q0[1];
rx(pi/2) q0[1];
r(1.9919012,pi/2) q0[2];
rx(pi/2) q0[2];
cx q0[1],q0[2];
rz(1.2664125) q0[2];
cx q0[1],q0[2];
rx(-pi/2) q0[1];
rx(-pi/2) q0[2];
u3(1.4487767,0,0) q0[2];
cx q0[1],q0[2];
u3(-1.4487767,0,0) q0[2];
cx q0[1],q0[2];
rx(pi/2) q0[2];
r(0.086170941,pi/2) q0[3];
rx(pi/2) q0[3];
cx q0[2],q0[3];
rz(0.74055553) q0[3];
cx q0[2],q0[3];
rx(-pi/2) q0[2];
rx(-pi/2) q0[3];
u3(1.1646899,0,0) q0[3];
cx q0[2],q0[3];
u3(-1.1646899,0,0) q0[3];
cx q0[2],q0[3];
rx(pi/2) q0[3];
r(2.5218881,pi/2) q0[4];
rx(pi/2) q0[4];
cx q0[3],q0[4];
rz(2.3559741) q0[4];
cx q0[3],q0[4];
rx(-pi/2) q0[3];
rx(-pi/2) q0[4];
u3(1.4174572,0,0) q0[4];
cx q0[3],q0[4];
u3(-1.4174572,0,0) q0[4];
cx q0[3],q0[4];
rx(pi/2) q0[4];
r(0.62233877,pi/2) q0[5];
rx(pi/2) q0[5];
cx q0[4],q0[5];
rz(1.5874395) q0[5];
cx q0[4],q0[5];
rx(-pi/2) q0[4];
rx(-pi/2) q0[5];
u3(1.0930352,0,0) q0[5];
cx q0[4],q0[5];
u3(-1.0930352,0,0) q0[5];
cx q0[4],q0[5];
rx(pi/2) q0[5];
r(3.0819591,pi/2) q0[6];
rx(pi/2) q0[6];
cx q0[5],q0[6];
rz(3.1129243) q0[6];
cx q0[5],q0[6];
rx(-pi/2) q0[5];
rx(-pi/2) q0[6];
u3(1.2005866,0,0) q0[6];
cx q0[5],q0[6];
u3(-1.2005866,0,0) q0[6];
cx q0[5],q0[6];
rx(pi/2) q0[6];
r(2.2146677,pi/2) q0[7];
rx(pi/2) q0[7];
cx q0[6],q0[7];
rz(1.1256105) q0[7];
cx q0[6],q0[7];
rx(-pi/2) q0[6];
rx(-pi/2) q0[7];
u3(1.4893347,0,0) q0[7];
cx q0[6],q0[7];
u3(-1.4893347,0,0) q0[7];
cx q0[6],q0[7];
r(2.6092304,pi/2) q0[8];
rx(pi/2) q0[8];
r(1.2224215,pi/2) q0[9];
rx(pi/2) q0[9];
cx q0[8],q0[9];
rz(2.5810673) q0[9];
cx q0[8],q0[9];
rx(-pi/2) q0[8];
rx(-pi/2) q0[9];
u3(1.4950504,0,0) q0[9];
cx q0[8],q0[9];
u3(-1.4950504,0,0) q0[9];
cx q0[8],q0[9];
cx q0[8],q0[1];
ccx q0[0],q0[1],q0[8];
cx q0[8],q0[1];
rx(pi/2) q0[9];
r(2.3030389,pi/2) q0[10];
rx(pi/2) q0[10];
cx q0[9],q0[10];
rz(3.1218766) q0[10];
cx q0[9],q0[10];
rx(-pi/2) q0[10];
u3(0.50052913,0,0) q0[10];
rx(-pi/2) q0[9];
cx q0[9],q0[10];
u3(-0.50052913,0,0) q0[10];
cx q0[9],q0[10];
rx(pi/2) q0[10];
cx q0[9],q0[2];
ccx q0[0],q0[2],q0[9];
cx q0[9],q0[2];
r(1.0598744,pi/2) q0[11];
rx(pi/2) q0[11];
cx q0[10],q0[11];
rz(2.1470863) q0[11];
cx q0[10],q0[11];
rx(-pi/2) q0[10];
rx(-pi/2) q0[11];
u3(1.4210772,0,0) q0[11];
cx q0[10],q0[11];
u3(-1.4210772,0,0) q0[11];
cx q0[10],q0[11];
cx q0[10],q0[3];
ccx q0[0],q0[3],q0[10];
cx q0[10],q0[3];
rx(pi/2) q0[11];
r(0.70842454,pi/2) q0[12];
rx(pi/2) q0[12];
cx q0[11],q0[12];
rz(1.0572746) q0[12];
cx q0[11],q0[12];
rx(-pi/2) q0[11];
rx(-pi/2) q0[12];
u3(0.84439209,0,0) q0[12];
cx q0[11],q0[12];
u3(-0.84439209,0,0) q0[12];
cx q0[11],q0[12];
cx q0[11],q0[4];
ccx q0[0],q0[4],q0[11];
cx q0[11],q0[4];
rx(pi/2) q0[12];
r(0.41472069,pi/2) q0[13];
rx(pi/2) q0[13];
cx q0[12],q0[13];
rz(2.7825006) q0[13];
cx q0[12],q0[13];
rx(-pi/2) q0[12];
rx(-pi/2) q0[13];
u3(0.23144456,0,0) q0[13];
cx q0[12],q0[13];
u3(-0.23144456,0,0) q0[13];
cx q0[12],q0[13];
cx q0[12],q0[5];
ccx q0[0],q0[5],q0[12];
cx q0[12],q0[5];
rx(pi/2) q0[13];
r(3.0325811,pi/2) q0[14];
rx(pi/2) q0[14];
cx q0[13],q0[14];
rz(2.7848897) q0[14];
cx q0[13],q0[14];
rx(-pi/2) q0[13];
rx(-pi/2) q0[14];
u3(0.58159699,0,0) q0[14];
cx q0[13],q0[14];
u3(-0.58159699,0,0) q0[14];
cx q0[13],q0[14];
cx q0[13],q0[6];
ccx q0[0],q0[6],q0[13];
cx q0[13],q0[6];
cx q0[14],q0[7];
ccx q0[0],q0[7],q0[14];
u2(0,pi) q0[0];
cx q0[14],q0[7];
measure q0[8] -> c0[0];
measure q0[9] -> c0[1];
measure q0[10] -> c0[2];
measure q0[11] -> c0[3];
measure q0[12] -> c0[4];
measure q0[13] -> c0[5];
measure q0[14] -> c0[6];
