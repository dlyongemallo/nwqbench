namespace Quantum {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;

    function SetBitValue(reg: Int, bit: Int, value: Bool): Int {
        if(value) {
            return reg ||| (1 <<< bit);
        } else {
            return reg &&& ~~~(1 <<< bit);
        }
    }
    
    operation Circuit(): (Int, Int) {
mutable c0 = 0;
mutable meas = 0;
using(qubits = Qubit[31]) {
H(qubits[0]);
H(qubits[1]);
H(qubits[2]);
H(qubits[3]);
H(qubits[4]);
H(qubits[5]);
H(qubits[6]);
H(qubits[7]);
H(qubits[8]);
H(qubits[9]);
H(qubits[10]);
H(qubits[11]);
H(qubits[12]);
H(qubits[13]);
H(qubits[14]);
H(qubits[15]);
H(qubits[16]);
H(qubits[17]);
H(qubits[18]);
H(qubits[19]);
H(qubits[20]);
H(qubits[21]);
H(qubits[22]);
H(qubits[23]);
H(qubits[24]);
H(qubits[25]);
H(qubits[26]);
H(qubits[27]);
H(qubits[28]);
H(qubits[29]);
H(qubits[30]);
CNOT(qubits[0], qubits[1]);
Rz(1.0658475, qubits[1]);
CNOT(qubits[0], qubits[1]);
CNOT(qubits[1], qubits[2]);
Rz(1.3469339, qubits[2]);
CNOT(qubits[1], qubits[2]);
CNOT(qubits[2], qubits[3]);
Rz(2.9431296, qubits[3]);
CNOT(qubits[2], qubits[3]);
CNOT(qubits[3], qubits[4]);
Rz(1.3326363, qubits[4]);
CNOT(qubits[3], qubits[4]);
CNOT(qubits[4], qubits[5]);
Rz(1.1709364, qubits[5]);
CNOT(qubits[4], qubits[5]);
CNOT(qubits[5], qubits[6]);
Rz(1.2578675, qubits[6]);
CNOT(qubits[5], qubits[6]);
CNOT(qubits[6], qubits[7]);
Rz(2.0841463, qubits[7]);
CNOT(qubits[6], qubits[7]);
CNOT(qubits[7], qubits[8]);
Rz(2.8192125, qubits[8]);
CNOT(qubits[7], qubits[8]);
CNOT(qubits[8], qubits[9]);
Rz(0.98827017, qubits[9]);
CNOT(qubits[8], qubits[9]);
CNOT(qubits[9], qubits[10]);
Rz(2.2201964, qubits[10]);
CNOT(qubits[9], qubits[10]);
CNOT(qubits[10], qubits[11]);
Rz(1.7733241, qubits[11]);
CNOT(qubits[10], qubits[11]);
CNOT(qubits[11], qubits[12]);
Rz(1.7470422, qubits[12]);
CNOT(qubits[11], qubits[12]);
CNOT(qubits[12], qubits[13]);
Rz(2.965117, qubits[13]);
CNOT(qubits[12], qubits[13]);
CNOT(qubits[13], qubits[14]);
Rz(0.69517847, qubits[14]);
CNOT(qubits[13], qubits[14]);
CNOT(qubits[14], qubits[15]);
Rz(1.2866319, qubits[15]);
CNOT(qubits[14], qubits[15]);
CNOT(qubits[15], qubits[16]);
Rz(1.8933975, qubits[16]);
CNOT(qubits[15], qubits[16]);
CNOT(qubits[16], qubits[17]);
Rz(2.3583777, qubits[17]);
CNOT(qubits[16], qubits[17]);
CNOT(qubits[17], qubits[18]);
Rz(2.2971814, qubits[18]);
CNOT(qubits[17], qubits[18]);
CNOT(qubits[18], qubits[19]);
Rz(0.39448556, qubits[19]);
CNOT(qubits[18], qubits[19]);
CNOT(qubits[19], qubits[20]);
Rz(0.75803471, qubits[20]);
CNOT(qubits[19], qubits[20]);
CNOT(qubits[20], qubits[21]);
Rz(1.2243158, qubits[21]);
CNOT(qubits[20], qubits[21]);
CNOT(qubits[21], qubits[22]);
Rz(2.5995999, qubits[22]);
CNOT(qubits[21], qubits[22]);
CNOT(qubits[22], qubits[23]);
Rz(0.48579881, qubits[23]);
CNOT(qubits[22], qubits[23]);
CNOT(qubits[23], qubits[24]);
Rz(2.4938932, qubits[24]);
CNOT(qubits[23], qubits[24]);
CNOT(qubits[24], qubits[25]);
Rz(1.7565685, qubits[25]);
CNOT(qubits[24], qubits[25]);
CNOT(qubits[25], qubits[26]);
Rz(2.812822, qubits[26]);
CNOT(qubits[25], qubits[26]);
CNOT(qubits[26], qubits[27]);
Rz(1.442048, qubits[27]);
CNOT(qubits[26], qubits[27]);
CNOT(qubits[27], qubits[28]);
Rz(1.1471001, qubits[28]);
CNOT(qubits[27], qubits[28]);
CNOT(qubits[28], qubits[29]);
Rz(2.3181764, qubits[29]);
CNOT(qubits[28], qubits[29]);
CNOT(qubits[29], qubits[30]);
Rz(1.0436577, qubits[30]);
CNOT(qubits[29], qubits[30]);
CNOT(qubits[29], qubits[30]);
Rz(0.40805402, qubits[30]);
CNOT(qubits[29], qubits[30]);
CNOT(qubits[28], qubits[29]);
Rz(0.84629311, qubits[30]);
Rz(0.63924876, qubits[29]);
H(qubits[30]);
CNOT(qubits[28], qubits[29]);
CNOT(qubits[27], qubits[28]);
Rz(0.35765156, qubits[29]);
Rz(0.83292732, qubits[28]);
H(qubits[29]);
CNOT(qubits[27], qubits[28]);
CNOT(qubits[26], qubits[27]);
Rz(0.006021643, qubits[28]);
Rz(3.0760052, qubits[27]);
H(qubits[28]);
CNOT(qubits[26], qubits[27]);
CNOT(qubits[25], qubits[26]);
Rz(0.6624743, qubits[27]);
Rz(1.7315814, qubits[26]);
H(qubits[27]);
CNOT(qubits[25], qubits[26]);
CNOT(qubits[24], qubits[25]);
Rz(2.9799951, qubits[26]);
Rz(2.0133102, qubits[25]);
H(qubits[26]);
CNOT(qubits[24], qubits[25]);
CNOT(qubits[23], qubits[24]);
Rz(1.5385888, qubits[25]);
Rz(2.6979026, qubits[24]);
H(qubits[25]);
CNOT(qubits[23], qubits[24]);
CNOT(qubits[22], qubits[23]);
Rz(2.7021749, qubits[24]);
Rz(1.1750932, qubits[23]);
H(qubits[24]);
CNOT(qubits[22], qubits[23]);
CNOT(qubits[21], qubits[22]);
Rz(1.1539891, qubits[23]);
Rz(1.2464143, qubits[22]);
H(qubits[23]);
CNOT(qubits[21], qubits[22]);
CNOT(qubits[20], qubits[21]);
Rz(1.4555561, qubits[22]);
Rz(0.35141671, qubits[21]);
H(qubits[22]);
CNOT(qubits[20], qubits[21]);
CNOT(qubits[19], qubits[20]);
Rz(0.36734002, qubits[21]);
Rz(1.4009585, qubits[20]);
H(qubits[21]);
CNOT(qubits[19], qubits[20]);
CNOT(qubits[18], qubits[19]);
Rz(1.4228222, qubits[20]);
Rz(2.2241807, qubits[19]);
H(qubits[20]);
CNOT(qubits[18], qubits[19]);
CNOT(qubits[17], qubits[18]);
Rz(0.73442112, qubits[19]);
Rz(0.48047704, qubits[18]);
H(qubits[19]);
CNOT(qubits[17], qubits[18]);
CNOT(qubits[16], qubits[17]);
Rz(2.7364046, qubits[18]);
Rz(0.62984233, qubits[17]);
H(qubits[18]);
CNOT(qubits[16], qubits[17]);
CNOT(qubits[15], qubits[16]);
Rz(0.91873974, qubits[17]);
Rz(0.68643378, qubits[16]);
H(qubits[17]);
CNOT(qubits[15], qubits[16]);
CNOT(qubits[14], qubits[15]);
Rz(1.2648829, qubits[16]);
Rz(0.28424805, qubits[15]);
H(qubits[16]);
CNOT(qubits[14], qubits[15]);
CNOT(qubits[13], qubits[14]);
Rz(0.80399553, qubits[15]);
Rz(1.658587, qubits[14]);
H(qubits[15]);
CNOT(qubits[13], qubits[14]);
CNOT(qubits[12], qubits[13]);
Rz(1.7682214, qubits[14]);
Rz(0.95546462, qubits[13]);
H(qubits[14]);
CNOT(qubits[12], qubits[13]);
CNOT(qubits[11], qubits[12]);
Rz(2.2442394, qubits[13]);
Rz(0.65522563, qubits[12]);
H(qubits[13]);
CNOT(qubits[11], qubits[12]);
CNOT(qubits[10], qubits[11]);
Rz(2.0498984, qubits[12]);
Rz(0.46021301, qubits[11]);
H(qubits[12]);
CNOT(qubits[10], qubits[11]);
CNOT(qubits[9], qubits[10]);
Rz(2.4504383, qubits[11]);
Rz(3.0181417, qubits[10]);
H(qubits[11]);
CNOT(qubits[9], qubits[10]);
CNOT(qubits[8], qubits[9]);
Rz(2.5382655, qubits[10]);
Rz(2.0692088, qubits[9]);
H(qubits[10]);
CNOT(qubits[8], qubits[9]);
CNOT(qubits[7], qubits[8]);
Rz(0.38961937, qubits[9]);
Rz(2.4235063, qubits[8]);
H(qubits[9]);
CNOT(qubits[7], qubits[8]);
CNOT(qubits[6], qubits[7]);
Rz(2.6333973, qubits[8]);
Rz(0.85766872, qubits[7]);
H(qubits[8]);
CNOT(qubits[6], qubits[7]);
CNOT(qubits[5], qubits[6]);
Rz(1.7651461, qubits[7]);
Rz(0.55108119, qubits[6]);
H(qubits[7]);
CNOT(qubits[5], qubits[6]);
CNOT(qubits[4], qubits[5]);
Rz(0.11153918, qubits[6]);
Rz(2.8027743, qubits[5]);
H(qubits[6]);
CNOT(qubits[4], qubits[5]);
CNOT(qubits[3], qubits[4]);
Rz(0.80637318, qubits[5]);
Rz(2.4302997, qubits[4]);
H(qubits[5]);
CNOT(qubits[3], qubits[4]);
CNOT(qubits[2], qubits[3]);
Rz(2.6169361, qubits[4]);
Rz(2.7425702, qubits[3]);
H(qubits[4]);
CNOT(qubits[2], qubits[3]);
CNOT(qubits[1], qubits[2]);
Rz(0.76340334, qubits[3]);
Rz(1.4251612, qubits[2]);
H(qubits[3]);
CNOT(qubits[1], qubits[2]);
CNOT(qubits[0], qubits[1]);
Rz(2.8449641, qubits[2]);
Rz(0.9591349, qubits[1]);
H(qubits[2]);
CNOT(qubits[0], qubits[1]);
Rz(0.24056166, qubits[0]);
Rz(0.29896747, qubits[1]);
H(qubits[0]);
H(qubits[1]);
set meas = SetBitValue(meas, 0, ResultAsBool(M(qubits[0])));
set meas = SetBitValue(meas, 1, ResultAsBool(M(qubits[1])));
set meas = SetBitValue(meas, 2, ResultAsBool(M(qubits[2])));
set meas = SetBitValue(meas, 3, ResultAsBool(M(qubits[3])));
set meas = SetBitValue(meas, 4, ResultAsBool(M(qubits[4])));
set meas = SetBitValue(meas, 5, ResultAsBool(M(qubits[5])));
set meas = SetBitValue(meas, 6, ResultAsBool(M(qubits[6])));
set meas = SetBitValue(meas, 7, ResultAsBool(M(qubits[7])));
set meas = SetBitValue(meas, 8, ResultAsBool(M(qubits[8])));
set meas = SetBitValue(meas, 9, ResultAsBool(M(qubits[9])));
set meas = SetBitValue(meas, 10, ResultAsBool(M(qubits[10])));
set meas = SetBitValue(meas, 11, ResultAsBool(M(qubits[11])));
set meas = SetBitValue(meas, 12, ResultAsBool(M(qubits[12])));
set meas = SetBitValue(meas, 13, ResultAsBool(M(qubits[13])));
set meas = SetBitValue(meas, 14, ResultAsBool(M(qubits[14])));
set meas = SetBitValue(meas, 15, ResultAsBool(M(qubits[15])));
set meas = SetBitValue(meas, 16, ResultAsBool(M(qubits[16])));
set meas = SetBitValue(meas, 17, ResultAsBool(M(qubits[17])));
set meas = SetBitValue(meas, 18, ResultAsBool(M(qubits[18])));
set meas = SetBitValue(meas, 19, ResultAsBool(M(qubits[19])));
set meas = SetBitValue(meas, 20, ResultAsBool(M(qubits[20])));
set meas = SetBitValue(meas, 21, ResultAsBool(M(qubits[21])));
set meas = SetBitValue(meas, 22, ResultAsBool(M(qubits[22])));
set meas = SetBitValue(meas, 23, ResultAsBool(M(qubits[23])));
set meas = SetBitValue(meas, 24, ResultAsBool(M(qubits[24])));
set meas = SetBitValue(meas, 25, ResultAsBool(M(qubits[25])));
set meas = SetBitValue(meas, 26, ResultAsBool(M(qubits[26])));
set meas = SetBitValue(meas, 27, ResultAsBool(M(qubits[27])));
set meas = SetBitValue(meas, 28, ResultAsBool(M(qubits[28])));
set meas = SetBitValue(meas, 29, ResultAsBool(M(qubits[29])));
set meas = SetBitValue(meas, 30, ResultAsBool(M(qubits[30])));
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
}
return (c0, meas);
}
}
ResetAll(qubits);
        }
        return (c0, meas);
    }
}
