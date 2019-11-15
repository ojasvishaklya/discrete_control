A = [-0.2 0; 0 -0.8];
B = [1; 1];
C = [4/3 -1/3];
D = 0;

order=length(A);
co=rank(ctrb(A,B));
ob=rank(obsv(A,C));
