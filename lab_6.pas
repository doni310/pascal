type
   mat= array [1..10, 1..10] of integer;

var 
  cd:mat; count,n,k,h,k8,s8,k10,s10,i:integer;
  z:array of real;

function matrix(size:integer):mat;
{Функция создает и возвращаетс квадратную матрицу порядка size} 
  var 
   a:mat;
   i,j:integer;
  begin
    randomize;
    for i:=1 to size do
    for j:=1 to size do
      a[i,j]:=random(20)-10;
    matrix:=a;
  end;

procedure P(size:integer;var k,s:integer);
{Процедура находит колличество и сумму отрицательных 
 элементов квадратной матрицы порядка-size,стоящих под главной диагональю}
begin
  cd:=matrix(size);
  for i:integer:=2 to size do begin
  for j:integer:=1 to i-1 do
    if cd[i,j] < 0 then
      begin
      k:=k+1;
      s:=s+cd[i,j];
      end;
  end;
end;
 
begin
P(10,k10,s10);  {Матрица D}
P(8,k8,s8);     {Матрица С}
write('Введите начальное значение(n): ');read(n);
write('Введите конечное значние(k): ');read(k);
write('Введите значение шага(h): ');read(h);
count:=trunc((k-n)/h);
z:=new real[count+1];
writeln('Таблица значений функции Z:');
for i:=0 to count do begin
  z[i]:=(s10*s8)/(k10+k8)/n;
  if n=0 then
    writeln('Не существует  При х = 0')
  else writeln(z[i],'  При х = ',n);
  if (n+h<=k) and (h>0) or (n+h>=k) and (h<0) then
    n:=n+h;
end;
end.

