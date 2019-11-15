A = [0 1; 0 0];
B = [0; 1];
C = [1 0];
D = 0;

sys=ss(A,B,C,D);
sys_d=c2d(sys,0.5,'zoh');
[a,b,c,d]=ssdata(sys_d);
k=acker(a,b,[0 0]);
sys_d_p=ss(a-b*k,b,c,d,0.5);
Nbar = 1/dcgain(sys_d_p);
hold on;
taxis = 0:Ts:5;
step(sys_d, taxis);
step(Nbar*sys_d_p, taxis);
legend('Open loop', 'Closed loop');
