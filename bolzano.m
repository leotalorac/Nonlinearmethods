function y=bolzano(fun,a,b,epsilon,k)
  if(k ==0)
    disp("    K         a          b          c        F(a)       F(c)      F(b)")
  endif
  fx = inline(fun,'x');
  c = (a+b)/2;
  fa = fx(a);
  fb = fx(b);
  fc = fx(c);
  R = [k a c b fa fc fb];
  disp(R);
  k=k+1;
  if(abs(fc)<epsilon)
    y=c;
  elseif(fa*fc < 0)
    y =(bolzano(fun,a,c,epsilon,k));
  else
    y =(bolzano(fun,c,b,epsilon,k));
  endif
endfunction
