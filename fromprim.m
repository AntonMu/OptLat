function [a,b,c] = fromprim(x,u,v,w) %converts primitive P to C=1, I=2, F=3
if ~(isvector(u) & isvector(v) & isvector(w))  
    error('Input must be a vector')
end
if ~(x<=3 & x>=0)  
    error('x must either be 0,1,2,3')
end
if x==0
    a=u;
    b=v;
    c=w;
end
if x==1 %C
    a=(u+v);
    b=(u-v);
    c=w;
end
if x==2 %I
    a=(v+w);
    b= (u+w);
    c=(u+v);
end
if x==3 %F
    a=(u-v+w);
    b= (u+v-w);
    c=(-u+v+w);
end
end

