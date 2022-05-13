OPENQASM 2.0;
include "qelib1.inc";
qreg q0[65];
creg c0[32];
u2(0,pi) q0[0];
r(3.0827971,pi/2) q0[1];
rx(pi/2) q0[1];
r(2.6882256,pi/2) q0[2];
rx(pi/2) q0[2];
cx q0[1],q0[2];
rz(2.1326225) q0[2];
cx q0[1],q0[2];
rx(-pi/2) q0[1];
rx(-pi/2) q0[2];
u3(0.1238051,0,0) q0[2];
cx q0[1],q0[2];
u3(-0.1238051,0,0) q0[2];
cx q0[1],q0[2];
rx(pi/2) q0[2];
r(1.7911227,pi/2) q0[3];
rx(pi/2) q0[3];
cx q0[2],q0[3];
rz(0.60955675) q0[3];
cx q0[2],q0[3];
rx(-pi/2) q0[2];
rx(-pi/2) q0[3];
u3(0.073350091,0,0) q0[3];
cx q0[2],q0[3];
u3(-0.073350091,0,0) q0[3];
cx q0[2],q0[3];
rx(pi/2) q0[3];
r(2.9214592,pi/2) q0[4];
rx(pi/2) q0[4];
cx q0[3],q0[4];
rz(0.07095891) q0[4];
cx q0[3],q0[4];
rx(-pi/2) q0[3];
rx(-pi/2) q0[4];
u3(1.070064,0,0) q0[4];
cx q0[3],q0[4];
u3(-1.070064,0,0) q0[4];
cx q0[3],q0[4];
rx(pi/2) q0[4];
r(2.5243915,pi/2) q0[5];
rx(pi/2) q0[5];
cx q0[4],q0[5];
rz(1.9285273) q0[5];
cx q0[4],q0[5];
rx(-pi/2) q0[4];
rx(-pi/2) q0[5];
u3(1.3040954,0,0) q0[5];
cx q0[4],q0[5];
u3(-1.3040954,0,0) q0[5];
cx q0[4],q0[5];
rx(pi/2) q0[5];
r(0.64650147,pi/2) q0[6];
rx(pi/2) q0[6];
cx q0[5],q0[6];
rz(1.3094099) q0[6];
cx q0[5],q0[6];
rx(-pi/2) q0[5];
rx(-pi/2) q0[6];
u3(1.4618621,0,0) q0[6];
cx q0[5],q0[6];
u3(-1.4618621,0,0) q0[6];
cx q0[5],q0[6];
rx(pi/2) q0[6];
r(0.8170227,pi/2) q0[7];
rx(pi/2) q0[7];
cx q0[6],q0[7];
rz(1.2025341) q0[7];
cx q0[6],q0[7];
rx(-pi/2) q0[6];
rx(-pi/2) q0[7];
u3(1.5655627,0,0) q0[7];
cx q0[6],q0[7];
u3(-1.5655627,0,0) q0[7];
cx q0[6],q0[7];
rx(pi/2) q0[7];
r(2.809332,pi/2) q0[8];
rx(pi/2) q0[8];
cx q0[7],q0[8];
rz(0.56055484) q0[8];
cx q0[7],q0[8];
rx(-pi/2) q0[7];
rx(-pi/2) q0[8];
u3(0.2789862,0,0) q0[8];
cx q0[7],q0[8];
u3(-0.2789862,0,0) q0[8];
cx q0[7],q0[8];
rx(pi/2) q0[8];
r(2.8891194,pi/2) q0[9];
rx(pi/2) q0[9];
cx q0[8],q0[9];
rz(0.55424183) q0[9];
cx q0[8],q0[9];
rx(-pi/2) q0[8];
rx(-pi/2) q0[9];
u3(1.3743,0,0) q0[9];
cx q0[8],q0[9];
u3(-1.3743,0,0) q0[9];
cx q0[8],q0[9];
rx(pi/2) q0[9];
r(2.6467746,pi/2) q0[10];
rx(pi/2) q0[10];
cx q0[9],q0[10];
rz(1.6434892) q0[10];
cx q0[9],q0[10];
rx(-pi/2) q0[10];
u3(1.2492124,0,0) q0[10];
rx(-pi/2) q0[9];
cx q0[9],q0[10];
u3(-1.2492124,0,0) q0[10];
cx q0[9],q0[10];
rx(pi/2) q0[10];
r(0.10035009,pi/2) q0[11];
rx(pi/2) q0[11];
cx q0[10],q0[11];
rz(2.0672045) q0[11];
cx q0[10],q0[11];
rx(-pi/2) q0[10];
rx(-pi/2) q0[11];
u3(0.34878789,0,0) q0[11];
cx q0[10],q0[11];
u3(-0.34878789,0,0) q0[11];
cx q0[10],q0[11];
rx(pi/2) q0[11];
r(0.07055866,pi/2) q0[12];
rx(pi/2) q0[12];
cx q0[11],q0[12];
rz(1.2355332) q0[12];
cx q0[11],q0[12];
rx(-pi/2) q0[11];
rx(-pi/2) q0[12];
u3(1.2619787,0,0) q0[12];
cx q0[11],q0[12];
u3(-1.2619787,0,0) q0[12];
cx q0[11],q0[12];
rx(pi/2) q0[12];
r(2.8632129,pi/2) q0[13];
rx(pi/2) q0[13];
cx q0[12],q0[13];
rz(1.8357102) q0[13];
cx q0[12],q0[13];
rx(-pi/2) q0[12];
rx(-pi/2) q0[13];
u3(1.0663474,0,0) q0[13];
cx q0[12],q0[13];
u3(-1.0663474,0,0) q0[13];
cx q0[12],q0[13];
rx(pi/2) q0[13];
r(1.5875281,pi/2) q0[14];
rx(pi/2) q0[14];
cx q0[13],q0[14];
rz(2.0101551) q0[14];
cx q0[13],q0[14];
rx(-pi/2) q0[13];
rx(-pi/2) q0[14];
u3(0.02833167,0,0) q0[14];
cx q0[13],q0[14];
u3(-0.02833167,0,0) q0[14];
cx q0[13],q0[14];
rx(pi/2) q0[14];
r(0.53467653,pi/2) q0[15];
rx(pi/2) q0[15];
cx q0[14],q0[15];
rz(2.5928222) q0[15];
cx q0[14],q0[15];
rx(-pi/2) q0[14];
rx(-pi/2) q0[15];
u3(1.3303132,0,0) q0[15];
cx q0[14],q0[15];
u3(-1.3303132,0,0) q0[15];
cx q0[14],q0[15];
rx(pi/2) q0[15];
r(3.0493582,pi/2) q0[16];
rx(pi/2) q0[16];
cx q0[15],q0[16];
rz(1.280053) q0[16];
cx q0[15],q0[16];
rx(-pi/2) q0[15];
rx(-pi/2) q0[16];
u3(1.5226708,0,0) q0[16];
cx q0[15],q0[16];
u3(-1.5226708,0,0) q0[16];
cx q0[15],q0[16];
rx(pi/2) q0[16];
r(1.6479139,pi/2) q0[17];
rx(pi/2) q0[17];
cx q0[16],q0[17];
rz(2.3336259) q0[17];
cx q0[16],q0[17];
rx(-pi/2) q0[16];
rx(-pi/2) q0[17];
u3(0.83796289,0,0) q0[17];
cx q0[16],q0[17];
u3(-0.83796289,0,0) q0[17];
cx q0[16],q0[17];
rx(pi/2) q0[17];
r(1.527077,pi/2) q0[18];
rx(pi/2) q0[18];
cx q0[17],q0[18];
rz(1.5555978) q0[18];
cx q0[17],q0[18];
rx(-pi/2) q0[17];
rx(-pi/2) q0[18];
u3(1.5067029,0,0) q0[18];
cx q0[17],q0[18];
u3(-1.5067029,0,0) q0[18];
cx q0[17],q0[18];
rx(pi/2) q0[18];
r(0.67911928,pi/2) q0[19];
rx(pi/2) q0[19];
cx q0[18],q0[19];
rz(2.0293988) q0[19];
cx q0[18],q0[19];
rx(-pi/2) q0[18];
rx(-pi/2) q0[19];
u3(1.1411507,0,0) q0[19];
cx q0[18],q0[19];
u3(-1.1411507,0,0) q0[19];
cx q0[18],q0[19];
rx(pi/2) q0[19];
r(1.0173674,pi/2) q0[20];
rx(pi/2) q0[20];
cx q0[19],q0[20];
rz(3.0228648) q0[20];
cx q0[19],q0[20];
rx(-pi/2) q0[19];
rx(-pi/2) q0[20];
u3(1.5538562,0,0) q0[20];
cx q0[19],q0[20];
u3(-1.5538562,0,0) q0[20];
cx q0[19],q0[20];
rx(pi/2) q0[20];
r(2.9391612,pi/2) q0[21];
rx(pi/2) q0[21];
cx q0[20],q0[21];
rz(2.8828939) q0[21];
cx q0[20],q0[21];
rx(-pi/2) q0[20];
rx(-pi/2) q0[21];
u3(0.42818033,0,0) q0[21];
cx q0[20],q0[21];
u3(-0.42818033,0,0) q0[21];
cx q0[20],q0[21];
rx(pi/2) q0[21];
r(1.8734799,pi/2) q0[22];
rx(pi/2) q0[22];
cx q0[21],q0[22];
rz(1.6567731) q0[22];
cx q0[21],q0[22];
rx(-pi/2) q0[21];
rx(-pi/2) q0[22];
u3(0.8630194,0,0) q0[22];
cx q0[21],q0[22];
u3(-0.8630194,0,0) q0[22];
cx q0[21],q0[22];
rx(pi/2) q0[22];
r(2.1527555,pi/2) q0[23];
rx(pi/2) q0[23];
cx q0[22],q0[23];
rz(1.2531216) q0[23];
cx q0[22],q0[23];
rx(-pi/2) q0[22];
rx(-pi/2) q0[23];
u3(0.20983154,0,0) q0[23];
cx q0[22],q0[23];
u3(-0.20983154,0,0) q0[23];
cx q0[22],q0[23];
rx(pi/2) q0[23];
r(0.56383875,pi/2) q0[24];
rx(pi/2) q0[24];
cx q0[23],q0[24];
rz(0.44813225) q0[24];
cx q0[23],q0[24];
rx(-pi/2) q0[23];
rx(-pi/2) q0[24];
u3(0.18094276,0,0) q0[24];
cx q0[23],q0[24];
u3(-0.18094276,0,0) q0[24];
cx q0[23],q0[24];
rx(pi/2) q0[24];
r(0.88461072,pi/2) q0[25];
rx(pi/2) q0[25];
cx q0[24],q0[25];
rz(0.082978172) q0[25];
cx q0[24],q0[25];
rx(-pi/2) q0[24];
rx(-pi/2) q0[25];
u3(0.28335569,0,0) q0[25];
cx q0[24],q0[25];
u3(-0.28335569,0,0) q0[25];
cx q0[24],q0[25];
rx(pi/2) q0[25];
r(1.6820114,pi/2) q0[26];
rx(pi/2) q0[26];
cx q0[25],q0[26];
rz(0.334982) q0[26];
cx q0[25],q0[26];
rx(-pi/2) q0[25];
rx(-pi/2) q0[26];
u3(1.3337842,0,0) q0[26];
cx q0[25],q0[26];
u3(-1.3337842,0,0) q0[26];
cx q0[25],q0[26];
rx(pi/2) q0[26];
r(0.52916177,pi/2) q0[27];
rx(pi/2) q0[27];
cx q0[26],q0[27];
rz(2.7250419) q0[27];
cx q0[26],q0[27];
rx(-pi/2) q0[26];
rx(-pi/2) q0[27];
u3(0.90962314,0,0) q0[27];
cx q0[26],q0[27];
u3(-0.90962314,0,0) q0[27];
cx q0[26],q0[27];
rx(pi/2) q0[27];
r(0.2918017,pi/2) q0[28];
rx(pi/2) q0[28];
cx q0[27],q0[28];
rz(0.3558715) q0[28];
cx q0[27],q0[28];
rx(-pi/2) q0[27];
rx(-pi/2) q0[28];
u3(0.71850312,0,0) q0[28];
cx q0[27],q0[28];
u3(-0.71850312,0,0) q0[28];
cx q0[27],q0[28];
rx(pi/2) q0[28];
r(1.5156183,pi/2) q0[29];
rx(pi/2) q0[29];
cx q0[28],q0[29];
rz(0.31873261) q0[29];
cx q0[28],q0[29];
rx(-pi/2) q0[28];
rx(-pi/2) q0[29];
u3(1.4297983,0,0) q0[29];
cx q0[28],q0[29];
u3(-1.4297983,0,0) q0[29];
cx q0[28],q0[29];
rx(pi/2) q0[29];
r(1.2188079,pi/2) q0[30];
rx(pi/2) q0[30];
cx q0[29],q0[30];
rz(0.35919566) q0[30];
cx q0[29],q0[30];
rx(-pi/2) q0[29];
rx(-pi/2) q0[30];
u3(1.2279201,0,0) q0[30];
cx q0[29],q0[30];
u3(-1.2279201,0,0) q0[30];
cx q0[29],q0[30];
rx(pi/2) q0[30];
r(0.44669314,pi/2) q0[31];
rx(pi/2) q0[31];
cx q0[30],q0[31];
rz(0.44237778) q0[31];
cx q0[30],q0[31];
rx(-pi/2) q0[30];
rx(-pi/2) q0[31];
u3(1.5152635,0,0) q0[31];
cx q0[30],q0[31];
u3(-1.5152635,0,0) q0[31];
cx q0[30],q0[31];
rx(pi/2) q0[31];
r(0.50176458,pi/2) q0[32];
rx(pi/2) q0[32];
cx q0[31],q0[32];
rz(2.9660002) q0[32];
cx q0[31],q0[32];
rx(-pi/2) q0[31];
rx(-pi/2) q0[32];
u3(0.8690639,0,0) q0[32];
cx q0[31],q0[32];
u3(-0.8690639,0,0) q0[32];
cx q0[31],q0[32];
r(2.409062,pi/2) q0[33];
rx(pi/2) q0[33];
r(0.008262704,pi/2) q0[34];
rx(pi/2) q0[34];
cx q0[33],q0[34];
rz(2.5992881) q0[34];
cx q0[33],q0[34];
rx(-pi/2) q0[33];
rx(-pi/2) q0[34];
u3(1.3204729,0,0) q0[34];
cx q0[33],q0[34];
u3(-1.3204729,0,0) q0[34];
cx q0[33],q0[34];
cx q0[33],q0[1];
ccx q0[0],q0[1],q0[33];
cx q0[33],q0[1];
rx(pi/2) q0[34];
r(0.061964494,pi/2) q0[35];
rx(pi/2) q0[35];
cx q0[34],q0[35];
rz(3.0840557) q0[35];
cx q0[34],q0[35];
rx(-pi/2) q0[34];
rx(-pi/2) q0[35];
u3(0.56985898,0,0) q0[35];
cx q0[34],q0[35];
u3(-0.56985898,0,0) q0[35];
cx q0[34],q0[35];
cx q0[34],q0[2];
ccx q0[0],q0[2],q0[34];
cx q0[34],q0[2];
rx(pi/2) q0[35];
r(2.8034563,pi/2) q0[36];
rx(pi/2) q0[36];
cx q0[35],q0[36];
rz(2.1600561) q0[36];
cx q0[35],q0[36];
rx(-pi/2) q0[35];
rx(-pi/2) q0[36];
u3(0.64846351,0,0) q0[36];
cx q0[35],q0[36];
u3(-0.64846351,0,0) q0[36];
cx q0[35],q0[36];
cx q0[35],q0[3];
ccx q0[0],q0[3],q0[35];
cx q0[35],q0[3];
rx(pi/2) q0[36];
r(0.0065849066,pi/2) q0[37];
rx(pi/2) q0[37];
cx q0[36],q0[37];
rz(2.5527338) q0[37];
cx q0[36],q0[37];
rx(-pi/2) q0[36];
rx(-pi/2) q0[37];
u3(0.81334021,0,0) q0[37];
cx q0[36],q0[37];
u3(-0.81334021,0,0) q0[37];
cx q0[36],q0[37];
cx q0[36],q0[4];
ccx q0[0],q0[4],q0[36];
cx q0[36],q0[4];
rx(pi/2) q0[37];
r(1.5560356,pi/2) q0[38];
rx(pi/2) q0[38];
cx q0[37],q0[38];
rz(1.5159622) q0[38];
cx q0[37],q0[38];
rx(-pi/2) q0[37];
rx(-pi/2) q0[38];
u3(0.58187016,0,0) q0[38];
cx q0[37],q0[38];
u3(-0.58187016,0,0) q0[38];
cx q0[37],q0[38];
cx q0[37],q0[5];
ccx q0[0],q0[5],q0[37];
cx q0[37],q0[5];
rx(pi/2) q0[38];
r(2.4153847,pi/2) q0[39];
rx(pi/2) q0[39];
cx q0[38],q0[39];
rz(0.93954697) q0[39];
cx q0[38],q0[39];
rx(-pi/2) q0[38];
rx(-pi/2) q0[39];
u3(1.0287651,0,0) q0[39];
cx q0[38],q0[39];
u3(-1.0287651,0,0) q0[39];
cx q0[38],q0[39];
cx q0[38],q0[6];
ccx q0[0],q0[6],q0[38];
cx q0[38],q0[6];
rx(pi/2) q0[39];
r(2.4013392,pi/2) q0[40];
rx(pi/2) q0[40];
cx q0[39],q0[40];
rz(1.2783898) q0[40];
cx q0[39],q0[40];
rx(-pi/2) q0[39];
rx(-pi/2) q0[40];
u3(0.1967155,0,0) q0[40];
cx q0[39],q0[40];
u3(-0.1967155,0,0) q0[40];
cx q0[39],q0[40];
cx q0[39],q0[7];
ccx q0[0],q0[7],q0[39];
cx q0[39],q0[7];
rx(pi/2) q0[40];
r(1.6795244,pi/2) q0[41];
rx(pi/2) q0[41];
cx q0[40],q0[41];
rz(2.4964547) q0[41];
cx q0[40],q0[41];
rx(-pi/2) q0[40];
rx(-pi/2) q0[41];
u3(1.1285759,0,0) q0[41];
cx q0[40],q0[41];
u3(-1.1285759,0,0) q0[41];
cx q0[40],q0[41];
cx q0[40],q0[8];
ccx q0[0],q0[8],q0[40];
cx q0[40],q0[8];
rx(pi/2) q0[41];
r(3.129788,pi/2) q0[42];
rx(pi/2) q0[42];
cx q0[41],q0[42];
rz(1.5511031) q0[42];
cx q0[41],q0[42];
rx(-pi/2) q0[41];
rx(-pi/2) q0[42];
u3(0.89482599,0,0) q0[42];
cx q0[41],q0[42];
u3(-0.89482599,0,0) q0[42];
cx q0[41],q0[42];
cx q0[41],q0[9];
ccx q0[0],q0[9],q0[41];
cx q0[41],q0[9];
rx(pi/2) q0[42];
r(0.23080703,pi/2) q0[43];
rx(pi/2) q0[43];
cx q0[42],q0[43];
rz(1.0795082) q0[43];
cx q0[42],q0[43];
rx(-pi/2) q0[42];
rx(-pi/2) q0[43];
u3(1.0050012,0,0) q0[43];
cx q0[42],q0[43];
u3(-1.0050012,0,0) q0[43];
cx q0[42],q0[43];
cx q0[42],q0[10];
ccx q0[0],q0[10],q0[42];
cx q0[42],q0[10];
rx(pi/2) q0[43];
r(2.4870471,pi/2) q0[44];
rx(pi/2) q0[44];
cx q0[43],q0[44];
rz(2.2331017) q0[44];
cx q0[43],q0[44];
rx(-pi/2) q0[43];
rx(-pi/2) q0[44];
u3(0.2325188,0,0) q0[44];
cx q0[43],q0[44];
u3(-0.2325188,0,0) q0[44];
cx q0[43],q0[44];
cx q0[43],q0[11];
ccx q0[0],q0[11],q0[43];
cx q0[43],q0[11];
rx(pi/2) q0[44];
r(2.0466634,pi/2) q0[45];
rx(pi/2) q0[45];
cx q0[44],q0[45];
rz(2.9179752) q0[45];
cx q0[44],q0[45];
rx(-pi/2) q0[44];
rx(-pi/2) q0[45];
u3(0.8736573,0,0) q0[45];
cx q0[44],q0[45];
u3(-0.8736573,0,0) q0[45];
cx q0[44],q0[45];
cx q0[44],q0[12];
ccx q0[0],q0[12],q0[44];
cx q0[44],q0[12];
rx(pi/2) q0[45];
r(2.7909,pi/2) q0[46];
rx(pi/2) q0[46];
cx q0[45],q0[46];
rz(1.9797768) q0[46];
cx q0[45],q0[46];
rx(-pi/2) q0[45];
rx(-pi/2) q0[46];
u3(0.92648115,0,0) q0[46];
cx q0[45],q0[46];
u3(-0.92648115,0,0) q0[46];
cx q0[45],q0[46];
cx q0[45],q0[13];
ccx q0[0],q0[13],q0[45];
cx q0[45],q0[13];
rx(pi/2) q0[46];
r(0.24275472,pi/2) q0[47];
rx(pi/2) q0[47];
cx q0[46],q0[47];
rz(2.0603188) q0[47];
cx q0[46],q0[47];
rx(-pi/2) q0[46];
rx(-pi/2) q0[47];
u3(0.24767259,0,0) q0[47];
cx q0[46],q0[47];
u3(-0.24767259,0,0) q0[47];
cx q0[46],q0[47];
cx q0[46],q0[14];
ccx q0[0],q0[14],q0[46];
cx q0[46],q0[14];
rx(pi/2) q0[47];
r(0.47544601,pi/2) q0[48];
rx(pi/2) q0[48];
cx q0[47],q0[48];
rz(2.3201302) q0[48];
cx q0[47],q0[48];
rx(-pi/2) q0[47];
rx(-pi/2) q0[48];
u3(0.26555996,0,0) q0[48];
cx q0[47],q0[48];
u3(-0.26555996,0,0) q0[48];
cx q0[47],q0[48];
cx q0[47],q0[15];
ccx q0[0],q0[15],q0[47];
cx q0[47],q0[15];
rx(pi/2) q0[48];
r(0.18923316,pi/2) q0[49];
rx(pi/2) q0[49];
cx q0[48],q0[49];
rz(2.2480372) q0[49];
cx q0[48],q0[49];
rx(-pi/2) q0[48];
rx(-pi/2) q0[49];
u3(1.3917255,0,0) q0[49];
cx q0[48],q0[49];
u3(-1.3917255,0,0) q0[49];
cx q0[48],q0[49];
cx q0[48],q0[16];
ccx q0[0],q0[16],q0[48];
cx q0[48],q0[16];
rx(pi/2) q0[49];
r(1.4182767,pi/2) q0[50];
rx(pi/2) q0[50];
cx q0[49],q0[50];
rz(0.36410389) q0[50];
cx q0[49],q0[50];
rx(-pi/2) q0[49];
rx(-pi/2) q0[50];
u3(1.4631176,0,0) q0[50];
cx q0[49],q0[50];
u3(-1.4631176,0,0) q0[50];
cx q0[49],q0[50];
cx q0[49],q0[17];
ccx q0[0],q0[17],q0[49];
cx q0[49],q0[17];
rx(pi/2) q0[50];
r(2.8403775,pi/2) q0[51];
rx(pi/2) q0[51];
cx q0[50],q0[51];
rz(2.9267501) q0[51];
cx q0[50],q0[51];
rx(-pi/2) q0[50];
rx(-pi/2) q0[51];
u3(0.46225096,0,0) q0[51];
cx q0[50],q0[51];
u3(-0.46225096,0,0) q0[51];
cx q0[50],q0[51];
cx q0[50],q0[18];
ccx q0[0],q0[18],q0[50];
cx q0[50],q0[18];
rx(pi/2) q0[51];
r(3.1364444,pi/2) q0[52];
rx(pi/2) q0[52];
cx q0[51],q0[52];
rz(2.2840095) q0[52];
cx q0[51],q0[52];
rx(-pi/2) q0[51];
rx(-pi/2) q0[52];
u3(1.4028767,0,0) q0[52];
cx q0[51],q0[52];
u3(-1.4028767,0,0) q0[52];
cx q0[51],q0[52];
cx q0[51],q0[19];
ccx q0[0],q0[19],q0[51];
cx q0[51],q0[19];
rx(pi/2) q0[52];
r(2.290132,pi/2) q0[53];
rx(pi/2) q0[53];
cx q0[52],q0[53];
rz(0.12864404) q0[53];
cx q0[52],q0[53];
rx(-pi/2) q0[52];
rx(-pi/2) q0[53];
u3(1.2328002,0,0) q0[53];
cx q0[52],q0[53];
u3(-1.2328002,0,0) q0[53];
cx q0[52],q0[53];
cx q0[52],q0[20];
ccx q0[0],q0[20],q0[52];
cx q0[52],q0[20];
rx(pi/2) q0[53];
r(0.37985102,pi/2) q0[54];
rx(pi/2) q0[54];
cx q0[53],q0[54];
rz(0.28632795) q0[54];
cx q0[53],q0[54];
rx(-pi/2) q0[53];
rx(-pi/2) q0[54];
u3(0.61298445,0,0) q0[54];
cx q0[53],q0[54];
u3(-0.61298445,0,0) q0[54];
cx q0[53],q0[54];
cx q0[53],q0[21];
ccx q0[0],q0[21],q0[53];
cx q0[53],q0[21];
rx(pi/2) q0[54];
r(0.065956964,pi/2) q0[55];
rx(pi/2) q0[55];
cx q0[54],q0[55];
rz(1.5912115) q0[55];
cx q0[54],q0[55];
rx(-pi/2) q0[54];
rx(-pi/2) q0[55];
u3(0.72834728,0,0) q0[55];
cx q0[54],q0[55];
u3(-0.72834728,0,0) q0[55];
cx q0[54],q0[55];
cx q0[54],q0[22];
ccx q0[0],q0[22],q0[54];
cx q0[54],q0[22];
rx(pi/2) q0[55];
r(1.3384439,pi/2) q0[56];
rx(pi/2) q0[56];
cx q0[55],q0[56];
rz(3.0019755) q0[56];
cx q0[55],q0[56];
rx(-pi/2) q0[55];
rx(-pi/2) q0[56];
u3(0.68235224,0,0) q0[56];
cx q0[55],q0[56];
u3(-0.68235224,0,0) q0[56];
cx q0[55],q0[56];
cx q0[55],q0[23];
ccx q0[0],q0[23],q0[55];
cx q0[55],q0[23];
rx(pi/2) q0[56];
r(0.070627612,pi/2) q0[57];
rx(pi/2) q0[57];
cx q0[56],q0[57];
rz(3.1057103) q0[57];
cx q0[56],q0[57];
rx(-pi/2) q0[56];
rx(-pi/2) q0[57];
u3(0.40333772,0,0) q0[57];
cx q0[56],q0[57];
u3(-0.40333772,0,0) q0[57];
cx q0[56],q0[57];
cx q0[56],q0[24];
ccx q0[0],q0[24],q0[56];
cx q0[56],q0[24];
rx(pi/2) q0[57];
r(3.0895312,pi/2) q0[58];
rx(pi/2) q0[58];
cx q0[57],q0[58];
rz(0.89718806) q0[58];
cx q0[57],q0[58];
rx(-pi/2) q0[57];
rx(-pi/2) q0[58];
u3(0.91118801,0,0) q0[58];
cx q0[57],q0[58];
u3(-0.91118801,0,0) q0[58];
cx q0[57],q0[58];
cx q0[57],q0[25];
ccx q0[0],q0[25],q0[57];
cx q0[57],q0[25];
rx(pi/2) q0[58];
r(2.2965715,pi/2) q0[59];
rx(pi/2) q0[59];
cx q0[58],q0[59];
rz(2.3662803) q0[59];
cx q0[58],q0[59];
rx(-pi/2) q0[58];
rx(-pi/2) q0[59];
u3(0.28325665,0,0) q0[59];
cx q0[58],q0[59];
u3(-0.28325665,0,0) q0[59];
cx q0[58],q0[59];
cx q0[58],q0[26];
ccx q0[0],q0[26],q0[58];
cx q0[58],q0[26];
rx(pi/2) q0[59];
r(2.755527,pi/2) q0[60];
rx(pi/2) q0[60];
cx q0[59],q0[60];
rz(0.90177392) q0[60];
cx q0[59],q0[60];
rx(-pi/2) q0[59];
rx(-pi/2) q0[60];
u3(0.69136665,0,0) q0[60];
cx q0[59],q0[60];
u3(-0.69136665,0,0) q0[60];
cx q0[59],q0[60];
cx q0[59],q0[27];
ccx q0[0],q0[27],q0[59];
cx q0[59],q0[27];
rx(pi/2) q0[60];
r(2.8840198,pi/2) q0[61];
rx(pi/2) q0[61];
cx q0[60],q0[61];
rz(0.14310722) q0[61];
cx q0[60],q0[61];
rx(-pi/2) q0[60];
rx(-pi/2) q0[61];
u3(1.1465328,0,0) q0[61];
cx q0[60],q0[61];
u3(-1.1465328,0,0) q0[61];
cx q0[60],q0[61];
cx q0[60],q0[28];
ccx q0[0],q0[28],q0[60];
cx q0[60],q0[28];
rx(pi/2) q0[61];
r(2.6211038,pi/2) q0[62];
rx(pi/2) q0[62];
cx q0[61],q0[62];
rz(3.0513977) q0[62];
cx q0[61],q0[62];
rx(-pi/2) q0[61];
rx(-pi/2) q0[62];
u3(0.40787137,0,0) q0[62];
cx q0[61],q0[62];
u3(-0.40787137,0,0) q0[62];
cx q0[61],q0[62];
cx q0[61],q0[29];
ccx q0[0],q0[29],q0[61];
cx q0[61],q0[29];
rx(pi/2) q0[62];
r(1.8290494,pi/2) q0[63];
rx(pi/2) q0[63];
cx q0[62],q0[63];
rz(1.4919719) q0[63];
cx q0[62],q0[63];
rx(-pi/2) q0[62];
rx(-pi/2) q0[63];
u3(1.0966814,0,0) q0[63];
cx q0[62],q0[63];
u3(-1.0966814,0,0) q0[63];
cx q0[62],q0[63];
cx q0[62],q0[30];
ccx q0[0],q0[30],q0[62];
cx q0[62],q0[30];
rx(pi/2) q0[63];
r(2.157954,pi/2) q0[64];
rx(pi/2) q0[64];
cx q0[63],q0[64];
rz(0.90310564) q0[64];
cx q0[63],q0[64];
rx(-pi/2) q0[63];
rx(-pi/2) q0[64];
u3(1.3558226,0,0) q0[64];
cx q0[63],q0[64];
u3(-1.3558226,0,0) q0[64];
cx q0[63],q0[64];
cx q0[63],q0[31];
ccx q0[0],q0[31],q0[63];
cx q0[63],q0[31];
cx q0[64],q0[32];
ccx q0[0],q0[32],q0[64];
u2(0,pi) q0[0];
cx q0[64],q0[32];
measure q0[33] -> c0[0];
measure q0[34] -> c0[1];
measure q0[35] -> c0[2];
measure q0[36] -> c0[3];
measure q0[37] -> c0[4];
measure q0[38] -> c0[5];
measure q0[39] -> c0[6];
measure q0[40] -> c0[7];
measure q0[41] -> c0[8];
measure q0[42] -> c0[9];
measure q0[43] -> c0[10];
measure q0[44] -> c0[11];
measure q0[45] -> c0[12];
measure q0[46] -> c0[13];
measure q0[47] -> c0[14];
measure q0[48] -> c0[15];
measure q0[49] -> c0[16];
measure q0[50] -> c0[17];
measure q0[51] -> c0[18];
measure q0[52] -> c0[19];
measure q0[53] -> c0[20];
measure q0[54] -> c0[21];
measure q0[55] -> c0[22];
measure q0[56] -> c0[23];
measure q0[57] -> c0[24];
measure q0[58] -> c0[25];
measure q0[59] -> c0[26];
measure q0[60] -> c0[27];
measure q0[61] -> c0[28];
measure q0[62] -> c0[29];
measure q0[63] -> c0[30];
measure q0[64] -> c0[31];
