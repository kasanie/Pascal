Var  c, b, x, y, f: Real;
Begin
  randomize;
  b:=random;{ввод данных 1 способ}
  Write('введите целое число x:'); {ввод данных 2 способ}
  Read(x);
  Write('введите целое число y:');
  Read(y);
  c:=arctan(x)-3/exp(x*y)+0.5*(abs(x+y)/exp(b*ln(x+y)));
  WriteLn ('c=', c:0:4); {вывод  результата}
    if (0.5<=x*y) and (x*y<1.0) then f:=abs(x)-abs(y)
    else if (0.1<x*y) and (x*y<0.5) then f:=x+y
    else if (1.0<=x*y) and (x*y<2.5) then f:=2*x
    else  f:=0;
  WriteLn ('f=', f:0:4);
End.