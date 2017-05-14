function [A,B,C] = convType(L,a,b,c,alpha,beta,gamma) %L is lattice type and u is input vector
if L==0
    b=a;
    c=a;
    alpha=90;
    beta=90;
    gamma=90;
end
if L==1
    b=a;
    c=a;
    beta=alpha;
    gamma=alpha;
end
if L==2
    c=a;
    alpha=90;
    beta=90;
    gamma=90;
end
if L==3
    alpha=90;
    beta=90;
    gamma=90;
end
if L==4
    alpha=90;
    gamma=90;
end
M=[a,b.*cos((1/180).*gamma.*pi),c.*cos((1/180).*beta.*pi);0,b.*sin(( ...
  1/180).*gamma.*pi),(c.*cos((1/180).*alpha.*pi)+(-1).*c.*cos(( ...
  1/180).*beta.*pi).*cos((1/180).*gamma.*pi)).*csc((1/180).*gamma.* ...
  pi);0,0,(c.^2+(-1).*c.^2.*cos((1/180).*beta.*pi).^2+(-1).*(c.*cos( ...
  (1/180).*alpha.*pi)+(-1).*c.*cos((1/180).*beta.*pi).*cos((1/180).* ...
  gamma.*pi)).^2.*csc((1/180).*gamma.*pi).^2).^(1/2)];
A=M(:,1)';
B=M(:,2)';
C=M(:,3)';
end