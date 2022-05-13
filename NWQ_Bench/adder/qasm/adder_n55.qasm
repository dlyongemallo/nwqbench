OPENQASM 2.0;
include "qelib1.inc";
qreg q[55];
creg c[55];
creg meas[55];
x q[1];
x q[2];
x q[3];
x q[4];
x q[5];
x q[6];
x q[7];
x q[8];
x q[9];
x q[10];
x q[11];
x q[12];
x q[13];
x q[14];
x q[15];
x q[16];
x q[17];
x q[18];
x q[19];
x q[20];
x q[21];
x q[22];
x q[23];
x q[24];
x q[48];
cx q[0],q[24];
cx q[0],q[48];
ccx q[48],q[24],q[0];
cx q[1],q[25];
cx q[1],q[0];
ccx q[0],q[25],q[1];
cx q[2],q[26];
cx q[2],q[1];
ccx q[1],q[26],q[2];
cx q[3],q[27];
cx q[3],q[2];
ccx q[2],q[27],q[3];
cx q[3],q[49];
ccx q[2],q[27],q[3];
cx q[3],q[2];
cx q[2],q[27];
ccx q[1],q[26],q[2];
cx q[2],q[1];
cx q[1],q[26];
ccx q[0],q[25],q[1];
cx q[1],q[0];
cx q[0],q[25];
ccx q[48],q[24],q[0];
cx q[0],q[48];
cx q[48],q[24];
cx q[4],q[28];
cx q[4],q[49];
ccx q[49],q[28],q[4];
cx q[5],q[29];
cx q[5],q[4];
ccx q[4],q[29],q[5];
cx q[6],q[30];
cx q[6],q[5];
ccx q[5],q[30],q[6];
cx q[7],q[31];
cx q[7],q[6];
ccx q[6],q[31],q[7];
cx q[7],q[50];
ccx q[6],q[31],q[7];
cx q[7],q[6];
cx q[6],q[31];
ccx q[5],q[30],q[6];
cx q[6],q[5];
cx q[5],q[30];
ccx q[4],q[29],q[5];
cx q[5],q[4];
cx q[4],q[29];
ccx q[49],q[28],q[4];
cx q[4],q[49];
cx q[49],q[28];
cx q[8],q[32];
cx q[8],q[50];
ccx q[50],q[32],q[8];
cx q[9],q[33];
cx q[9],q[8];
ccx q[8],q[33],q[9];
cx q[10],q[34];
cx q[10],q[9];
ccx q[9],q[34],q[10];
cx q[11],q[35];
cx q[11],q[10];
ccx q[10],q[35],q[11];
cx q[11],q[51];
ccx q[10],q[35],q[11];
cx q[11],q[10];
cx q[10],q[35];
ccx q[9],q[34],q[10];
cx q[10],q[9];
cx q[9],q[34];
ccx q[8],q[33],q[9];
cx q[9],q[8];
cx q[8],q[33];
ccx q[50],q[32],q[8];
cx q[8],q[50];
cx q[50],q[32];
cx q[12],q[36];
cx q[12],q[51];
ccx q[51],q[36],q[12];
cx q[13],q[37];
cx q[13],q[12];
ccx q[12],q[37],q[13];
cx q[14],q[38];
cx q[14],q[13];
ccx q[13],q[38],q[14];
cx q[15],q[39];
cx q[15],q[14];
ccx q[14],q[39],q[15];
cx q[15],q[52];
ccx q[14],q[39],q[15];
cx q[15],q[14];
cx q[14],q[39];
ccx q[13],q[38],q[14];
cx q[14],q[13];
cx q[13],q[38];
ccx q[12],q[37],q[13];
cx q[13],q[12];
cx q[12],q[37];
ccx q[51],q[36],q[12];
cx q[12],q[51];
cx q[51],q[36];
cx q[16],q[40];
cx q[16],q[52];
ccx q[52],q[40],q[16];
cx q[17],q[41];
cx q[17],q[16];
ccx q[16],q[41],q[17];
cx q[18],q[42];
cx q[18],q[17];
ccx q[17],q[42],q[18];
cx q[19],q[43];
cx q[19],q[18];
ccx q[18],q[43],q[19];
cx q[19],q[53];
ccx q[18],q[43],q[19];
cx q[19],q[18];
cx q[18],q[43];
ccx q[17],q[42],q[18];
cx q[18],q[17];
cx q[17],q[42];
ccx q[16],q[41],q[17];
cx q[17],q[16];
cx q[16],q[41];
ccx q[52],q[40],q[16];
cx q[16],q[52];
cx q[52],q[40];
cx q[20],q[44];
cx q[20],q[53];
ccx q[53],q[44],q[20];
cx q[21],q[45];
cx q[21],q[20];
ccx q[20],q[45],q[21];
cx q[22],q[46];
cx q[22],q[21];
ccx q[21],q[46],q[22];
cx q[23],q[47];
cx q[23],q[22];
ccx q[22],q[47],q[23];
cx q[23],q[54];
ccx q[22],q[47],q[23];
cx q[23],q[22];
cx q[22],q[47];
ccx q[21],q[46],q[22];
cx q[22],q[21];
cx q[21],q[46];
ccx q[20],q[45],q[21];
cx q[21],q[20];
cx q[20],q[45];
ccx q[53],q[44],q[20];
cx q[20],q[53];
cx q[53],q[44];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41],q[42],q[43],q[44],q[45],q[46],q[47],q[48],q[49],q[50],q[51],q[52],q[53],q[54];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
measure q[9] -> meas[9];
measure q[10] -> meas[10];
measure q[11] -> meas[11];
measure q[12] -> meas[12];
measure q[13] -> meas[13];
measure q[14] -> meas[14];
measure q[15] -> meas[15];
measure q[16] -> meas[16];
measure q[17] -> meas[17];
measure q[18] -> meas[18];
measure q[19] -> meas[19];
measure q[20] -> meas[20];
measure q[21] -> meas[21];
measure q[22] -> meas[22];
measure q[23] -> meas[23];
measure q[24] -> meas[24];
measure q[25] -> meas[25];
measure q[26] -> meas[26];
measure q[27] -> meas[27];
measure q[28] -> meas[28];
measure q[29] -> meas[29];
measure q[30] -> meas[30];
measure q[31] -> meas[31];
measure q[32] -> meas[32];
measure q[33] -> meas[33];
measure q[34] -> meas[34];
measure q[35] -> meas[35];
measure q[36] -> meas[36];
measure q[37] -> meas[37];
measure q[38] -> meas[38];
measure q[39] -> meas[39];
measure q[40] -> meas[40];
measure q[41] -> meas[41];
measure q[42] -> meas[42];
measure q[43] -> meas[43];
measure q[44] -> meas[44];
measure q[45] -> meas[45];
measure q[46] -> meas[46];
measure q[47] -> meas[47];
measure q[48] -> meas[48];
measure q[49] -> meas[49];
measure q[50] -> meas[50];
measure q[51] -> meas[51];
measure q[52] -> meas[52];
measure q[53] -> meas[53];
measure q[54] -> meas[54];