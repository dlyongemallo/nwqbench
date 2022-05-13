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
using(qubits = Qubit[65]) {
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
H(qubits[31]);
H(qubits[32]);
H(qubits[33]);
H(qubits[34]);
H(qubits[35]);
H(qubits[36]);
H(qubits[37]);
H(qubits[38]);
H(qubits[39]);
H(qubits[40]);
H(qubits[41]);
H(qubits[42]);
H(qubits[43]);
H(qubits[44]);
H(qubits[45]);
H(qubits[46]);
H(qubits[47]);
H(qubits[48]);
H(qubits[49]);
H(qubits[50]);
H(qubits[51]);
H(qubits[52]);
H(qubits[53]);
H(qubits[54]);
H(qubits[55]);
H(qubits[56]);
H(qubits[57]);
H(qubits[58]);
H(qubits[59]);
H(qubits[60]);
H(qubits[61]);
H(qubits[62]);
H(qubits[63]);
H(qubits[64]);
CNOT(qubits[0], qubits[1]);
Rz(2.7301131, qubits[1]);
CNOT(qubits[0], qubits[1]);
CNOT(qubits[1], qubits[2]);
Rz(0.55920108, qubits[2]);
CNOT(qubits[1], qubits[2]);
CNOT(qubits[2], qubits[3]);
Rz(2.7511692, qubits[3]);
CNOT(qubits[2], qubits[3]);
CNOT(qubits[3], qubits[4]);
Rz(2.0131153, qubits[4]);
CNOT(qubits[3], qubits[4]);
CNOT(qubits[4], qubits[5]);
Rz(2.8676129, qubits[5]);
CNOT(qubits[4], qubits[5]);
CNOT(qubits[5], qubits[6]);
Rz(0.95683235, qubits[6]);
CNOT(qubits[5], qubits[6]);
CNOT(qubits[6], qubits[7]);
Rz(3.004484, qubits[7]);
CNOT(qubits[6], qubits[7]);
CNOT(qubits[7], qubits[8]);
Rz(2.470756, qubits[8]);
CNOT(qubits[7], qubits[8]);
CNOT(qubits[8], qubits[9]);
Rz(2.1019489, qubits[9]);
CNOT(qubits[8], qubits[9]);
CNOT(qubits[9], qubits[10]);
Rz(1.4841711, qubits[10]);
CNOT(qubits[9], qubits[10]);
CNOT(qubits[10], qubits[11]);
Rz(2.7832957, qubits[11]);
CNOT(qubits[10], qubits[11]);
CNOT(qubits[11], qubits[12]);
Rz(1.4060487, qubits[12]);
CNOT(qubits[11], qubits[12]);
CNOT(qubits[12], qubits[13]);
Rz(0.2247768, qubits[13]);
CNOT(qubits[12], qubits[13]);
CNOT(qubits[13], qubits[14]);
Rz(0.19044617, qubits[14]);
CNOT(qubits[13], qubits[14]);
CNOT(qubits[14], qubits[15]);
Rz(2.2902618, qubits[15]);
CNOT(qubits[14], qubits[15]);
CNOT(qubits[15], qubits[16]);
Rz(1.3146322, qubits[16]);
CNOT(qubits[15], qubits[16]);
CNOT(qubits[16], qubits[17]);
Rz(1.9646866, qubits[17]);
CNOT(qubits[16], qubits[17]);
CNOT(qubits[17], qubits[18]);
Rz(1.2771483, qubits[18]);
CNOT(qubits[17], qubits[18]);
CNOT(qubits[18], qubits[19]);
Rz(2.8330947, qubits[19]);
CNOT(qubits[18], qubits[19]);
CNOT(qubits[19], qubits[20]);
Rz(0.32468415, qubits[20]);
CNOT(qubits[19], qubits[20]);
CNOT(qubits[20], qubits[21]);
Rz(2.2017227, qubits[21]);
CNOT(qubits[20], qubits[21]);
CNOT(qubits[21], qubits[22]);
Rz(2.8838233, qubits[22]);
CNOT(qubits[21], qubits[22]);
CNOT(qubits[22], qubits[23]);
Rz(0.76582829, qubits[23]);
CNOT(qubits[22], qubits[23]);
CNOT(qubits[23], qubits[24]);
Rz(0.56128204, qubits[24]);
CNOT(qubits[23], qubits[24]);
CNOT(qubits[24], qubits[25]);
Rz(0.38743874, qubits[25]);
CNOT(qubits[24], qubits[25]);
CNOT(qubits[25], qubits[26]);
Rz(3.0495282, qubits[26]);
CNOT(qubits[25], qubits[26]);
CNOT(qubits[26], qubits[27]);
Rz(1.3351936, qubits[27]);
CNOT(qubits[26], qubits[27]);
CNOT(qubits[27], qubits[28]);
Rz(1.181737, qubits[28]);
CNOT(qubits[27], qubits[28]);
CNOT(qubits[28], qubits[29]);
Rz(1.6220438, qubits[29]);
CNOT(qubits[28], qubits[29]);
CNOT(qubits[29], qubits[30]);
Rz(1.9905496, qubits[30]);
CNOT(qubits[29], qubits[30]);
CNOT(qubits[30], qubits[31]);
Rz(0.67188413, qubits[31]);
CNOT(qubits[30], qubits[31]);
CNOT(qubits[31], qubits[32]);
Rz(1.9991564, qubits[32]);
CNOT(qubits[31], qubits[32]);
CNOT(qubits[32], qubits[33]);
Rz(2.8832009, qubits[33]);
CNOT(qubits[32], qubits[33]);
CNOT(qubits[33], qubits[34]);
Rz(0.91171974, qubits[34]);
CNOT(qubits[33], qubits[34]);
CNOT(qubits[34], qubits[35]);
Rz(1.836057, qubits[35]);
CNOT(qubits[34], qubits[35]);
CNOT(qubits[35], qubits[36]);
Rz(1.314841, qubits[36]);
CNOT(qubits[35], qubits[36]);
CNOT(qubits[36], qubits[37]);
Rz(2.5011903, qubits[37]);
CNOT(qubits[36], qubits[37]);
CNOT(qubits[37], qubits[38]);
Rz(0.044489971, qubits[38]);
CNOT(qubits[37], qubits[38]);
CNOT(qubits[38], qubits[39]);
Rz(3.0808153, qubits[39]);
CNOT(qubits[38], qubits[39]);
CNOT(qubits[39], qubits[40]);
Rz(2.8239478, qubits[40]);
CNOT(qubits[39], qubits[40]);
CNOT(qubits[40], qubits[41]);
Rz(3.0252691, qubits[41]);
CNOT(qubits[40], qubits[41]);
CNOT(qubits[41], qubits[42]);
Rz(0.76173992, qubits[42]);
CNOT(qubits[41], qubits[42]);
CNOT(qubits[42], qubits[43]);
Rz(2.304386, qubits[43]);
CNOT(qubits[42], qubits[43]);
CNOT(qubits[43], qubits[44]);
Rz(2.4326979, qubits[44]);
CNOT(qubits[43], qubits[44]);
CNOT(qubits[44], qubits[45]);
Rz(0.67920386, qubits[45]);
CNOT(qubits[44], qubits[45]);
CNOT(qubits[45], qubits[46]);
Rz(2.9212768, qubits[46]);
CNOT(qubits[45], qubits[46]);
CNOT(qubits[46], qubits[47]);
Rz(1.2167051, qubits[47]);
CNOT(qubits[46], qubits[47]);
CNOT(qubits[47], qubits[48]);
Rz(0.11422826, qubits[48]);
CNOT(qubits[47], qubits[48]);
CNOT(qubits[48], qubits[49]);
Rz(0.60872319, qubits[49]);
CNOT(qubits[48], qubits[49]);
CNOT(qubits[49], qubits[50]);
Rz(2.3889532, qubits[50]);
CNOT(qubits[49], qubits[50]);
CNOT(qubits[50], qubits[51]);
Rz(1.8079976, qubits[51]);
CNOT(qubits[50], qubits[51]);
CNOT(qubits[51], qubits[52]);
Rz(2.4257932, qubits[52]);
CNOT(qubits[51], qubits[52]);
CNOT(qubits[52], qubits[53]);
Rz(3.0537812, qubits[53]);
CNOT(qubits[52], qubits[53]);
CNOT(qubits[53], qubits[54]);
Rz(2.1769724, qubits[54]);
CNOT(qubits[53], qubits[54]);
CNOT(qubits[54], qubits[55]);
Rz(2.556397, qubits[55]);
CNOT(qubits[54], qubits[55]);
CNOT(qubits[55], qubits[56]);
Rz(0.92435564, qubits[56]);
CNOT(qubits[55], qubits[56]);
CNOT(qubits[56], qubits[57]);
Rz(0.31342226, qubits[57]);
CNOT(qubits[56], qubits[57]);
CNOT(qubits[57], qubits[58]);
Rz(0.93371276, qubits[58]);
CNOT(qubits[57], qubits[58]);
CNOT(qubits[58], qubits[59]);
Rz(0.38825934, qubits[59]);
CNOT(qubits[58], qubits[59]);
CNOT(qubits[59], qubits[60]);
Rz(3.0979124, qubits[60]);
CNOT(qubits[59], qubits[60]);
CNOT(qubits[60], qubits[61]);
Rz(2.6806163, qubits[61]);
CNOT(qubits[60], qubits[61]);
CNOT(qubits[61], qubits[62]);
Rz(0.46288675, qubits[62]);
CNOT(qubits[61], qubits[62]);
CNOT(qubits[62], qubits[63]);
Rz(0.27209238, qubits[63]);
CNOT(qubits[62], qubits[63]);
CNOT(qubits[63], qubits[64]);
Rz(1.9967123, qubits[64]);
CNOT(qubits[63], qubits[64]);
CNOT(qubits[63], qubits[64]);
Rz(1.7218081, qubits[64]);
CNOT(qubits[63], qubits[64]);
CNOT(qubits[62], qubits[63]);
Rz(0.75555087, qubits[64]);
Rz(0.7511087, qubits[63]);
H(qubits[64]);
CNOT(qubits[62], qubits[63]);
CNOT(qubits[61], qubits[62]);
Rz(1.6619145, qubits[63]);
Rz(2.8353402, qubits[62]);
H(qubits[63]);
CNOT(qubits[61], qubits[62]);
CNOT(qubits[60], qubits[61]);
Rz(1.9979454, qubits[62]);
Rz(3.0533201, qubits[61]);
H(qubits[62]);
CNOT(qubits[60], qubits[61]);
CNOT(qubits[59], qubits[60]);
Rz(2.8034152, qubits[61]);
Rz(1.1086114, qubits[60]);
H(qubits[61]);
CNOT(qubits[59], qubits[60]);
CNOT(qubits[58], qubits[59]);
Rz(1.7603427, qubits[60]);
Rz(1.417594, qubits[59]);
H(qubits[60]);
CNOT(qubits[58], qubits[59]);
CNOT(qubits[57], qubits[58]);
Rz(2.2666659, qubits[59]);
Rz(1.1696754, qubits[58]);
H(qubits[59]);
CNOT(qubits[57], qubits[58]);
CNOT(qubits[56], qubits[57]);
Rz(0.35111432, qubits[58]);
Rz(2.849581, qubits[57]);
H(qubits[58]);
CNOT(qubits[56], qubits[57]);
CNOT(qubits[55], qubits[56]);
Rz(2.6442738, qubits[57]);
Rz(2.5422015, qubits[56]);
H(qubits[57]);
CNOT(qubits[55], qubits[56]);
CNOT(qubits[54], qubits[55]);
Rz(1.4588055, qubits[56]);
Rz(0.17076581, qubits[55]);
H(qubits[56]);
CNOT(qubits[54], qubits[55]);
CNOT(qubits[53], qubits[54]);
Rz(2.5436796, qubits[55]);
Rz(2.9366102, qubits[54]);
H(qubits[55]);
CNOT(qubits[53], qubits[54]);
CNOT(qubits[52], qubits[53]);
Rz(2.1091669, qubits[54]);
Rz(0.42418977, qubits[53]);
H(qubits[54]);
CNOT(qubits[52], qubits[53]);
CNOT(qubits[51], qubits[52]);
Rz(2.1834774, qubits[53]);
Rz(1.5026515, qubits[52]);
H(qubits[53]);
CNOT(qubits[51], qubits[52]);
CNOT(qubits[50], qubits[51]);
Rz(0.45403786, qubits[52]);
Rz(2.3565079, qubits[51]);
H(qubits[52]);
CNOT(qubits[50], qubits[51]);
CNOT(qubits[49], qubits[50]);
Rz(2.1262182, qubits[51]);
Rz(2.339326, qubits[50]);
H(qubits[51]);
CNOT(qubits[49], qubits[50]);
CNOT(qubits[48], qubits[49]);
Rz(1.2293057, qubits[50]);
Rz(1.1782325, qubits[49]);
H(qubits[50]);
CNOT(qubits[48], qubits[49]);
CNOT(qubits[47], qubits[48]);
Rz(0.70792137, qubits[49]);
Rz(0.19662536, qubits[48]);
H(qubits[49]);
CNOT(qubits[47], qubits[48]);
CNOT(qubits[46], qubits[47]);
Rz(0.77957525, qubits[48]);
Rz(2.6253667, qubits[47]);
H(qubits[48]);
CNOT(qubits[46], qubits[47]);
CNOT(qubits[45], qubits[46]);
Rz(2.2066953, qubits[47]);
Rz(1.4084824, qubits[46]);
H(qubits[47]);
CNOT(qubits[45], qubits[46]);
CNOT(qubits[44], qubits[45]);
Rz(0.74987191, qubits[46]);
Rz(0.90423716, qubits[45]);
H(qubits[46]);
CNOT(qubits[44], qubits[45]);
CNOT(qubits[43], qubits[44]);
Rz(1.2641836, qubits[45]);
Rz(1.2095432, qubits[44]);
H(qubits[45]);
CNOT(qubits[43], qubits[44]);
CNOT(qubits[42], qubits[43]);
Rz(2.2126895, qubits[44]);
Rz(2.9136601, qubits[43]);
H(qubits[44]);
CNOT(qubits[42], qubits[43]);
CNOT(qubits[41], qubits[42]);
Rz(0.30074066, qubits[43]);
Rz(1.1342675, qubits[42]);
H(qubits[43]);
CNOT(qubits[41], qubits[42]);
CNOT(qubits[40], qubits[41]);
Rz(1.0175086, qubits[42]);
Rz(0.86816349, qubits[41]);
H(qubits[42]);
CNOT(qubits[40], qubits[41]);
CNOT(qubits[39], qubits[40]);
Rz(2.7160096, qubits[41]);
Rz(0.46067158, qubits[40]);
H(qubits[41]);
CNOT(qubits[39], qubits[40]);
CNOT(qubits[38], qubits[39]);
Rz(2.3167602, qubits[40]);
Rz(0.8623836, qubits[39]);
H(qubits[40]);
CNOT(qubits[38], qubits[39]);
CNOT(qubits[37], qubits[38]);
Rz(2.4977722, qubits[39]);
Rz(1.0513137, qubits[38]);
H(qubits[39]);
CNOT(qubits[37], qubits[38]);
CNOT(qubits[36], qubits[37]);
Rz(0.53428785, qubits[38]);
Rz(1.9702688, qubits[37]);
H(qubits[38]);
CNOT(qubits[36], qubits[37]);
CNOT(qubits[35], qubits[36]);
Rz(0.77382677, qubits[37]);
Rz(3.1011954, qubits[36]);
H(qubits[37]);
CNOT(qubits[35], qubits[36]);
CNOT(qubits[34], qubits[35]);
Rz(2.3702607, qubits[36]);
Rz(0.76701904, qubits[35]);
H(qubits[36]);
CNOT(qubits[34], qubits[35]);
CNOT(qubits[33], qubits[34]);
Rz(1.0760349, qubits[35]);
Rz(1.1110164, qubits[34]);
H(qubits[35]);
CNOT(qubits[33], qubits[34]);
CNOT(qubits[32], qubits[33]);
Rz(2.9679696, qubits[34]);
Rz(2.6027463, qubits[33]);
H(qubits[34]);
CNOT(qubits[32], qubits[33]);
CNOT(qubits[31], qubits[32]);
Rz(1.158544, qubits[33]);
Rz(0.48449785, qubits[32]);
H(qubits[33]);
CNOT(qubits[31], qubits[32]);
CNOT(qubits[30], qubits[31]);
Rz(3.0943259, qubits[32]);
Rz(1.1743196, qubits[31]);
H(qubits[32]);
CNOT(qubits[30], qubits[31]);
CNOT(qubits[29], qubits[30]);
Rz(1.3032554, qubits[31]);
Rz(1.6219556, qubits[30]);
H(qubits[31]);
CNOT(qubits[29], qubits[30]);
CNOT(qubits[28], qubits[29]);
Rz(2.8591004, qubits[30]);
Rz(2.5752902, qubits[29]);
H(qubits[30]);
CNOT(qubits[28], qubits[29]);
CNOT(qubits[27], qubits[28]);
Rz(0.48687829, qubits[29]);
Rz(0.062464511, qubits[28]);
H(qubits[29]);
CNOT(qubits[27], qubits[28]);
CNOT(qubits[26], qubits[27]);
Rz(0.66215032, qubits[28]);
Rz(1.4617706, qubits[27]);
H(qubits[28]);
CNOT(qubits[26], qubits[27]);
CNOT(qubits[25], qubits[26]);
Rz(0.88628733, qubits[27]);
Rz(0.42086469, qubits[26]);
H(qubits[27]);
CNOT(qubits[25], qubits[26]);
CNOT(qubits[24], qubits[25]);
Rz(1.4061435, qubits[26]);
Rz(1.8486762, qubits[25]);
H(qubits[26]);
CNOT(qubits[24], qubits[25]);
CNOT(qubits[23], qubits[24]);
Rz(3.0199004, qubits[25]);
Rz(2.9789694, qubits[24]);
H(qubits[25]);
CNOT(qubits[23], qubits[24]);
CNOT(qubits[22], qubits[23]);
Rz(1.2813633, qubits[24]);
Rz(1.0085795, qubits[23]);
H(qubits[24]);
CNOT(qubits[22], qubits[23]);
CNOT(qubits[21], qubits[22]);
Rz(1.1458509, qubits[23]);
Rz(1.1886666, qubits[22]);
H(qubits[23]);
CNOT(qubits[21], qubits[22]);
CNOT(qubits[20], qubits[21]);
Rz(1.8970379, qubits[22]);
Rz(2.7871565, qubits[21]);
H(qubits[22]);
CNOT(qubits[20], qubits[21]);
CNOT(qubits[19], qubits[20]);
Rz(2.3428303, qubits[21]);
Rz(2.0673965, qubits[20]);
H(qubits[21]);
CNOT(qubits[19], qubits[20]);
CNOT(qubits[18], qubits[19]);
Rz(1.0736194, qubits[20]);
Rz(1.5511341, qubits[19]);
H(qubits[20]);
CNOT(qubits[18], qubits[19]);
CNOT(qubits[17], qubits[18]);
Rz(3.1193134, qubits[19]);
Rz(1.2042843, qubits[18]);
H(qubits[19]);
CNOT(qubits[17], qubits[18]);
CNOT(qubits[16], qubits[17]);
Rz(0.26677093, qubits[18]);
Rz(0.13181666, qubits[17]);
H(qubits[18]);
CNOT(qubits[16], qubits[17]);
CNOT(qubits[15], qubits[16]);
Rz(2.8533642, qubits[17]);
Rz(2.7072916, qubits[16]);
H(qubits[17]);
CNOT(qubits[15], qubits[16]);
CNOT(qubits[14], qubits[15]);
Rz(1.4534904, qubits[16]);
Rz(2.1648725, qubits[15]);
H(qubits[16]);
CNOT(qubits[14], qubits[15]);
CNOT(qubits[13], qubits[14]);
Rz(1.7486518, qubits[15]);
Rz(0.48586468, qubits[14]);
H(qubits[15]);
CNOT(qubits[13], qubits[14]);
CNOT(qubits[12], qubits[13]);
Rz(1.0136922, qubits[14]);
Rz(2.594361, qubits[13]);
H(qubits[14]);
CNOT(qubits[12], qubits[13]);
CNOT(qubits[11], qubits[12]);
Rz(3.1151337, qubits[13]);
Rz(1.7624742, qubits[12]);
H(qubits[13]);
CNOT(qubits[11], qubits[12]);
CNOT(qubits[10], qubits[11]);
Rz(2.2335138, qubits[12]);
Rz(2.5330569, qubits[11]);
H(qubits[12]);
CNOT(qubits[10], qubits[11]);
CNOT(qubits[9], qubits[10]);
Rz(2.981962, qubits[11]);
Rz(3.1075778, qubits[10]);
H(qubits[11]);
CNOT(qubits[9], qubits[10]);
CNOT(qubits[8], qubits[9]);
Rz(2.6105859, qubits[10]);
Rz(1.8573141, qubits[9]);
H(qubits[10]);
CNOT(qubits[8], qubits[9]);
CNOT(qubits[7], qubits[8]);
Rz(0.093711766, qubits[9]);
Rz(0.013261272, qubits[8]);
H(qubits[9]);
CNOT(qubits[7], qubits[8]);
CNOT(qubits[6], qubits[7]);
Rz(1.489842, qubits[8]);
Rz(1.8178686, qubits[7]);
H(qubits[8]);
CNOT(qubits[6], qubits[7]);
CNOT(qubits[5], qubits[6]);
Rz(0.30239399, qubits[7]);
Rz(0.29526238, qubits[6]);
H(qubits[7]);
CNOT(qubits[5], qubits[6]);
CNOT(qubits[4], qubits[5]);
Rz(0.24886572, qubits[6]);
Rz(0.35483468, qubits[5]);
H(qubits[6]);
CNOT(qubits[4], qubits[5]);
CNOT(qubits[3], qubits[4]);
Rz(2.0202092, qubits[5]);
Rz(1.3861303, qubits[4]);
H(qubits[5]);
CNOT(qubits[3], qubits[4]);
CNOT(qubits[2], qubits[3]);
Rz(2.1246499, qubits[4]);
Rz(2.6017259, qubits[3]);
H(qubits[4]);
CNOT(qubits[2], qubits[3]);
CNOT(qubits[1], qubits[2]);
Rz(0.45556425, qubits[3]);
Rz(2.6039387, qubits[2]);
H(qubits[3]);
CNOT(qubits[1], qubits[2]);
CNOT(qubits[0], qubits[1]);
Rz(2.5734539, qubits[2]);
Rz(2.9502104, qubits[1]);
H(qubits[2]);
CNOT(qubits[0], qubits[1]);
Rz(0.66970146, qubits[0]);
Rz(2.2324351, qubits[1]);
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
set meas = SetBitValue(meas, 31, ResultAsBool(M(qubits[31])));
set meas = SetBitValue(meas, 32, ResultAsBool(M(qubits[32])));
set meas = SetBitValue(meas, 33, ResultAsBool(M(qubits[33])));
set meas = SetBitValue(meas, 34, ResultAsBool(M(qubits[34])));
set meas = SetBitValue(meas, 35, ResultAsBool(M(qubits[35])));
set meas = SetBitValue(meas, 36, ResultAsBool(M(qubits[36])));
set meas = SetBitValue(meas, 37, ResultAsBool(M(qubits[37])));
set meas = SetBitValue(meas, 38, ResultAsBool(M(qubits[38])));
set meas = SetBitValue(meas, 39, ResultAsBool(M(qubits[39])));
set meas = SetBitValue(meas, 40, ResultAsBool(M(qubits[40])));
set meas = SetBitValue(meas, 41, ResultAsBool(M(qubits[41])));
set meas = SetBitValue(meas, 42, ResultAsBool(M(qubits[42])));
set meas = SetBitValue(meas, 43, ResultAsBool(M(qubits[43])));
set meas = SetBitValue(meas, 44, ResultAsBool(M(qubits[44])));
set meas = SetBitValue(meas, 45, ResultAsBool(M(qubits[45])));
set meas = SetBitValue(meas, 46, ResultAsBool(M(qubits[46])));
set meas = SetBitValue(meas, 47, ResultAsBool(M(qubits[47])));
set meas = SetBitValue(meas, 48, ResultAsBool(M(qubits[48])));
set meas = SetBitValue(meas, 49, ResultAsBool(M(qubits[49])));
set meas = SetBitValue(meas, 50, ResultAsBool(M(qubits[50])));
set meas = SetBitValue(meas, 51, ResultAsBool(M(qubits[51])));
set meas = SetBitValue(meas, 52, ResultAsBool(M(qubits[52])));
set meas = SetBitValue(meas, 53, ResultAsBool(M(qubits[53])));
set meas = SetBitValue(meas, 54, ResultAsBool(M(qubits[54])));
set meas = SetBitValue(meas, 55, ResultAsBool(M(qubits[55])));
set meas = SetBitValue(meas, 56, ResultAsBool(M(qubits[56])));
set meas = SetBitValue(meas, 57, ResultAsBool(M(qubits[57])));
set meas = SetBitValue(meas, 58, ResultAsBool(M(qubits[58])));
set meas = SetBitValue(meas, 59, ResultAsBool(M(qubits[59])));
set meas = SetBitValue(meas, 60, ResultAsBool(M(qubits[60])));
set meas = SetBitValue(meas, 61, ResultAsBool(M(qubits[61])));
set meas = SetBitValue(meas, 62, ResultAsBool(M(qubits[62])));
set meas = SetBitValue(meas, 63, ResultAsBool(M(qubits[63])));
set meas = SetBitValue(meas, 64, ResultAsBool(M(qubits[64])));
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
