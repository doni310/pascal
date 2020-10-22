var
autoinfo: text;
i: integer;
b,x: string;
begin
write('Введите искомую марку авто: ');
read(b); 
assign (autoinfo, 'D:\ПГУ\ОА и П\autoinfo.txt');
reset (autoinfo);
for i:=1 to 24 do begin
  readln (autoinfo, x);
  if b=x then begin
    readln (autoinfo, x); writeln(x);
  end;
end;
end.