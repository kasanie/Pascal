const
  N= 5;
var
  F: Text;
  C: array[1..5, 1..N] of Longint;
  D: array[1..N] of Longint;
  I, J, ar: Longint;
  procedure Sum(x:integer);
  var
    Res, I: Longint;
  begin
    Res:= 0;
      ar:=0;
    for I:= 1 to 5 do
      if C[I, X] > 0 then
        Inc(Res, C[I, X]);
    ar:= Res;
  end;
begin
  assign(F, 'F, Vashchenko.txt');
  Rewrite(F);
  Writeln('C:');
  Writeln(F, 'C:');
  Randomize;
  for J:= 1 to N do begin
    for I:= 1 to 5 do begin
      C[I, J]:= Random(-100,100);
      Write(C[I, J]: 4);
      Write(F, C[I, J]: 4);
    end;
    Writeln;
    Writeln(F);
  end;
  Writeln('D:');
  Writeln(F, 'D:');
  for J:= 1 to N do begin
    Sum(J);
    D[J]:= ar;
    Write(D[J]: 4);
    Write(F, D[J]: 4);
  end;
  Close(F);
  Readln;          
end.