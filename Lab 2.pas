var res, x: real;
begin
  res:=0; x:=0.15;
  repeat
    res:= res + x;
          writeln('S = ', res);
    x:= x + 0.02;
    res:= res - x;
          writeln('S = ', res);
    x:= x + 0.02;
  until x>=0.33;
end.