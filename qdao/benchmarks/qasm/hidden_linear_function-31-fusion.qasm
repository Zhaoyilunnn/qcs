OPENQASM 2.0;
include "qelib1.inc";
qreg q[31];
creg meas[31];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
cz q[0],q[13];
cz q[0],q[23];
cz q[1],q[2];
cz q[1],q[23];
cz q[2],q[21];
cz q[2],q[30];
cz q[4],q[6];
cz q[4],q[13];
cz q[4],q[27];
cz q[5],q[30];
cz q[6],q[19];
cz q[7],q[30];
cz q[8],q[29];
cz q[9],q[12];
cz q[9],q[18];
cz q[10],q[17];
cz q[10],q[30];
cz q[11],q[14];
cz q[12],q[13];
cz q[13],q[26];
cz q[13],q[29];
cz q[14],q[17];
cz q[14],q[18];
cz q[16],q[26];
cz q[20],q[23];
cz q[21],q[25];
cz q[23],q[26];
cz q[24],q[25];
cz q[26],q[27];
s q[22];
s q[30];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
measure q -> meas;
