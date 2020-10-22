Program lab_1;
var x,a,b,c,d,otvet: real;
begin
  write('Введите x: '); readln(x); 
  a := x*x*sqrt(x);
  b := x*cos(x/2)*cos(x/2);
  c := abs(1+exp(ln(x)));
  d := sqrt(sqrt(2*sqrt(c)));
  otvet := (a-b)/d;
  writeln('Ответ: ',otvet);
end.