
num=[1 -1];
den=[1 4 5];
sys_c=tf(num,den);
sys_d_zoh=c2d(sys_c,0.1,'zoh');
sys_d_foh=c2d(sys_c,0.1,'foh');
sys_c_delay=tf(num,den,'InputDelay',0.35);
sys_foh_delay=c2d(sys_c_delay,0.1,'foh');

figure
step(sys_c);hold on;
step(sys_d_zoh);
title("ZOH");

figure
step(sys_c);hold on;
step(sys_d_foh);
title("FOH");

figure
step(sys_c_delay);hold on;
step(sys_foh_delay);
title("Delayed FOH");

figure
step(sys_c_delay);hold on;
step(sys_c);
title("Delayed Input");
%%
%Using Bilinear Transformation
A = [0 1; -6 -5];
B = [0; 1];
C = [1 0];
D = 0;
[num,den]=ss2tf(A,B,C,D);
sys_c=tf(num,den);
[numd,dend]=bilinear(num,den,2);
sys_d=tf(numd,dend,0.5);
step(sys_c);hold on;
step(sys_d);