function y=bolzano(fun,a,b,epsilon,maxdeep)
  disp("      K               a                b                 c            F(a)            F(c)             F(b)");
  k=0;
  fx = inline(fun,'x');
  R = [];
  do
    c = (a+b)/2;
    ans = [fx(a) fx(b) fx(c)];
    if(ans(1)*ans(2) >0)
      c=0;
      break
    endif
    k=k+1;
    R = vertcat(R,[k a c b ans(1) ans(3) ans(2)]);
    if(ans(1)*ans(3) <0)
      b = c;
    else
      a = c;
    endif
  until(abs(ans(3))<epsilon || k==maxdeep)  
  disp(R);
  y =c;
endfunction
