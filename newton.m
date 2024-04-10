function fv = f (x)
  fv=x.^5+3*x.^2-5*x+2;
endfunction

function dfv = df (x)
  dfv=5*x^4+6*x-5;
endfunction

function newton(xo,Niter,tol)
  disp("")
  disp ("Output for the Newton method")
  disp("")
  disp ("           n          x          err        f(x)")
  for i=1:Niter
    x=xo-f(xo)/df(xo);
    if (f(xo)==0 |abs(x-xo)<tol)
      disp("")
      disp ("The method completed successfully!")
      disp("")
      return;
    else
      epsilon=abs(x-xo);
      disp ([i-1, xo, epsilon, f(xo)]);
      xo=x;
    endif
  endfor
  disp("")
  disp ("The method failed after (Niter)")
  disp (Niter)
  disp ("iterations")
  disp("")
endfunction


newton(-10,40,0.0000001)