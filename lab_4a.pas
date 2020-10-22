Program lab_4a;
const n=60;
var
a:array[1..60] of integer;
i, j, c: integer;
begin
randomize;
for i:=1 to n do 
  a[i]:=random(100)-50;
for i:=1 to n-1 do
  for j:=i+1 to n do
    if a[i]>a[j] then
    begin
      c:=a[i];
      a[i]:=a[j];
      a[j]:=c;
    end;
for i:=1 to n do
  write(a[i],'  ');
end.
