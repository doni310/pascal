Program lab_4b;
var
a: array[1..12] of integer;
i,o,max:integer;
begin
randomize;
max:=a[1];
for i:=1 to 12 do
  a[i]:=random(10000001)-5000000;
for i:=1 to 12 do begin
  if a[i]<0 then
    o:=o+1;
  if a[i]>max then 
    max:=a[i];
  end;
writeln('Число подразделений с отрицательным балансом ', o);
for i:=1 to 12 do 
  if max = a[i] then
    writeln('№ подразделения с максимальным балансом ', i);
end. 

