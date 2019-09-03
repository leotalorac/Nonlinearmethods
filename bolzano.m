function y=bolzano(fun,a,b,epsilon)
  fx = inline(fun,'x');
  c = (a+b)/2;
  fa = fx(a);
  fb = fx(b);
  fc = fx(c);
  if(abs(fc)<epsilon)
    y=c;
  elseif(fa*fc < 0)
    y =(bolzano(fun,a,c,epsilon));
  else
    y =(bolzano(fun,c,b,epsilon));
  endif
endfunction
