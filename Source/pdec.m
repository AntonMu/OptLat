function U = pdec(A)
[P, S, Q] = svd(A, 0); 
U = Q*S*Q';