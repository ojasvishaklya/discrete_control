g=tf([1 1],[1 2 0 0]);
sys=feedback(g,1);

t=0:0.5:100;

ustep=ones(size(t));
ramp=t;
parabolic=t.*t;

figure
output=lsim(sys,ustep,t);
plot(t,ustep,'g',t,output,'b');


figure
output=lsim(sys,ramp,t);
plot(t,ramp,'g',t,output,'b');

figure
output=lsim(sys,parabolic,t);
plot(t,parabolic,'g',t,output,'b');
