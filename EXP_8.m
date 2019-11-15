sys=tf([1],[1 1 0]);
sys_d=c2d(sys,0.1,'zoh');
rlocus(sys);hold on;
rlocus(sys_d);
legend('CTS','DTS')