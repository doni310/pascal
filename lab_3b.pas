Program lab_3b;
var x, y, M, k, h: real;
begin
write('Введите n: '); readln(x);
write('Введите k: '); readln(k);
write('Введите h: '); readln(h);
writeln;
M := exp(-x*x)*(1-(cos(3*x)/(sin(3*x))));
while x <= k do begin
  y := exp(-x*x)*(1-(cos(3*x)/(sin(3*x))));
  x := x+h;
  if  y > M then
    M := y; 
end;
if M > 0 then begin
  writeln('Максимальное значение функции положительно');
  exit;
end;
if M < 0 then
  writeln('Максимальное значение функции отрицательно')
else
  writeln('Максиамльное значение функции = 0');
end. 

