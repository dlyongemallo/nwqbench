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
using(qubits = Qubit[7]) {
H(qubits[0]);
H(qubits[1]);
H(qubits[2]);
H(qubits[3]);
H(qubits[4]);
H(qubits[5]);
H(qubits[6]);
Rz(0.061746479, qubits[0]);
Rz(2.7965488, qubits[1]);
Rz(1.2942629, qubits[2]);
Rz(2.7055942, qubits[3]);
Rz(3.0888028, qubits[4]);
Rz(1.2473229, qubits[5]);
Rz(1.8772195, qubits[6]);
CNOT(qubits[0], qubits[1]);
Rz(2.3067718, qubits[1]);
CNOT(qubits[0], qubits[1]);
Ry(0.75492671, qubits[0]);
CNOT(qubits[1], qubits[2]);
Rz(2.5752432, qubits[0]);
Rz(0.53518449, qubits[2]);
CNOT(qubits[1], qubits[2]);
Ry(2.479805, qubits[1]);
CNOT(qubits[2], qubits[3]);
Rz(1.2608489, qubits[1]);
Rz(0.18265939, qubits[3]);
Controlled Z([qubits[0]], (qubits[1]));
CNOT(qubits[2], qubits[3]);
Ry(2.4500329, qubits[2]);
CNOT(qubits[3], qubits[4]);
Rz(2.8002554, qubits[2]);
Rz(0.14356041, qubits[4]);
Controlled Z([qubits[0]], (qubits[2]));
CNOT(qubits[3], qubits[4]);
Ry(0.41270112, qubits[3]);
CNOT(qubits[4], qubits[5]);
Rz(2.0755942, qubits[3]);
Rz(0.90093914, qubits[5]);
Controlled Z([qubits[0]], (qubits[3]));
CNOT(qubits[4], qubits[5]);
Ry(2.3214174, qubits[4]);
CNOT(qubits[5], qubits[6]);
Rz(2.4902515, qubits[4]);
Rz(0.70476932, qubits[6]);
Controlled Z([qubits[0]], (qubits[4]));
CNOT(qubits[5], qubits[6]);
Ry(2.5042328, qubits[5]);
Ry(1.0951026, qubits[6]);
Rz(3.0520425, qubits[5]);
Rz(2.7412258, qubits[6]);
Controlled Z([qubits[0]], (qubits[5]));
Controlled Z([qubits[0]], (qubits[6]));
Ry(0.028464096, qubits[0]);
Controlled Z([qubits[1]], (qubits[2]));
Rz(0.67373494, qubits[0]);
Controlled Z([qubits[1]], (qubits[3]));
Controlled Z([qubits[1]], (qubits[4]));
Controlled Z([qubits[1]], (qubits[5]));
Controlled Z([qubits[1]], (qubits[6]));
Ry(2.6292019, qubits[1]);
Controlled Z([qubits[2]], (qubits[3]));
Rz(2.5904737, qubits[1]);
Controlled Z([qubits[2]], (qubits[4]));
Controlled Z([qubits[0]], (qubits[1]));
Controlled Z([qubits[2]], (qubits[5]));
Controlled Z([qubits[2]], (qubits[6]));
Ry(1.5608658, qubits[2]);
Controlled Z([qubits[3]], (qubits[4]));
Rz(1.9889345, qubits[2]);
Controlled Z([qubits[3]], (qubits[5]));
Controlled Z([qubits[0]], (qubits[2]));
Controlled Z([qubits[3]], (qubits[6]));
Ry(0.96005601, qubits[3]);
Controlled Z([qubits[4]], (qubits[5]));
Rz(0.64122404, qubits[3]);
Controlled Z([qubits[4]], (qubits[6]));
Controlled Z([qubits[0]], (qubits[3]));
Ry(1.8476801, qubits[4]);
Controlled Z([qubits[5]], (qubits[6]));
Rz(0.58436478, qubits[4]);
Ry(1.7380239, qubits[5]);
Ry(1.6633512, qubits[6]);
Controlled Z([qubits[0]], (qubits[4]));
Rz(3.1249111, qubits[5]);
Rz(0.82860035, qubits[6]);
Controlled Z([qubits[0]], (qubits[5]));
Controlled Z([qubits[0]], (qubits[6]));
Ry(2.9818792, qubits[0]);
Controlled Z([qubits[1]], (qubits[2]));
Rz(3.0533654, qubits[0]);
Controlled Z([qubits[1]], (qubits[3]));
Controlled Z([qubits[1]], (qubits[4]));
Controlled Z([qubits[1]], (qubits[5]));
Controlled Z([qubits[1]], (qubits[6]));
Ry(0.46640615, qubits[1]);
Controlled Z([qubits[2]], (qubits[3]));
Rz(0.28833455, qubits[1]);
Controlled Z([qubits[2]], (qubits[4]));
Controlled Z([qubits[0]], (qubits[1]));
Controlled Z([qubits[2]], (qubits[5]));
Controlled Z([qubits[2]], (qubits[6]));
Ry(2.3577123, qubits[2]);
Controlled Z([qubits[3]], (qubits[4]));
Rz(0.69895019, qubits[2]);
Controlled Z([qubits[3]], (qubits[5]));
Controlled Z([qubits[0]], (qubits[2]));
Controlled Z([qubits[3]], (qubits[6]));
Ry(0.54382, qubits[3]);
Controlled Z([qubits[4]], (qubits[5]));
Rz(2.1833943, qubits[3]);
Controlled Z([qubits[4]], (qubits[6]));
Controlled Z([qubits[0]], (qubits[3]));
Ry(2.1692571, qubits[4]);
Controlled Z([qubits[5]], (qubits[6]));
Rz(0.69129634, qubits[4]);
Ry(1.3545207, qubits[5]);
Ry(0.64753279, qubits[6]);
Controlled Z([qubits[0]], (qubits[4]));
Rz(1.3572003, qubits[5]);
Rz(2.5361083, qubits[6]);
Controlled Z([qubits[0]], (qubits[5]));
Controlled Z([qubits[0]], (qubits[6]));
Ry(1.4090181, qubits[0]);
Controlled Z([qubits[1]], (qubits[2]));
Rz(2.11687, qubits[0]);
Controlled Z([qubits[1]], (qubits[3]));
Controlled Z([qubits[1]], (qubits[4]));
Controlled Z([qubits[1]], (qubits[5]));
Controlled Z([qubits[1]], (qubits[6]));
Ry(0.11502726, qubits[1]);
Controlled Z([qubits[2]], (qubits[3]));
Rz(2.1837471, qubits[1]);
Controlled Z([qubits[2]], (qubits[4]));
Controlled Z([qubits[0]], (qubits[1]));
Controlled Z([qubits[2]], (qubits[5]));
Controlled Z([qubits[2]], (qubits[6]));
Ry(0.27630981, qubits[2]);
Controlled Z([qubits[3]], (qubits[4]));
Rz(2.3212155, qubits[2]);
Controlled Z([qubits[3]], (qubits[5]));
Controlled Z([qubits[0]], (qubits[2]));
Controlled Z([qubits[3]], (qubits[6]));
Ry(1.6033238, qubits[3]);
Controlled Z([qubits[4]], (qubits[5]));
Rz(0.62591067, qubits[3]);
Controlled Z([qubits[4]], (qubits[6]));
Controlled Z([qubits[0]], (qubits[3]));
Ry(0.026473999, qubits[4]);
Controlled Z([qubits[5]], (qubits[6]));
Rz(2.9076185, qubits[4]);
Ry(0.33412436, qubits[5]);
Ry(1.7297581, qubits[6]);
Controlled Z([qubits[0]], (qubits[4]));
Rz(0.22548423, qubits[5]);
Rz(1.0798938, qubits[6]);
Controlled Z([qubits[0]], (qubits[5]));
Controlled Z([qubits[0]], (qubits[6]));
Controlled Z([qubits[1]], (qubits[2]));
Controlled Z([qubits[1]], (qubits[3]));
Controlled Z([qubits[1]], (qubits[4]));
Controlled Z([qubits[1]], (qubits[5]));
Controlled Z([qubits[1]], (qubits[6]));
Controlled Z([qubits[2]], (qubits[3]));
Controlled Z([qubits[2]], (qubits[4]));
Controlled Z([qubits[2]], (qubits[5]));
Controlled Z([qubits[2]], (qubits[6]));
Controlled Z([qubits[3]], (qubits[4]));
Controlled Z([qubits[3]], (qubits[5]));
Controlled Z([qubits[3]], (qubits[6]));
Controlled Z([qubits[4]], (qubits[5]));
Controlled Z([qubits[4]], (qubits[6]));
Controlled Z([qubits[5]], (qubits[6]));
set meas = SetBitValue(meas, 0, ResultAsBool(M(qubits[0])));
set meas = SetBitValue(meas, 1, ResultAsBool(M(qubits[1])));
set meas = SetBitValue(meas, 2, ResultAsBool(M(qubits[2])));
set meas = SetBitValue(meas, 3, ResultAsBool(M(qubits[3])));
set meas = SetBitValue(meas, 4, ResultAsBool(M(qubits[4])));
set meas = SetBitValue(meas, 5, ResultAsBool(M(qubits[5])));
set meas = SetBitValue(meas, 6, ResultAsBool(M(qubits[6])));
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
