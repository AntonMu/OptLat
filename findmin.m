function [m0,m1,Q]= findmin(r,B,Fi,G,prec)
x=[];
for i=1:size(B)
    x(i)=norm((svd(G*reshape(B(i,:),[3,3])*Fi).^r)-[1,1,1]');
end
ep=10^(-prec);
m0=min(x);
m1=min(x(x>m0+ep));
Q=B(find(x<m0+ep),:);