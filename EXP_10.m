ts=input('Enter the Sampling Time: ');
disp('Enter sampling method method');
disp('Enter 0 for ZOH');
disp('Enter 1 for FOH');
a=input(': ');
num=[100];
den=[0.1 1 0];
sys=tf(num,den);
c=pid(1 ,0,0.05);
cloop=feedback(c*sys,1);

if(a==0)
  step(cloop);hold on;
  step(c2d(cloop,ts,'zoh'));
  legend('CTS','ZOH');

elseif(a==1)
  step(cloop);hold on;    
  step(c2d(cloop,ts,'foh'));
  legend('CTS','FOH');

else
    disp('wrong input !');
end    
    
    