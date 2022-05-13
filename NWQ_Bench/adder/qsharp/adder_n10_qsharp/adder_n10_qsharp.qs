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
    
    operation Circuit() : (Int, Int) {
        mutable c = 0;
        mutable meas = 0;
        using(qubits = Qubit[10]) {
            X(qubits[1]);
            X(qubits[2]);
            X(qubits[3]);
            X(qubits[4]);
            X(qubits[8]);
            CNOT(qubits[0], qubits[4]);
            CNOT(qubits[0], qubits[8]);
            CCNOT(qubits[8], qubits[4], qubits[0]);
            CNOT(qubits[1], qubits[5]);
            CNOT(qubits[1], qubits[0]);
            CCNOT(qubits[0], qubits[5], qubits[1]);
            CNOT(qubits[2], qubits[6]);
            CNOT(qubits[2], qubits[1]);
            CCNOT(qubits[1], qubits[6], qubits[2]);
            CNOT(qubits[3], qubits[7]);
            CNOT(qubits[3], qubits[2]);
            CCNOT(qubits[2], qubits[7], qubits[3]);
            CNOT(qubits[3], qubits[9]);
            CCNOT(qubits[2], qubits[7], qubits[3]);
            CNOT(qubits[3], qubits[2]);
            CNOT(qubits[2], qubits[7]);
            CCNOT(qubits[1], qubits[6], qubits[2]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[1], qubits[6]);
            CCNOT(qubits[0], qubits[5], qubits[1]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[0], qubits[5]);
            CCNOT(qubits[8], qubits[4], qubits[0]);
            CNOT(qubits[0], qubits[8]);
            CNOT(qubits[8], qubits[4]);
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
            ResetAll(qubits);
        }
        return (c, meas);
    }
}
