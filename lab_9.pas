const
znaki=[',','.','!','?',';',':','"','-','(',')',' '];
var
str:string;
i,count,count_min:integer;
begin
count_min:=32767;
writeln('Введите строку:'); readln(str);
for i:=1 to length(str) do begin
  if not(str[i] in znaki) then begin
    count:=count+1;
    continue
  end;
  if (count < count_min) and (count <> 0) then
    count_min:= count;
  count:=0;
end;
writeln('Длина самого короткого слова: ',count_min);
end.