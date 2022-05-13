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
    
    operation Circuit(): (Int) {
mutable c0 = 0;
using(qubits = Qubit[15]) {
u2(0.0, PI(), qubits[0]);
Rx(PI() / 2.0, qubits[1]);
Rx(PI() / 2.0, qubits[2]);
Rx(PI() / 2.0, qubits[3]);
Rx(PI() / 2.0, qubits[4]);
Rx(PI() / 2.0, qubits[5]);
Rx(PI() / 2.0, qubits[6]);
Rx(PI() / 2.0, qubits[7]);
Rx(PI() / 2.0, qubits[8]);
Rx(PI() / 2.0, qubits[9]);
Rx(PI() / 2.0, qubits[10]);
Rx(PI() / 2.0, qubits[11]);
Rx(PI() / 2.0, qubits[12]);
Rx(PI() / 2.0, qubits[13]);
Rx(PI() / 2.0, qubits[14]);
CNOT(qubits[1], qubits[2]);
CNOT(qubits[8], qubits[9]);
Rz(1.2664125, qubits[2]);
Rz(2.5810673, qubits[9]);
CNOT(qubits[1], qubits[2]);
CNOT(qubits[8], qubits[9]);
Rx(-PI() / 2.0, qubits[1]);
Rx(-PI() / 2.0, qubits[2]);
Rx(-PI() / 2.0, qubits[8]);
Rx(-PI() / 2.0, qubits[9]);
u3(1.4487767, 0.0, 0.0, qubits[2]);
u3(1.4950504, 0.0, 0.0, qubits[9]);
CNOT(qubits[1], qubits[2]);
CNOT(qubits[8], qubits[9]);
u3(-1.4487767, 0.0, 0.0, qubits[2]);
u3(-1.4950504, 0.0, 0.0, qubits[9]);
CNOT(qubits[1], qubits[2]);
CNOT(qubits[8], qubits[9]);
Rx(PI() / 2.0, qubits[2]);
Rx(PI() / 2.0, qubits[9]);
CNOT(qubits[2], qubits[3]);
CNOT(qubits[9], qubits[10]);
Rz(0.74055553, qubits[3]);
Rz(3.1218766, qubits[10]);
CNOT(qubits[2], qubits[3]);
CNOT(qubits[9], qubits[10]);
Rx(-PI() / 2.0, qubits[2]);
Rx(-PI() / 2.0, qubits[3]);
Rx(-PI() / 2.0, qubits[9]);
Rx(-PI() / 2.0, qubits[10]);
u3(1.1646899, 0.0, 0.0, qubits[3]);
u3(0.50052913, 0.0, 0.0, qubits[10]);
CNOT(qubits[2], qubits[3]);
CNOT(qubits[9], qubits[10]);
u3(-1.1646899, 0.0, 0.0, qubits[3]);
u3(-0.50052913, 0.0, 0.0, qubits[10]);
CNOT(qubits[2], qubits[3]);
CNOT(qubits[9], qubits[10]);
Rx(PI() / 2.0, qubits[3]);
Rx(PI() / 2.0, qubits[10]);
CNOT(qubits[3], qubits[4]);
CNOT(qubits[10], qubits[11]);
Rz(2.3559741, qubits[4]);
Rz(2.1470863, qubits[11]);
CNOT(qubits[3], qubits[4]);
CNOT(qubits[10], qubits[11]);
Rx(-PI() / 2.0, qubits[3]);
Rx(-PI() / 2.0, qubits[4]);
Rx(-PI() / 2.0, qubits[10]);
Rx(-PI() / 2.0, qubits[11]);
u3(1.4174572, 0.0, 0.0, qubits[4]);
u3(1.4210772, 0.0, 0.0, qubits[11]);
CNOT(qubits[3], qubits[4]);
CNOT(qubits[10], qubits[11]);
u3(-1.4174572, 0.0, 0.0, qubits[4]);
u3(-1.4210772, 0.0, 0.0, qubits[11]);
CNOT(qubits[3], qubits[4]);
CNOT(qubits[10], qubits[11]);
Rx(PI() / 2.0, qubits[4]);
Rx(PI() / 2.0, qubits[11]);
CNOT(qubits[4], qubits[5]);
CNOT(qubits[11], qubits[12]);
Rz(1.5874395, qubits[5]);
Rz(1.0572746, qubits[12]);
CNOT(qubits[4], qubits[5]);
CNOT(qubits[11], qubits[12]);
Rx(-PI() / 2.0, qubits[4]);
Rx(-PI() / 2.0, qubits[5]);
Rx(-PI() / 2.0, qubits[11]);
Rx(-PI() / 2.0, qubits[12]);
u3(1.0930352, 0.0, 0.0, qubits[5]);
u3(0.84439209, 0.0, 0.0, qubits[12]);
CNOT(qubits[4], qubits[5]);
CNOT(qubits[11], qubits[12]);
u3(-1.0930352, 0.0, 0.0, qubits[5]);
u3(-0.84439209, 0.0, 0.0, qubits[12]);
CNOT(qubits[4], qubits[5]);
CNOT(qubits[11], qubits[12]);
Rx(PI() / 2.0, qubits[5]);
Rx(PI() / 2.0, qubits[12]);
CNOT(qubits[5], qubits[6]);
CNOT(qubits[12], qubits[13]);
Rz(3.1129243, qubits[6]);
Rz(2.7825006, qubits[13]);
CNOT(qubits[5], qubits[6]);
CNOT(qubits[12], qubits[13]);
Rx(-PI() / 2.0, qubits[5]);
Rx(-PI() / 2.0, qubits[6]);
Rx(-PI() / 2.0, qubits[12]);
Rx(-PI() / 2.0, qubits[13]);
u3(1.2005866, 0.0, 0.0, qubits[6]);
u3(0.23144456, 0.0, 0.0, qubits[13]);
CNOT(qubits[5], qubits[6]);
CNOT(qubits[12], qubits[13]);
u3(-1.2005866, 0.0, 0.0, qubits[6]);
u3(-0.23144456, 0.0, 0.0, qubits[13]);
CNOT(qubits[5], qubits[6]);
CNOT(qubits[12], qubits[13]);
Rx(PI() / 2.0, qubits[6]);
Rx(PI() / 2.0, qubits[13]);
CNOT(qubits[6], qubits[7]);
CNOT(qubits[13], qubits[14]);
Rz(1.1256105, qubits[7]);
Rz(2.7848897, qubits[14]);
CNOT(qubits[6], qubits[7]);
CNOT(qubits[13], qubits[14]);
Rx(-PI() / 2.0, qubits[6]);
Rx(-PI() / 2.0, qubits[7]);
Rx(-PI() / 2.0, qubits[13]);
Rx(-PI() / 2.0, qubits[14]);
u3(1.4893347, 0.0, 0.0, qubits[7]);
u3(0.58159699, 0.0, 0.0, qubits[14]);
CNOT(qubits[6], qubits[7]);
CNOT(qubits[13], qubits[14]);
u3(-1.4893347, 0.0, 0.0, qubits[7]);
u3(-0.58159699, 0.0, 0.0, qubits[14]);
CNOT(qubits[6], qubits[7]);
CNOT(qubits[13], qubits[14]);
CNOT(qubits[8], qubits[1]);
CCNOT(qubits[0], qubits[1], qubits[8]);
CNOT(qubits[8], qubits[1]);
CNOT(qubits[9], qubits[2]);
CCNOT(qubits[0], qubits[2], qubits[9]);
CNOT(qubits[9], qubits[2]);
CNOT(qubits[10], qubits[3]);
CCNOT(qubits[0], qubits[3], qubits[10]);
CNOT(qubits[10], qubits[3]);
CNOT(qubits[11], qubits[4]);
CCNOT(qubits[0], qubits[4], qubits[11]);
CNOT(qubits[11], qubits[4]);
CNOT(qubits[12], qubits[5]);
CCNOT(qubits[0], qubits[5], qubits[12]);
CNOT(qubits[12], qubits[5]);
CNOT(qubits[13], qubits[6]);
CCNOT(qubits[0], qubits[6], qubits[13]);
CNOT(qubits[13], qubits[6]);
CNOT(qubits[14], qubits[7]);
CCNOT(qubits[0], qubits[7], qubits[14]);
u2(0.0, PI(), qubits[0]);
CNOT(qubits[14], qubits[7]);
set c0 = SetBitValue(c0, 0, ResultAsBool(M(qubits[8])));
set c0 = SetBitValue(c0, 1, ResultAsBool(M(qubits[9])));
set c0 = SetBitValue(c0, 2, ResultAsBool(M(qubits[10])));
set c0 = SetBitValue(c0, 3, ResultAsBool(M(qubits[11])));
set c0 = SetBitValue(c0, 4, ResultAsBool(M(qubits[12])));
set c0 = SetBitValue(c0, 5, ResultAsBool(M(qubits[13])));
set c0 = SetBitValue(c0, 6, ResultAsBool(M(qubits[14])));
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
}
return (c0);
}
}
ResetAll(qubits);
        }
        return (c0);
    }
}
