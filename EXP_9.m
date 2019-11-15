A = [0 1; -0.16 -1.5];
B = [0; 1];
C = [0 1];
D = 0;
Ts = 0.5;
sysd_ss = ss(A, B, C, D, Ts);

P = [0.5+0.5i 0.5-0.5i];
K = acker(A, B, P);
sysd_cl_ss = ss(A-B*K, B, C, D, Ts);

Nbar = 1/dcgain(sysd_cl_ss);

figure
step(sysd_ss);
title('Open loop step response');
 
figure
step(Nbar*sysd_cl_ss);
title('Closed loop step response');
