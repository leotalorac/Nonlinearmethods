function y=bolzano(fun,a,b,epsilon)
  disp("    K         a          b          c        F(a)       F(c)      F(b)");
  k=0;
  fx = inline(fun,'x');
  R = [];
  do
    c = (a+b)/2;
    fc = fx(c);
    fa = fx(a);
    fb = fx(b);
    k=k+1;
    c = (a+b)/2;
    fc = fx(c);
    R = vertcat(R,[k a c b fa fc fb]);
    if(fa*fc <0)
      a = a;
      b = c;
    else
      a = c;
      b = b;
    endif
  until(abs(fc)<epsilon)  
  disp(R);
  y =c;
endfunction
