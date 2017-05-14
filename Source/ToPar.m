function [a,b,c,alpha,beta,gamma] = ToPar(v11,v12,v13,v21,v22,v23,v31,v32,v33)
u=[v11 v12 v13];
v=[v21 v22 v23];
w=[v31 v32 v33];
a=norm(u);
b=norm(v);
c=norm(w);
alpha= 180/pi*acos(u*v'/(a*b));
beta= 180/pi*acos(v*w'/(b*c));
gamma= 180/pi*acos(u*w'/(a*c));

