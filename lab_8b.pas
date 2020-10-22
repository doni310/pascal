program lab8_b;
const
glass=['A','E','I','O','U','Y'];

var 
s: array of string; {массив слов} 
n,j,count,count_max,count_min:integer; 
str,slovo_max,slovo_min:string;

begin
count_min:=80;
// Заполнение массива словами 
writeln('!!!Символами могут быть только заглавные латинские буквы!!!');
writeln('Введите колличество слов в масиве:'); readln(n);
writeln('Введите слова: ');
SetLength(s,n);
for var i:=0 to s.Length-1 do
  readln(s[i]);
writeln('Массив1',s);

// Нахождение мин и макс количества гласных в словах
for var i:=0 to s.Length-1 do begin
  str:=s[i];
  for j:=1 to length(str) do 
    if str[j] in glass then 
      count:=count+1;
  if count > count_max then begin
    count_max:=count;
    slovo_max:=s[i]
    end;
  if count < count_min then begin
    count_min:=count;
    slovo_min:=s[i];
    end;
  count:=0
end;

// Перестановка минимальных и максимальных
for var i:=0 to s.Length-1 do begin
  str:=s[i];
  for j:=1 to length(str) do 
    if str[j] in glass then 
      count:=count+1;
  if count_min = count_max then
    break;
  if count = count_min then
    s[i] := slovo_max;
  if count = count_max then
    s[i] := slovo_min;
  count:=0
end;

writeln('Массив2',s);
end.
