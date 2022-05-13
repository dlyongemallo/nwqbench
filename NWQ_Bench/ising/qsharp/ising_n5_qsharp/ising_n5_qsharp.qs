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
        using(qubits = Qubit[5]) {
            H(qubits[0]);
            H(qubits[1]);
            H(qubits[2]);
            H(qubits[3]);
            H(qubits[4]);
            Rz(-0.35295656, qubits[0]);
            Rz(0.35295656, qubits[1]);
            Rz(1.0109722, qubits[2]);
            Rz(-1.0109722, qubits[3]);
            Rz(-0.3993765, qubits[4]);
            Rz(0.35295656, qubits[1]);
            Rz(-1.0109722, qubits[3]);
            Rz(-0.3993765, qubits[4]);
            CNOT(qubits[0], qubits[1]);
            CNOT(qubits[2], qubits[3]);
            Rz(-0.35295656, qubits[1]);
            Rz(1.0109722, qubits[3]);
            CNOT(qubits[0], qubits[1]);
            CNOT(qubits[2], qubits[3]);
            H(qubits[0]);
            Rz(0.19313025, qubits[1]);
            Rz(-0.19313025, qubits[2]);
            Rz(0.3993765, qubits[3]);
            Rz(0.0, qubits[0]);
            Rz(-0.19313025, qubits[2]);
            CNOT(qubits[3], qubits[4]);
            H(qubits[0]);
            CNOT(qubits[1], qubits[2]);
            Rz(0.3993765, qubits[4]);
            Rz(0.0, qubits[0]);
            Rz(0.19313025, qubits[2]);
            CNOT(qubits[3], qubits[4]);
            CNOT(qubits[1], qubits[2]);
            H(qubits[3]);
            H(qubits[4]);
            H(qubits[1]);
            H(qubits[2]);
            Rz(0.0, qubits[3]);
            Rz(0.0, qubits[4]);
            Rz(0.0, qubits[1]);
            Rz(0.0, qubits[2]);
            H(qubits[3]);
            H(qubits[4]);
            H(qubits[1]);
            H(qubits[2]);
            Rz(0.0, qubits[3]);
            Rz(0.0, qubits[4]);
            Rz(0.0, qubits[1]);
            Rz(0.0, qubits[2]);
            set meas = SetBitValue(meas, 0, ResultAsBool(M(qubits[0])));
            set meas = SetBitValue(meas, 1, ResultAsBool(M(qubits[1])));
            set meas = SetBitValue(meas, 2, ResultAsBool(M(qubits[2])));
            set meas = SetBitValue(meas, 3, ResultAsBool(M(qubits[3])));
            set meas = SetBitValue(meas, 4, ResultAsBool(M(qubits[4])));
            ResetAll(qubits);
        }
        return (c, meas);
    }
}
