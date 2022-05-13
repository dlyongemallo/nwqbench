OPENQASM 2.0;
include "qelib1.inc";
qreg q0[31];
creg meas[31];
ry(2.1506626) q0[0];
ry(1.4482467) q0[1];
ry(2.3705663) q0[2];
ry(1.9765769) q0[3];
ry(0.62383312) q0[4];
ry(2.8280429) q0[5];
ry(2.120318) q0[6];
ry(2.1798952) q0[7];
ry(0.7320994) q0[8];
ry(1.4714046) q0[9];
ry(1.3094267) q0[10];
ry(2.5935193) q0[11];
ry(1.8626523) q0[12];
ry(2.2725045) q0[13];
ry(1.4573817) q0[14];
ry(0.99378383) q0[15];
ry(1.6801839) q0[16];
ry(0.51077586) q0[17];
ry(2.2853262) q0[18];
ry(1.8372675) q0[19];
ry(2.1131759) q0[20];
ry(1.2755787) q0[21];
ry(2.7975419) q0[22];
ry(2.4755003) q0[23];
ry(2.161285) q0[24];
ry(0.91382352) q0[25];
ry(1.5041891) q0[26];
ry(0.42170479) q0[27];
ry(0.80734219) q0[28];
ry(1.9456087) q0[29];
ry(2.0823405) q0[30];
barrier q0[0],q0[1],q0[2],q0[3],q0[4],q0[5],q0[6],q0[7],q0[8],q0[9],q0[10],q0[11],q0[12],q0[13],q0[14],q0[15],q0[16],q0[17],q0[18],q0[19],q0[20],q0[21],q0[22],q0[23],q0[24],q0[25],q0[26],q0[27],q0[28],q0[29],q0[30];
measure q0[0] -> meas[0];
measure q0[1] -> meas[1];
measure q0[2] -> meas[2];
measure q0[3] -> meas[3];
measure q0[4] -> meas[4];
measure q0[5] -> meas[5];
measure q0[6] -> meas[6];
measure q0[7] -> meas[7];
measure q0[8] -> meas[8];
measure q0[9] -> meas[9];
measure q0[10] -> meas[10];
measure q0[11] -> meas[11];
measure q0[12] -> meas[12];
measure q0[13] -> meas[13];
measure q0[14] -> meas[14];
measure q0[15] -> meas[15];
measure q0[16] -> meas[16];
measure q0[17] -> meas[17];
measure q0[18] -> meas[18];
measure q0[19] -> meas[19];
measure q0[20] -> meas[20];
measure q0[21] -> meas[21];
measure q0[22] -> meas[22];
measure q0[23] -> meas[23];
measure q0[24] -> meas[24];
measure q0[25] -> meas[25];
measure q0[26] -> meas[26];
measure q0[27] -> meas[27];
measure q0[28] -> meas[28];
measure q0[29] -> meas[29];
measure q0[30] -> meas[30];
