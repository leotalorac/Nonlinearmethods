function y=bolzano(fun,a,b,epsilon,maxdeep)
  disp("    K         a          b          c        F(a)       F(c)      F(b)");
  k=0;
  fx = inline(fun,'x');
  R = [];
  do
    c = (a+b)/2;
    fc = fx(c);
    fa = fx(a);
    fb = fx(b);  
    if(fa*fb >0)
      break
    endif
    k=k+1;
    fc = fx(c);
    R = vertcat(R,[k a c b fa fc fb]);
    if(fa*fc <0)
      a = a;
      b = c;
    else
      a = c;
      b = b;
    endif
  until(abs(fc)<epsilon || k==maxdeep)  
  disp(R);
  y =c;
endfunction
