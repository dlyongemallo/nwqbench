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
    
    operation Circuit() : (Int) {
        mutable meas = 0;
        using(qubits = Qubit[3]) {
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[0], qubits[1]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[0], qubits[1]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[0], qubits[2]);
            CNOT(qubits[1], qubits[2]);
            CNOT(qubits[0], qubits[2]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[1], qubits[2]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[0], qubits[2]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[0], qubits[1]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[1]);
            CNOT(qubits[1], qubits[0]);
            CNOT(qubits[2], qubits[0]);
            CNOT(qubits[1], qubits[0]);
            set meas = SetBitValue(meas, 0, ResultAsBool(M(qubits[0])));
            set meas = SetBitValue(meas, 1, ResultAsBool(M(qubits[1])));
            set meas = SetBitValue(meas, 2, ResultAsBool(M(qubits[2])));
            ResetAll(qubits);
        }
        return (meas);
    }
}
