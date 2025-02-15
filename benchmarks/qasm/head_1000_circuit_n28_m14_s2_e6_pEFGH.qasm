// Generated from Cirq v0.6.0.dev

OPENQASM 2.0;
include "qelib1.inc";


// Qubits: [(1, 5), (1, 6), (2, 4), (2, 5), (2, 6), (2, 7), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (6, 2), (6, 3), (6, 4), (6, 5), (7, 3), (7, 4)]
qreg q[28];


u2(pi*-0.25, pi*0.25) q[0];
rx(pi*0.5) q[1];
u2(pi*-0.25, pi*0.25) q[2];
ry(pi*0.5) q[3];
rx(pi*0.5) q[4];
ry(pi*0.5) q[5];
u2(pi*-0.25, pi*0.25) q[6];
rx(pi*0.5) q[7];
ry(pi*0.5) q[8];
rx(pi*0.5) q[9];
u2(pi*-0.25, pi*0.25) q[10];
u2(pi*-0.25, pi*0.25) q[11];
ry(pi*0.5) q[12];
rx(pi*0.5) q[13];
rx(pi*0.5) q[14];
u2(pi*-0.25, pi*0.25) q[15];
rx(pi*0.5) q[16];
rx(pi*0.5) q[17];
rx(pi*0.5) q[18];
ry(pi*0.5) q[19];
u2(pi*-0.25, pi*0.25) q[20];
rx(pi*0.5) q[21];
ry(pi*0.5) q[22];
u2(pi*-0.25, pi*0.25) q[23];
ry(pi*0.5) q[24];
u2(pi*-0.25, pi*0.25) q[25];
rx(pi*0.5) q[26];
rx(pi*0.5) q[27];
rz(pi*1.2371391697) q[2];
rz(pi*-1.2825274365) q[3];
rz(pi*-0.6529975014) q[4];
rz(pi*0.2124837785) q[5];
rz(pi*0.2767373377) q[7];
rz(pi*-0.1849294157) q[8];
rz(pi*0.0223259112) q[9];
rz(pi*-0.0300285739) q[10];
rz(pi*-0.8467509808) q[11];
rz(pi*0.8164932598) q[12];
rz(pi*-0.1631056138) q[15];
rz(pi*0.1766183349) q[16];
rz(pi*-0.2254238777) q[17];
rz(pi*0.2814659584) q[18];
rz(pi*-0.331134634) q[19];
rz(pi*0.4044070452) q[20];
rz(pi*-0.408126244) q[22];
rz(pi*0.3666829187) q[23];
rz(pi*-0.3507308388) q[24];
rz(pi*0.3755464949) q[25];

// Gate: cirq.FSimGate(theta=1.5930079664614663, phi=0.5355369376884288)
u3(0,0,pi*1.0) q[2];
u3(0,0,pi*1.0) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.0070701845) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*1.0,0,0) q[2];
u3(pi*1.0,0,0) q[3];
u3(pi*1.0,0,pi*0.5) q[2];
u3(pi*1.0,0,pi*0.5) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.0070701845) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(0,0,pi*0.5) q[2];
u3(0,0,pi*0.5) q[3];
u3(pi*0.5,pi*1.0,pi*2.0) q[2];
u3(pi*0.5,0,pi*1.5) q[3];
rx(pi*0.5) q[2];
cx q[2],q[3];
rx(pi*0.4147666492) q[2];
ry(pi*0.5) q[3];
cx q[3],q[2];
rx(pi*-0.5) q[3];
rz(pi*0.5) q[3];
cx q[2],q[3];
u3(pi*0.5,pi*0.9147666492,0) q[2];
u3(pi*0.5,pi*1.4147666492,pi*1.0) q[3];

// Gate: cirq.FSimGate(theta=1.59182423935832, phi=-5.773664463980115)
u3(pi*1.0,0,pi*1.0) q[4];
u3(pi*1.0,0,pi*1.0) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.0066933925) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(0,0,0) q[4];
u3(0,pi*1.0,pi*1.0) q[5];
u3(0,pi*1.0,pi*0.5) q[4];
u3(0,0,pi*1.5) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.0066933925) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*1.0,0,pi*0.5) q[4];
u3(pi*1.0,0,pi*0.5) q[5];
u3(pi*0.5,0,0) q[4];
u3(pi*0.5,pi*1.0,pi*1.5) q[5];
rx(pi*0.5) q[4];
cx q[4],q[5];
rx(pi*0.4189072392) q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
rx(pi*-0.5) q[5];
rz(pi*0.5) q[5];
cx q[4],q[5];
u3(pi*0.5,pi*0.9189072392,pi*1.0) q[4];
u3(pi*0.5,pi*1.4189072392,0) q[5];

// Gate: cirq.FSimGate(theta=1.5862983338115253, phi=0.5200148508319427)
u3(pi*1.0,0,pi*1.0) q[7];
u3(pi*1.0,0,pi*1.0) q[8];
rx(pi*0.5) q[7];
cx q[7],q[8];
rx(pi*0.0049344421) q[7];
ry(pi*0.5) q[8];
cx q[8],q[7];
rx(pi*-0.5) q[8];
rz(pi*0.5) q[8];
cx q[7],q[8];
u3(0,0,0) q[7];
u3(0,pi*1.0,pi*1.0) q[8];
u3(0,pi*1.0,pi*0.5) q[7];
u3(0,0,pi*1.5) q[8];
rx(pi*0.5) q[7];
cx q[7],q[8];
rx(pi*0.0049344421) q[7];
ry(pi*0.5) q[8];
cx q[8],q[7];
rx(pi*-0.5) q[8];
rz(pi*0.5) q[8];
cx q[7],q[8];
u3(pi*1.0,0,pi*0.5) q[7];
u3(pi*1.0,0,pi*0.5) q[8];
u3(pi*0.5,0,pi*0.4212623131) q[7];
u3(pi*0.5,pi*1.0,pi*1.9212623131) q[8];
rx(pi*0.5) q[7];
cx q[7],q[8];
rx(pi*0.417237066) q[7];
ry(pi*0.5) q[8];
cx q[8],q[7];
rx(pi*-0.5) q[8];
rz(pi*0.5) q[8];
cx q[7],q[8];
u3(pi*0.5,pi*0.4959747529,pi*1.0) q[7];
u3(pi*0.5,pi*0.9959747529,0) q[8];

// Gate: cirq.FSimGate(theta=1.5286450573669954, phi=0.5113953905811602)
u3(pi*0.9998653312,pi*1.5,pi*0.5) q[9];
u3(pi*0.0001346688,pi*1.5,pi*1.5) q[10];
rx(pi*0.5) q[9];
cx q[9],q[10];
rx(pi*0.0134171658) q[9];
ry(pi*0.5) q[10];
cx q[10],q[9];
rx(pi*-0.5) q[10];
rz(pi*0.5) q[10];
cx q[9],q[10];
u3(pi*0.9998653312,pi*0.5,pi*1.5) q[9];
u3(pi*0.0001346688,pi*1.5,pi*1.5) q[10];
u3(pi*0.75,pi*0.5,pi*1.0) q[9];
u3(pi*0.75,pi*1.5,pi*1.0) q[10];
rx(pi*0.5) q[9];
cx q[9],q[10];
rx(pi*0.0134171658) q[9];
ry(pi*0.5) q[10];
cx q[10],q[9];
rx(pi*-0.5) q[10];
rz(pi*0.5) q[10];
cx q[9],q[10];
u3(pi*0.75,0,pi*0.5) q[9];
u3(pi*0.75,0,pi*1.5) q[10];
u3(pi*0.5,0,pi*0.9316340348) q[9];
u3(pi*0.5,pi*1.0,pi*0.4316340348) q[10];
rx(pi*0.5) q[9];
cx q[9],q[10];
rx(pi*0.4186088957) q[9];
ry(pi*0.5) q[10];
cx q[10],q[9];
rx(pi*-0.5) q[10];
rz(pi*0.5) q[10];
cx q[9],q[10];
u3(pi*0.5,pi*1.986974861,pi*1.0) q[9];
u3(pi*0.5,pi*0.486974861,0) q[10];

// Gate: cirq.FSimGate(theta=1.565622495548066, phi=0.5127256481964074)
u3(0,0,0) q[11];
u3(pi*1.0,0,0) q[12];
rx(pi*0.5) q[11];
cx q[11],q[12];
rx(pi*0.0016468816) q[11];
ry(pi*0.5) q[12];
cx q[12],q[11];
rx(pi*-0.5) q[12];
rz(pi*0.5) q[12];
cx q[11],q[12];
u3(0,0,0) q[11];
u3(pi*1.0,0,0) q[12];
u3(pi*1.0,pi*1.0,pi*0.5) q[11];
u3(0,pi*1.0,pi*0.5) q[12];
rx(pi*0.5) q[11];
cx q[11],q[12];
rx(pi*0.0016468816) q[11];
ry(pi*0.5) q[12];
cx q[12],q[11];
rx(pi*-0.5) q[12];
rz(pi*0.5) q[12];
cx q[11],q[12];
u3(pi*1.0,pi*1.0,pi*0.5) q[11];
u3(0,0,pi*0.5) q[12];
u3(pi*0.5,0,pi*1.4331886647) q[11];
u3(pi*0.5,pi*1.0,pi*1.9331886647) q[12];
rx(pi*0.5) q[11];
cx q[11],q[12];
rx(pi*0.4183971786) q[11];
ry(pi*0.5) q[12];
cx q[12],q[11];
rx(pi*-0.5) q[12];
rz(pi*0.5) q[12];
cx q[11],q[12];
u3(pi*0.5,pi*1.485208514,pi*1.0) q[11];
u3(pi*0.5,pi*0.985208514,0) q[12];

// Gate: cirq.FSimGate(theta=1.5384796865621224, phi=0.5293381306162406)
u3(pi*0.4741322475,pi*1.5,pi*0.5) q[15];
u3(pi*0.4741322475,pi*0.5,pi*0.5) q[16];
rx(pi*0.5) q[15];
cx q[15],q[16];
rx(pi*0.0102867061) q[15];
ry(pi*0.5) q[16];
cx q[16],q[15];
rx(pi*-0.5) q[16];
rz(pi*0.5) q[16];
cx q[15],q[16];
u3(pi*0.4741322475,pi*0.5,pi*1.5) q[15];
u3(pi*0.4741322475,pi*0.5,pi*0.5) q[16];
u3(pi*0.6950866205,pi*0.5,0) q[15];
u3(pi*0.3049133795,pi*0.5,pi*1.0) q[16];
rx(pi*0.5) q[15];
cx q[15],q[16];
rx(pi*0.0102867061) q[15];
ry(pi*0.5) q[16];
cx q[16],q[15];
rx(pi*-0.5) q[16];
rz(pi*0.5) q[16];
cx q[15],q[16];
u3(pi*0.6950866205,pi*1.0,pi*0.5) q[15];
u3(pi*0.3049133795,pi*2.0,pi*0.5) q[16];
u3(pi*0.5,0,pi*0.9273232623) q[15];
u3(pi*0.5,pi*1.0,pi*1.4273232623) q[16];
rx(pi*0.5) q[15];
cx q[15],q[16];
rx(pi*0.4157532199) q[15];
ry(pi*0.5) q[16];
cx q[16],q[15];
rx(pi*-0.5) q[16];
rz(pi*0.5) q[16];
cx q[15],q[16];
u3(pi*0.5,pi*1.9884299576,pi*1.0) q[15];
u3(pi*0.5,pi*1.4884299576,0) q[16];

// Gate: cirq.FSimGate(theta=1.4727562833004122, phi=0.4552443293379814)
u3(0,0,0) q[17];
u3(pi*1.0,0,0) q[18];
rx(pi*0.5) q[17];
cx q[17],q[18];
rx(pi*0.0312071151) q[17];
ry(pi*0.5) q[18];
cx q[18],q[17];
rx(pi*-0.5) q[18];
rz(pi*0.5) q[18];
cx q[17],q[18];
u3(0,0,0) q[17];
u3(pi*1.0,0,0) q[18];
u3(pi*1.0,pi*1.0,pi*0.5) q[17];
u3(0,pi*1.0,pi*0.5) q[18];
rx(pi*0.5) q[17];
cx q[17],q[18];
rx(pi*0.0312071151) q[17];
ry(pi*0.5) q[18];
cx q[18],q[17];
rx(pi*-0.5) q[18];
rz(pi*0.5) q[18];
cx q[17],q[18];
u3(pi*1.0,pi*1.0,pi*0.5) q[17];
u3(0,0,pi*0.5) q[18];
u3(pi*0.5,pi*1.0,pi*1.5273290185) q[17];
u3(pi*0.5,0,pi*1.0273290185) q[18];
rx(pi*0.5) q[17];
cx q[17],q[18];
rx(pi*0.4275456147) q[17];
ry(pi*0.5) q[18];
cx q[18],q[17];
rx(pi*-0.5) q[18];
rz(pi*0.5) q[18];
cx q[17],q[18];
u3(pi*0.5,pi*1.4002165961,0) q[17];
u3(pi*0.5,pi*1.9002165961,pi*1.0) q[18];

// Gate: cirq.FSimGate(theta=1.5346175385256955, phi=0.5131039467233695)
u3(0,0,0) q[19];
u3(pi*1.0,0,0) q[20];
rx(pi*0.5) q[19];
cx q[19],q[20];
rx(pi*0.011516066) q[19];
ry(pi*0.5) q[20];
cx q[20],q[19];
rx(pi*-0.5) q[20];
rz(pi*0.5) q[20];
cx q[19],q[20];
u3(0,0,0) q[19];
u3(pi*1.0,0,0) q[20];
u3(pi*1.0,pi*1.0,pi*0.5) q[19];
u3(0,pi*1.0,pi*0.5) q[20];
rx(pi*0.5) q[19];
cx q[19],q[20];
rx(pi*0.011516066) q[19];
ry(pi*0.5) q[20];
cx q[20],q[19];
rx(pi*-0.5) q[20];
rz(pi*0.5) q[20];
cx q[19],q[20];
u3(pi*1.0,pi*1.0,pi*0.5) q[19];
u3(0,0,pi*0.5) q[20];
u3(pi*0.5,0,pi*1.0854789221) q[19];
u3(pi*0.5,pi*1.0,pi*1.5854789221) q[20];
rx(pi*0.5) q[19];
cx q[19],q[20];
rx(pi*0.4183369706) q[19];
ry(pi*0.5) q[20];
cx q[20],q[19];
rx(pi*-0.5) q[20];
rz(pi*0.5) q[20];
cx q[19],q[20];
u3(pi*0.5,pi*1.8328580485,pi*1.0) q[19];
u3(pi*0.5,pi*1.3328580485,0) q[20];

// Gate: cirq.FSimGate(theta=1.5169062231051558, phi=0.46319906116805815)
u3(pi*0.3237918088,pi*1.5,pi*0.5) q[22];
u3(pi*0.6762081912,pi*0.5,pi*0.5) q[23];
rx(pi*0.5) q[22];
cx q[22],q[23];
rx(pi*0.0171537528) q[22];
ry(pi*0.5) q[23];
cx q[23],q[22];
rx(pi*-0.5) q[23];
rz(pi*0.5) q[23];
cx q[22],q[23];
u3(pi*0.3237918088,pi*0.5,pi*1.5) q[22];
u3(pi*0.6762081912,pi*0.5,pi*0.5) q[23];
u3(pi*0.5,pi*0.5,0) q[22];
u3(pi*0.5,pi*0.5,pi*1.0) q[23];
rx(pi*0.5) q[22];
cx q[22],q[23];
rx(pi*0.0171537528) q[22];
ry(pi*0.5) q[23];
cx q[23],q[22];
rx(pi*-0.5) q[23];
rz(pi*0.5) q[23];
cx q[22],q[23];
u3(pi*0.5,pi*1.0,pi*0.5) q[22];
u3(pi*0.5,0,pi*0.5) q[23];
u3(pi*0.5,0,pi*0.0788165235) q[22];
u3(pi*0.5,pi*1.0,pi*0.5788165235) q[23];
rx(pi*0.5) q[22];
cx q[22],q[23];
rx(pi*0.4262795798) q[22];
ry(pi*0.5) q[23];
cx q[23],q[22];
rx(pi*-0.5) q[23];
rz(pi*0.5) q[23];
cx q[22],q[23];
u3(pi*0.5,pi*0.8474630563,pi*1.0) q[22];
u3(pi*0.5,pi*0.3474630563,0) q[23];

// Gate: cirq.FSimGate(theta=1.5705414623224259, phi=0.4791699064049766)
u3(pi*1.0,0,0) q[24];
u3(0,0,0) q[25];
rx(pi*0.5) q[24];
cx q[24],q[25];
rx(pi*8.11259e-05) q[24];
ry(pi*0.5) q[25];
cx q[25],q[24];
rx(pi*-0.5) q[25];
rz(pi*0.5) q[25];
cx q[24],q[25];
u3(pi*1.0,0,0) q[24];
u3(0,pi*1.0,pi*1.0) q[25];
u3(0,0,pi*0.5) q[24];
u3(pi*1.0,0,pi*0.5) q[25];
rx(pi*0.5) q[24];
cx q[24],q[25];
rx(pi*8.11259e-05) q[24];
ry(pi*0.5) q[25];
cx q[25],q[24];
rx(pi*-0.5) q[25];
rz(pi*0.5) q[25];
cx q[24],q[25];
u3(0,pi*1.0,pi*0.5) q[24];
u3(pi*1.0,0,pi*0.5) q[25];
u3(pi*0.5,pi*1.0,pi*1.75) q[24];
u3(pi*0.5,0,pi*0.25) q[25];
rx(pi*0.5) q[24];
cx q[24],q[25];
rx(pi*0.4237377408) q[24];
ry(pi*0.5) q[25];
cx q[25],q[24];
rx(pi*-0.5) q[25];
rz(pi*0.5) q[25];
cx q[24],q[25];
u3(pi*0.5,pi*1.1737377408,0) q[24];
u3(pi*0.5,pi*0.6737377408,pi*1.0) q[25];

rz(pi*-0.7660705551) q[2];
rz(pi*0.7206822883) q[3];
rz(pi*1.3183560384) q[4];
rz(pi*-1.7588697613) q[5];
rz(pi*-0.6722145775) q[7];
rz(pi*0.7640224995) q[8];
rz(pi*0.5799079899) q[9];
rz(pi*-0.5876106526) q[10];
rz(pi*1.0843371101) q[11];
rz(pi*-1.1145948312) q[12];
rz(pi*-1.6258237068) q[15];
rz(pi*1.6393364279) q[16];
rz(pi*0.7948295009) q[17];
rz(pi*-0.7387874203) q[18];
rz(pi*0.0493419494) q[19];
rz(pi*0.0239304618) q[20];
rz(pi*0.4710627118) q[22];
rz(pi*-0.5125060371) q[23];
rz(pi*2.1645856475) q[24];
rz(pi*-2.1397699914) q[25];
ry(pi*0.5) q[0];
u2(pi*-0.25, pi*0.25) q[1];
rx(pi*0.5) q[2];
rx(pi*0.5) q[3];
u2(pi*-0.25, pi*0.25) q[4];
rx(pi*0.5) q[5];
ry(pi*0.5) q[6];
u2(pi*-0.25, pi*0.25) q[7];
rx(pi*0.5) q[8];
ry(pi*0.5) q[9];
ry(pi*0.5) q[10];
ry(pi*0.5) q[11];
u2(pi*-0.25, pi*0.25) q[12];
u2(pi*-0.25, pi*0.25) q[13];
ry(pi*0.5) q[14];
ry(pi*0.5) q[15];
ry(pi*0.5) q[16];
ry(pi*0.5) q[17];
ry(pi*0.5) q[18];
u2(pi*-0.25, pi*0.25) q[19];
rx(pi*0.5) q[20];
u2(pi*-0.25, pi*0.25) q[21];
u2(pi*-0.25, pi*0.25) q[22];
ry(pi*0.5) q[23];
rx(pi*0.5) q[24];
rx(pi*0.5) q[25];
u2(pi*-0.25, pi*0.25) q[26];
ry(pi*0.5) q[27];
rz(pi*-5.435868884) q[0];
rz(pi*5.4384972893) q[1];
rz(pi*-5.1904855525) q[3];
rz(pi*5.1709888621) q[4];
rz(pi*-4.4807080673) q[8];
rz(pi*4.5258882679) q[9];
rz(pi*2.135954523) q[12];
rz(pi*-2.1822665206) q[13];
rz(pi*-3.7780476634) q[14];
rz(pi*3.8173358805) q[15];
rz(pi*0.7811374803) q[18];
rz(pi*-0.6780279413) q[19];
rz(pi*2.3134893227) q[23];
rz(pi*-2.2384934207) q[24];
rz(pi*1.4263074183) q[26];
rz(pi*-1.527034178) q[27];

// Gate: cirq.FSimGate(theta=1.5233234922971755, phi=0.6681144400379464)
u3(pi*1.0,0,0) q[0];
u3(0,0,0) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.0151110725) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*1.0,0,0) q[0];
u3(0,pi*1.0,pi*1.0) q[1];
u3(0,0,pi*0.5) q[0];
u3(pi*1.0,0,pi*0.5) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.0151110725) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(0,pi*1.0,pi*0.5) q[0];
u3(pi*1.0,0,pi*0.5) q[1];
u3(pi*0.5,pi*1.0,pi*1.0799877448) q[0];
u3(pi*0.5,0,pi*0.5799877448) q[1];
rx(pi*0.5) q[0];
cx q[0],q[1];
rx(pi*0.3936662843) q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
rx(pi*-0.5) q[1];
rz(pi*0.5) q[1];
cx q[0],q[1];
u3(pi*0.5,pi*1.8136785395,0) q[0];
u3(pi*0.5,pi*0.3136785395,pi*1.0) q[1];

// Gate: cirq.FSimGate(theta=1.5644541080112795, phi=0.5439498075085039)
u3(pi*0.5221287584,pi*0.5,pi*0.5) q[3];
u3(pi*0.5221287584,pi*1.5,pi*0.5) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.0020187909) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.5221287584,pi*0.5,pi*0.5) q[3];
u3(pi*0.5221287584,pi*0.5,pi*1.5) q[4];
u3(pi*0.8481954371,pi*1.5,0) q[3];
u3(pi*0.8481954371,pi*0.5,0) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.0020187909) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.8481954371,pi*1.0,pi*1.5) q[3];
u3(pi*0.8481954371,pi*1.0,pi*0.5) q[4];
u3(pi*0.5,0,pi*1.0) q[3];
u3(pi*0.5,pi*1.0,pi*1.5) q[4];
rx(pi*0.5) q[3];
cx q[3],q[4];
rx(pi*0.4134276993) q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
rx(pi*-0.5) q[4];
rz(pi*0.5) q[4];
cx q[3],q[4];
u3(pi*0.5,pi*1.9134276993,pi*1.0) q[3];
u3(pi*0.5,pi*1.4134276993,0) q[4];

// Gate: cirq.FSimGate(theta=1.541977006124425, phi=0.6073798124875975)
u3(pi*1.0,0,0) q[8];
u3(0,0,0) q[9];
rx(pi*0.5) q[8];
cx q[8],q[9];
rx(pi*0.0091734747) q[8];
ry(pi*0.5) q[9];
cx q[9],q[8];
rx(pi*-0.5) q[9];
rz(pi*0.5) q[9];
cx q[8],q[9];
u3(pi*1.0,pi*1.0,pi*1.0) q[8];
u3(0,pi*1.0,pi*1.0) q[9];
u3(0,0,pi*0.5) q[8];
u3(pi*1.0,0,pi*0.5) q[9];
rx(pi*0.5) q[8];
cx q[8],q[9];
rx(pi*0.0091734747) q[8];
ry(pi*0.5) q[9];
cx q[9],q[8];
rx(pi*-0.5) q[9];
rz(pi*0.5) q[9];
cx q[8],q[9];
u3(0,pi*1.0,pi*0.5) q[8];
u3(pi*1.0,0,pi*0.5) q[9];
u3(pi*0.5,0,pi*1.4011150504) q[8];
u3(pi*0.5,pi*1.0,pi*1.9011150504) q[9];
rx(pi*0.5) q[8];
cx q[8],q[9];
rx(pi*0.4033325005) q[8];
ry(pi*0.5) q[9];
cx q[9],q[8];
rx(pi*-0.5) q[9];
rz(pi*0.5) q[9];
cx q[8],q[9];
u3(pi*0.5,pi*1.5022174501,pi*1.0) q[8];
u3(pi*0.5,pi*1.0022174501,0) q[9];

// Gate: cirq.FSimGate(theta=1.5138652502397498, phi=0.47710618607286504)
u3(pi*0.0204107577,pi*1.5,pi*1.5) q[12];
u3(pi*0.0204107577,pi*0.5,pi*1.5) q[13];
rx(pi*0.5) q[12];
cx q[12],q[13];
rx(pi*0.0181217245) q[12];
ry(pi*0.5) q[13];
cx q[13],q[12];
rx(pi*-0.5) q[13];
rz(pi*0.5) q[13];
cx q[12],q[13];
u3(pi*0.0204107577,pi*1.5,pi*1.5) q[12];
u3(pi*0.0204107577,pi*1.5,pi*0.5) q[13];
u3(pi*0.75,pi*0.5,pi*1.0) q[12];
u3(pi*0.75,pi*1.5,pi*1.0) q[13];
rx(pi*0.5) q[12];
cx q[12],q[13];
rx(pi*0.0181217245) q[12];
ry(pi*0.5) q[13];
cx q[13],q[12];
rx(pi*-0.5) q[13];
rz(pi*0.5) q[13];
cx q[12],q[13];
u3(pi*0.75,pi*2.0,pi*0.5) q[12];
u3(pi*0.75,0,pi*1.5) q[13];
u3(pi*0.5,pi*1.0,pi*0.0333334488) q[12];
u3(pi*0.5,0,pi*0.5333334488) q[13];
rx(pi*0.5) q[12];
cx q[12],q[13];
rx(pi*0.4240661921) q[12];
ry(pi*0.5) q[13];
cx q[13],q[12];
rx(pi*-0.5) q[13];
rz(pi*0.5) q[13];
cx q[12],q[13];
u3(pi*0.5,pi*0.8907327433,0) q[12];
u3(pi*0.5,pi*0.3907327433,pi*1.0) q[13];

// Gate: cirq.FSimGate(theta=1.5849169442855044, phi=0.54346233613361)
u3(pi*0.6762081912,pi*0.5,pi*0.5) q[14];
u3(pi*0.6762081912,pi*1.5,pi*1.5) q[15];
rx(pi*0.5) q[14];
cx q[14],q[15];
rx(pi*0.0044947321) q[14];
ry(pi*0.5) q[15];
cx q[15],q[14];
rx(pi*-0.5) q[15];
rz(pi*0.5) q[15];
cx q[14],q[15];
u3(pi*0.3237918088,pi*1.5,pi*1.5) q[14];
u3(pi*0.3237918088,pi*0.5,pi*0.5) q[15];
u3(pi*0.5,pi*0.5,0) q[14];
u3(pi*0.5,pi*1.5,pi*1.0) q[15];
rx(pi*0.5) q[14];
cx q[14],q[15];
rx(pi*0.0044947321) q[14];
ry(pi*0.5) q[15];
cx q[15],q[14];
rx(pi*-0.5) q[15];
rz(pi*0.5) q[15];
cx q[14],q[15];
u3(pi*0.5,0,pi*1.5) q[14];
u3(pi*0.5,pi*1.0,pi*0.5) q[15];
u3(pi*0.5,0,pi*1.5415341879) q[14];
u3(pi*0.5,pi*1.0,pi*0.0415341879) q[15];
rx(pi*0.5) q[14];
cx q[14],q[15];
rx(pi*0.4135052828) q[14];
ry(pi*0.5) q[15];
cx q[15],q[14];
rx(pi*-0.5) q[15];
rz(pi*0.5) q[15];
cx q[14],q[15];
u3(pi*0.5,pi*1.371971095,pi*1.0) q[14];
u3(pi*0.5,pi*0.871971095,0) q[15];

// Gate: cirq.FSimGate(theta=1.5398075246432927, phi=0.5174515645943538)
u3(0,0,0) q[18];
u3(pi*1.0,0,0) q[19];
rx(pi*0.5) q[18];
cx q[18],q[19];
rx(pi*0.0098640421) q[18];
ry(pi*0.5) q[19];
cx q[19],q[18];
rx(pi*-0.5) q[19];
rz(pi*0.5) q[19];
cx q[18],q[19];
u3(0,pi*1.0,pi*1.0) q[18];
u3(pi*1.0,0,0) q[19];
u3(pi*1.0,pi*1.0,pi*0.5) q[18];
u3(0,pi*1.0,pi*0.5) q[19];
rx(pi*0.5) q[18];
cx q[18],q[19];
rx(pi*0.0098640421) q[18];
ry(pi*0.5) q[19];
cx q[19],q[18];
rx(pi*-0.5) q[19];
rz(pi*0.5) q[19];
cx q[18],q[19];
u3(pi*1.0,pi*1.0,pi*0.5) q[18];
u3(0,0,pi*0.5) q[19];
u3(pi*0.5,pi*1.0,pi*1.25) q[18];
u3(pi*0.5,0,pi*0.75) q[19];
rx(pi*0.5) q[18];
cx q[18],q[19];
rx(pi*0.4176450257) q[18];
ry(pi*0.5) q[19];
cx q[19],q[18];
rx(pi*-0.5) q[19];
rz(pi*0.5) q[19];
cx q[18],q[19];
u3(pi*0.5,pi*1.6676450257,0) q[18];
u3(pi*0.5,pi*0.1676450257,pi*1.0) q[19];

// Gate: cirq.FSimGate(theta=1.5376836849431186, phi=0.46265685930712236)
u3(pi*1.0,0,0) q[23];
u3(0,0,0) q[24];
rx(pi*0.5) q[23];
cx q[23],q[24];
rx(pi*0.0105400813) q[23];
ry(pi*0.5) q[24];
cx q[24],q[23];
rx(pi*-0.5) q[24];
rz(pi*0.5) q[24];
cx q[23],q[24];
u3(pi*1.0,0,0) q[23];
u3(0,pi*1.0,pi*1.0) q[24];
u3(0,0,pi*0.5) q[23];
u3(pi*1.0,0,pi*0.5) q[24];
rx(pi*0.5) q[23];
cx q[23],q[24];
rx(pi*0.0105400813) q[23];
ry(pi*0.5) q[24];
cx q[24],q[23];
rx(pi*-0.5) q[24];
rz(pi*0.5) q[24];
cx q[23],q[24];
u3(0,pi*1.0,pi*0.5) q[23];
u3(pi*1.0,0,pi*0.5) q[24];
u3(pi*0.5,pi*1.0,pi*0.1233633886) q[23];
u3(pi*0.5,0,pi*1.6233633886) q[24];
rx(pi*0.5) q[23];
cx q[23],q[24];
rx(pi*0.4263658739) q[23];
ry(pi*0.5) q[24];
cx q[24],q[23];
rx(pi*-0.5) q[24];
rz(pi*0.5) q[24];
cx q[23],q[24];
u3(pi*0.5,pi*0.8030024853,0) q[23];
u3(pi*0.5,pi*1.3030024853,pi*1.0) q[24];

// Gate: cirq.FSimGate(theta=1.4749003996237158, phi=0.4353609222411594)
u3(pi*0.3237918088,pi*0.5,pi*1.5) q[26];
u3(pi*0.3237918088,pi*0.5,pi*0.5) q[27];
rx(pi*0.5) q[26];
cx q[26],q[27];
rx(pi*0.0305246217) q[26];
ry(pi*0.5) q[27];
cx q[27],q[26];
rx(pi*-0.5) q[27];
rz(pi*0.5) q[27];
cx q[26],q[27];
u3(pi*0.3237918088,pi*1.5,pi*0.5) q[26];
u3(pi*0.3237918088,pi*0.5,pi*0.5) q[27];
u3(pi*0.5,pi*1.5,0) q[26];
u3(pi*0.5,pi*0.5,0) q[27];
rx(pi*0.5) q[26];
cx q[26],q[27];
rx(pi*0.0305246217) q[26];
ry(pi*0.5) q[27];
cx q[27],q[26];
rx(pi*-0.5) q[27];
rz(pi*0.5) q[27];
cx q[26],q[27];
u3(pi*0.5,pi*1.0,pi*1.5) q[26];
u3(pi*0.5,pi*1.0,pi*0.5) q[27];
u3(pi*0.5,pi*1.0,pi*0.1488891613) q[26];
u3(pi*0.5,0,pi*1.6488891613) q[27];
rx(pi*0.5) q[26];
cx q[26],q[27];
rx(pi*0.4307101572) q[26];
ry(pi*0.5) q[27];
cx q[27],q[26];
rx(pi*-0.5) q[27];
rz(pi*0.5) q[27];
cx q[26],q[27];
u3(pi*0.5,pi*0.7818209959,0) q[26];
u3(pi*0.5,pi*1.2818209959,pi*1.0) q[27];

rz(pi*5.7938560526) q[0];
rz(pi*-5.7912276473) q[1];
rz(pi*5.223139057) q[3];
rz(pi*-5.2426357474) q[4];
rz(pi*5.0481998179) q[8];
rz(pi*-5.0030196172) q[9];
rz(pi*-2.6543362736) q[12];
rz(pi*2.608024276) q[13];
rz(pi*3.9045088495) q[14];
rz(pi*-3.8652206324) q[15];
rz(pi*-1.5516585295) q[18];
rz(pi*1.6547680686) q[19];
rz(pi*-2.3490397609) q[23];
rz(pi*2.4240356629) q[24];
rz(pi*-1.8655832225) q[26];
rz(pi*1.7648564628) q[27];
rx(pi*0.5) q[0];
ry(pi*0.5) q[1];
ry(pi*0.5) q[2];
u2(pi*-0.25, pi*0.25) q[3];
ry(pi*0.5) q[4];
u2(pi*-0.25, pi*0.25) q[5];
rx(pi*0.5) q[6];
ry(pi*0.5) q[7];
ry(pi*0.5) q[8];
rx(pi*0.5) q[9];
rx(pi*0.5) q[10];
rx(pi*0.5) q[11];
ry(pi*0.5) q[12];
ry(pi*0.5) q[13];
rx(pi*0.5) q[14];
rx(pi*0.5) q[15];
u2(pi*-0.25, pi*0.25) q[16];
rx(pi*0.5) q[17];
u2(pi*-0.25, pi*0.25) q[18];
ry(pi*0.5) q[19];
ry(pi*0.5) q[20];
ry(pi*0.5) q[21];
rx(pi*0.5) q[22];
rx(pi*0.5) q[23];
u2(pi*-0.25, pi*0.25) q[24];
u2(pi*-0.25, pi*0.25) q[25];
rx(pi*0.5) q[26];
u2(pi*-0.25, pi*0.25) q[27];
rz(pi*-6.2142231107) q[2];
rz(pi*6.2443158834) q[7];
rz(pi*-6.1962950966) q[3];
rz(pi*6.1918334224) q[8];
rz(pi*-5.3678687748) q[4];
rz(pi*5.2571565841) q[9];
rz(pi*-1.6118072404) q[5];
rz(pi*1.5665192387) q[10];
rz(pi*-5.4089324987) q[11];
rz(pi*5.3962214229) q[17];
rz(pi*-3.2786928386) q[12];
rz(pi*3.3390064432) q[18];
rz(pi*-5.3907558705) q[13];
rz(pi*5.417256899) q[19];
rz(pi*4.3676522913) q[15];
rz(pi*-3.9105776028) q[21];
rz(pi*5.7008732785) q[23];
rz(pi*-5.6833781959) q[26];
rz(pi*4.5863357897) q[24];
rz(pi*-4.7653755272) q[27];

// Gate: cirq.FSimGate(theta=1.505206014385737, phi=0.5177720559789512)
u3(pi*1.0,0,0) q[2];
u3(0,0,0) q[7];
rx(pi*0.5) q[2];
cx q[2],q[7];
rx(pi*0.0208780449) q[2];
ry(pi*0.5) q[7];
cx q[7],q[2];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[2],q[7];
u3(pi*1.0,pi*1.0,pi*1.0) q[2];
u3(0,pi*1.0,pi*1.0) q[7];
u3(0,0,pi*0.5) q[2];
u3(pi*1.0,0,pi*0.5) q[7];
rx(pi*0.5) q[2];
cx q[2],q[7];
rx(pi*0.0208780449) q[2];
ry(pi*0.5) q[7];
cx q[7],q[2];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[2],q[7];
u3(0,pi*1.0,pi*0.5) q[2];
u3(pi*1.0,0,pi*0.5) q[7];
u3(pi*0.5,0,pi*0.25) q[2];
u3(pi*0.5,pi*1.0,pi*0.75) q[7];
rx(pi*0.5) q[2];
cx q[2],q[7];
rx(pi*0.4175940179) q[2];
ry(pi*0.5) q[7];
cx q[7],q[2];
rx(pi*-0.5) q[7];
rz(pi*0.5) q[7];
cx q[2],q[7];
u3(pi*0.5,pi*0.6675940179,pi*1.0) q[2];
u3(pi*0.5,pi*0.1675940179,0) q[7];

// Gate: cirq.FSimGate(theta=1.5588791081427968, phi=0.559649620487243)
u3(pi*0.1762081912,pi*0.5,pi*0.5) q[3];
u3(pi*0.1762081912,pi*0.5,pi*1.5) q[8];
rx(pi*0.5) q[3];
cx q[3],q[8];
rx(pi*0.0037933685) q[3];
ry(pi*0.5) q[8];
cx q[8],q[3];
rx(pi*-0.5) q[8];
rz(pi*0.5) q[8];
cx q[3],q[8];
u3(pi*0.1762081912,pi*0.5,pi*0.5) q[3];
u3(pi*0.1762081912,pi*1.5,pi*0.5) q[8];
u3(pi*0.5,pi*1.5,0) q[3];
u3(pi*0.5,pi*0.5,0) q[8];
rx(pi*0.5) q[3];
cx q[3],q[8];
rx(pi*0.0037933685) q[3];
ry(pi*0.5) q[8];
cx q[8],q[3];
rx(pi*-0.5) q[8];
rz(pi*0.5) q[8];
cx q[3],q[8];
u3(pi*0.5,pi*1.0,pi*1.5) q[3];
u3(pi*0.5,pi*1.0,pi*0.5) q[8];
u3(pi*0.5,0,pi*1.5) q[3];
u3(pi*0.5,pi*1.0,pi*1.0) q[8];
rx(pi*0.5) q[3];
cx q[3],q[8];
rx(pi*0.4109289965) q[3];
ry(pi*0.5) q[8];
cx q[8],q[3];
rx(pi*-0.5) q[8];
rz(pi*0.5) q[8];
cx q[3],q[8];
u3(pi*0.5,pi*1.4109289965,pi*1.0) q[3];
u3(pi*0.5,pi*1.9109289965,0) q[8];

// Gate: cirq.FSimGate(theta=1.5907035825834708, phi=0.5678223287662552)
u3(0,0,pi*1.0) q[4];
u3(0,0,pi*1.0) q[9];
rx(pi*0.5) q[4];
cx q[4],q[9];
rx(pi*0.0063366763) q[4];
ry(pi*0.5) q[9];
cx q[9],q[4];
rx(pi*-0.5) q[9];
rz(pi*0.5) q[9];
cx q[4],q[9];
u3(pi*1.0,0,0) q[4];
u3(pi*1.0,0,0) q[9];
u3(pi*1.0,0,pi*0.5) q[4];
u3(pi*1.0,0,pi*0.5) q[9];
rx(pi*0.5) q[4];
cx q[4],q[9];
rx(pi*0.0063366763) q[4];
ry(pi*0.5) q[9];
cx q[9],q[4];
rx(pi*-0.5) q[9];
rz(pi*0.5) q[9];
cx q[4],q[9];
u3(0,0,pi*0.5) q[4];
u3(0,0,pi*0.5) q[9];
u3(pi*0.5,0,pi*0.25) q[4];
u3(pi*0.5,pi*1.0,pi*0.75) q[9];
rx(pi*0.5) q[4];
cx q[4],q[9];
rx(pi*0.4096282696) q[4];
ry(pi*0.5) q[9];
cx q[9],q[4];
rx(pi*-0.5) q[9];
rz(pi*0.5) q[9];
cx q[4],q[9];
u3(pi*0.5,pi*0.6596282696,pi*1.0) q[4];
u3(pi*0.5,pi*0.1596282696,0) q[9];

// Gate: cirq.FSimGate(theta=1.5296321276792553, phi=0.537761951313038)
u3(pi*1.0,0,0) q[5];
u3(0,0,0) q[10];
rx(pi*0.5) q[5];
cx q[5],q[10];
rx(pi*0.0131029715) q[5];
ry(pi*0.5) q[10];
cx q[10],q[5];
rx(pi*-0.5) q[10];
rz(pi*0.5) q[10];
cx q[5],q[10];
u3(pi*1.0,0,0) q[5];
u3(0,pi*1.0,pi*1.0) q[10];
