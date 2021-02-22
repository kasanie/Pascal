 uses crt;
 const arr_size=40;
 type arr=array [1..arr_size] of integer;
 var T:arr; 
 Procedure Transform(var a:arr);
  var i:integer;
  begin 
     for i:=1 to arr_size do
      if (a[i]<0) then a[i]:=a[i]+a[i]
      else a[i]:=0;
  end; 
 Function OddSum(b:arr):integer; 
  var i,sum:integer; 
  begin
    sum:=0;
    i:=1;
    while i<=arr_size do begin 
         sum:=sum+b[i];
         i:=i+2;
         end;
    OddSum:=sum;
  end; 
 var i:integer;
 Begin
    Randomize;
    writeln('Original array:');
    writeln;
    for i:=1 to arr_size do begin 
         T[i]:=Random(-23,23); 
         write(T[i]:4); 
    end; 
    Transform(T);
    writeln;
    writeln;
    writeln('Transformed array:');
    writeln;
    for i:=1 to arr_size do
         write(T[i]:4);
    writeln; 
    writeln; 
    write('Sum of odd array elements = ',OddSum(T)); 
    readln; 
End.