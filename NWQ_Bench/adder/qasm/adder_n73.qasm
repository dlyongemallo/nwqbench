OPENQASM 2.0;
include "qelib1.inc";
qreg q[73];
creg c[73];
creg meas[73];
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
x q[25];
x q[26];
x q[27];
x q[28];
x q[29];
x q[30];
x q[31];
x q[32];
x q[64];
cx q[0],q[32];
cx q[0],q[64];
ccx q[64],q[32],q[0];
cx q[1],q[33];
cx q[1],q[0];
ccx q[0],q[33],q[1];
cx q[2],q[34];
cx q[2],q[1];
ccx q[1],q[34],q[2];
cx q[3],q[35];
cx q[3],q[2];
ccx q[2],q[35],q[3];
cx q[3],q[65];
ccx q[2],q[35],q[3];
cx q[3],q[2];
cx q[2],q[35];
ccx q[1],q[34],q[2];
cx q[2],q[1];
cx q[1],q[34];
ccx q[0],q[33],q[1];
cx q[1],q[0];
cx q[0],q[33];
ccx q[64],q[32],q[0];
cx q[0],q[64];
cx q[64],q[32];
cx q[4],q[36];
cx q[4],q[65];
ccx q[65],q[36],q[4];
cx q[5],q[37];
cx q[5],q[4];
ccx q[4],q[37],q[5];
cx q[6],q[38];
cx q[6],q[5];
ccx q[5],q[38],q[6];
cx q[7],q[39];
cx q[7],q[6];
ccx q[6],q[39],q[7];
cx q[7],q[66];
ccx q[6],q[39],q[7];
cx q[7],q[6];
cx q[6],q[39];
ccx q[5],q[38],q[6];
cx q[6],q[5];
cx q[5],q[38];
ccx q[4],q[37],q[5];
cx q[5],q[4];
cx q[4],q[37];
ccx q[65],q[36],q[4];
cx q[4],q[65];
cx q[65],q[36];
cx q[8],q[40];
cx q[8],q[66];
ccx q[66],q[40],q[8];
cx q[9],q[41];
cx q[9],q[8];
ccx q[8],q[41],q[9];
cx q[10],q[42];
cx q[10],q[9];
ccx q[9],q[42],q[10];
cx q[11],q[43];
cx q[11],q[10];
ccx q[10],q[43],q[11];
cx q[11],q[67];
ccx q[10],q[43],q[11];
cx q[11],q[10];
cx q[10],q[43];
ccx q[9],q[42],q[10];
cx q[10],q[9];
cx q[9],q[42];
ccx q[8],q[41],q[9];
cx q[9],q[8];
cx q[8],q[41];
ccx q[66],q[40],q[8];
cx q[8],q[66];
cx q[66],q[40];
cx q[12],q[44];
cx q[12],q[67];
ccx q[67],q[44],q[12];
cx q[13],q[45];
cx q[13],q[12];
ccx q[12],q[45],q[13];
cx q[14],q[46];
cx q[14],q[13];
ccx q[13],q[46],q[14];
cx q[15],q[47];
cx q[15],q[14];
ccx q[14],q[47],q[15];
cx q[15],q[68];
ccx q[14],q[47],q[15];
cx q[15],q[14];
cx q[14],q[47];
ccx q[13],q[46],q[14];
cx q[14],q[13];
cx q[13],q[46];
ccx q[12],q[45],q[13];
cx q[13],q[12];
cx q[12],q[45];
ccx q[67],q[44],q[12];
cx q[12],q[67];
cx q[67],q[44];
cx q[16],q[48];
cx q[16],q[68];
ccx q[68],q[48],q[16];
cx q[17],q[49];
cx q[17],q[16];
ccx q[16],q[49],q[17];
cx q[18],q[50];
cx q[18],q[17];
ccx q[17],q[50],q[18];
cx q[19],q[51];
cx q[19],q[18];
ccx q[18],q[51],q[19];
cx q[19],q[69];
ccx q[18],q[51],q[19];
cx q[19],q[18];
cx q[18],q[51];
ccx q[17],q[50],q[18];
cx q[18],q[17];
cx q[17],q[50];
ccx q[16],q[49],q[17];
cx q[17],q[16];
cx q[16],q[49];
ccx q[68],q[48],q[16];
cx q[16],q[68];
cx q[68],q[48];
cx q[20],q[52];
cx q[20],q[69];
ccx q[69],q[52],q[20];
cx q[21],q[53];
cx q[21],q[20];
ccx q[20],q[53],q[21];
cx q[22],q[54];
cx q[22],q[21];
ccx q[21],q[54],q[22];
cx q[23],q[55];
cx q[23],q[22];
ccx q[22],q[55],q[23];
cx q[23],q[70];
ccx q[22],q[55],q[23];
cx q[23],q[22];
cx q[22],q[55];
ccx q[21],q[54],q[22];
cx q[22],q[21];
cx q[21],q[54];
ccx q[20],q[53],q[21];
cx q[21],q[20];
cx q[20],q[53];
ccx q[69],q[52],q[20];
cx q[20],q[69];
cx q[69],q[52];
cx q[24],q[56];
cx q[24],q[70];
ccx q[70],q[56],q[24];
cx q[25],q[57];
cx q[25],q[24];
ccx q[24],q[57],q[25];
cx q[26],q[58];
cx q[26],q[25];
ccx q[25],q[58],q[26];
cx q[27],q[59];
cx q[27],q[26];
ccx q[26],q[59],q[27];
cx q[27],q[71];
ccx q[26],q[59],q[27];
cx q[27],q[26];
cx q[26],q[59];
ccx q[25],q[58],q[26];
cx q[26],q[25];
cx q[25],q[58];
ccx q[24],q[57],q[25];
cx q[25],q[24];
cx q[24],q[57];
ccx q[70],q[56],q[24];
cx q[24],q[70];
cx q[70],q[56];
cx q[28],q[60];
cx q[28],q[71];
ccx q[71],q[60],q[28];
cx q[29],q[61];
cx q[29],q[28];
ccx q[28],q[61],q[29];
cx q[30],q[62];
cx q[30],q[29];
ccx q[29],q[62],q[30];
cx q[31],q[63];
cx q[31],q[30];
ccx q[30],q[63],q[31];
cx q[31],q[72];
ccx q[30],q[63],q[31];
cx q[31],q[30];
cx q[30],q[63];
ccx q[29],q[62],q[30];
cx q[30],q[29];
cx q[29],q[62];
ccx q[28],q[61],q[29];
cx q[29],q[28];
cx q[28],q[61];
ccx q[71],q[60],q[28];
cx q[28],q[71];
cx q[71],q[60];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41],q[42],q[43],q[44],q[45],q[46],q[47],q[48],q[49],q[50],q[51],q[52],q[53],q[54],q[55],q[56],q[57],q[58],q[59],q[60],q[61],q[62],q[63],q[64],q[65],q[66],q[67],q[68],q[69],q[70],q[71],q[72];
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
measure q[55] -> meas[55];
measure q[56] -> meas[56];
measure q[57] -> meas[57];
measure q[58] -> meas[58];
measure q[59] -> meas[59];
measure q[60] -> meas[60];
measure q[61] -> meas[61];
measure q[62] -> meas[62];
measure q[63] -> meas[63];
measure q[64] -> meas[64];
measure q[65] -> meas[65];
measure q[66] -> meas[66];
measure q[67] -> meas[67];
measure q[68] -> meas[68];
measure q[69] -> meas[69];
measure q[70] -> meas[70];
measure q[71] -> meas[71];
measure q[72] -> meas[72];