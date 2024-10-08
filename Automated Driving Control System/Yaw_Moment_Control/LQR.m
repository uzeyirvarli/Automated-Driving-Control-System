cr=198000;
cf=470000;
Mz=1000;
DeltaF=1;
lf=3.67;
lr=1.93;
m=9950;
mu=0.8;
v=80;
Iz=5;
A1=[(-mu*cf-mu*cr)/(m*v) -1+((mu*cr*lr-mu*cf*lf)/(m*v^2))];
A2=[(mu*cr*lr-mu*cf*lf)/(Iz) (-mu*cf*lf^2-mu*cr*lr^2)/(Iz*v)];
A=[A1;A2];
B=[(mu*cf)/(m*v) 0;(mu*cf*lf)/(Iz) 1/Iz];
C=[1 0;0 1];
D=[0 0;0 0];
Q=[1 0;0 10000]; % icrease to weight of x2 compared to x1
R=[0.1 0;0 0.1]; % reduced the energy weight t small value
K=lqr(A,B,Q,R)
