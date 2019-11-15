A = [0 1;-0.2 -0.1];
B = [0; 1];
C = [1 0];
D = 0;
sys_c=tf(ss(A,B,C,D));
sys_d=c2d(sys_c,0.5,'zoh');
step(sys_c);hold on;
step(sys_d);
%%
t=0:0.5:10;
z=[];
p=[-1;-2;-3];
k=1;
[num,den]=zp2tf(z,p,k);
sys_c=tf(num,den);
sys_d=c2d(sys_c,0.5,'zoh');
step(sys_c);hold on;
step(sys_d);

