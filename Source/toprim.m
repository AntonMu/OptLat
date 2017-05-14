function [u,v,w] = toprim(x,a,b,c) %converts C=1, I=2, F=3 to primitive P
if ~(isvector(a) & isvector(b) & isvector(c))  
    error('Input must be a vector')
end
if ~(x<=3 & x>=0)  
    error('x must either be 0,1,2,3')
end
if x==0
    u=a;
    v=b;
    w=c;
end
if x==1 %C
    u=1/2*(a-b);
    v= 1/2*(a+b);
    w=c;
end
if x==2 %I
    u=1/2*(-a+b+c);
    v= 1/2*(a-b+c);
    w=1/2*(a+b-c);
end
if x==3 %F
    u=1/2*(a+b);
    v= 1/2*(b+c);
    w=1/2*(a+c);
end
end

