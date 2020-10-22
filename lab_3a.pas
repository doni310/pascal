Program lab_3a;
var x, y, h: real; i: integer;
begin
h := pi/6;
y := x+1+sin(x-1);
for i := 0 to 24 do begin
{while x <= 4*pi do begin}
{repeat;}
  writeln('y = ',y);
  writeln('x = ',x);
  writeln;
  x := x+h;
  y := x+1+sin(x-1);
end; {удалить строку если
		  через repeat}
{until x > 4*pi;}
end.
