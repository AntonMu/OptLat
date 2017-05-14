function bound=anbound(s,xx,yy,zz,xx2,yy2,zz2)
F=[xx;yy;zz]';
G=[xx2;yy2;zz2]';
m0s=norm(((svd(G*inv(F))).^s)-[1,1,1]');
if s>0
    mu=(((max([norm(xx),norm(yy),norm(zz)])).^s)*(m0s+1)/((min(svd(G)))^s))^(1/s);
elseif s<0
    mu=(((max([norm(xx2),norm(yy2),norm(zz2)])).^(-s))*(m0s+1)/((min(svd(F)))^(-s)))^(-1/s);
end
bound=floor(round((mu^2-1)^(1/2),5));
end
% Something is wrong with negative powers!!! It shows a bound that is too small        