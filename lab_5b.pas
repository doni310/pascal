Program lab_5b;
var
a,b,c:array[1..7, 1..3] of integer;
i, j, max, min :integer;
begin
randomize;
for i:=1 to 7 do 
  for j:=1 to 3 do begin
    a[i,j]:=random(20)-10;
    b[i,j]:=random(20)-10;
    c[i,j]:=a[i,j]+b[i,j];
  end;
writeln('   Матрица А        Матрица B        Матрица C');
for i:=1 to 7 do begin
  for j:=1 to 3 do
    write(a[i,j]:4);
  write('     ');
  for j:=1 to 3 do
    write(b[i,j]:4);
  write('     ');
  for j:=1 to 3 do
    write(c[i,j]:4);
  writeln();
end;
max:=c[1,1];
min:=c[1,1];
for i:=1 to 7 do begin
  for j:=1 to 3 do begin
    if c[i,j]>max then 
      max:=c[i,j];
    if c[i,j]<min then 
      min:=c[i,j];
  end;
end;
writeln();
writeln ('Минимальное: ',min);
writeln ('Максимальное: ',max);
writeln();
for i:=1 to 7 do begin
  for j:=1 to 3 do begin
    if c[i,j]=min then begin
      c[i,j]:=max;
      continue
    end;
    if c[i,j]=max then begin
      c[i,j]:=min;
      continue
      end;
  end;
end;
writeln('Измен. Матрица C');
for i:=1 to 7 do begin
  for j:=1 to 3 do
    write(c[i,j]:4);
    writeln;
end;
end.
