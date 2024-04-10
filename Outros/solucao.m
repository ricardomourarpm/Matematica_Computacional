function x=richardson(A)
  X0=eye(length(A));
  M=X0-A;
  for i=1:50
    X0=eye(length(A))+M*X0;
  endfor
  x=X0
endfunction