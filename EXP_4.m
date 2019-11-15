%(i)	G(s) = 1/s(s+1)
sys_c=tf([1],[1 1 0]);
sys_d=c2d(sys_c,0.1,'zoh');
nyquist(sys_c);hold on;
nyquist(sys_d);
legend('Continuos','Discrete');
[Gm,Pm,Wcp,Wcg]=margin(sys_c);

%(ii)	GH(z) = 0.5516/(z-0.9048)
%%
sys_d=tf([0.5516],[1 -0.9048],0.1);
sys_c=d2c(sys_d);

nyquist(sys_c);hold on;
nyquist(sys_d);
legend('Continuos','Discrete');
