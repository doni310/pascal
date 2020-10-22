Program lab_5a;
var
a:array[1..6, 1..8] of integer;
i, j, p, o: integer;
begin
randomize;
for i:=1 to 6 do
  for j:=1 to 8 do
    a[i,j]:=random(1000)-100;
writeln('Матрица А:');
for i:=1 to 6 do begin
  for j:=1 to 8 do
    write(a[i,j]:5);
    writeln;
end;
for i:=1 to 6 do
  for j:=1 to 8 do begin
    if a[i,j]>0 then
      p:=p+1;
    if a[i,j]<0 then
      o:=o+1;
  end;
writeln('Кол-во положительных элементов: ', p);
writeln('Кол-во отрицательных элементов: ', o);
if o>p then
writeln('Кол-во отрицательных больше на: ', o-p);
if p>o then
writeln('Кол-во положительных больше на: ', p-o);
if p=o then
writeln('Кол-во положительных и отрицательных элементов равно');
end. 
