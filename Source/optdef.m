function s= optdef(Q,Fi,G)
x=[];
for i=1:size(Q)
    x(i,:)=reshape(pdec(G*reshape(Q(i,:),[3,3])*Fi),[1,9]);
end
s = unique(round(x,8), 'rows');