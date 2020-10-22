type
  table = record
    FIO:string[20];
    FAK:string[5];
    GRP:string[6];
    YER:1900..2020;
    end;
var
  spisok:array of table;
  n,i:byte;
begin
  write('Введите число записей в списке n = '); readln(n);
  SetLength(spisok,n);
  writeln('Введите список по полям - каждое поле с новой строки');
	for i:=0 to n-1 do
    with spisok[i] do
      begin
      write(' Ф.И.О - 20 символов:  ');readln(FIO);
      write(' Факультет - 5 символов : ');readln(FAK);
      write(' Группа - 6 символов:  ');readln(GRP);   
      write(' Год рождения - от 1900 до 2020:  ');readln(YER);
      writeln();
	    end;
  writeln(spisok);
  for i:=0 to n-1 do
		with spisok[i] do
		  if (GRP = '15ВИ1') and (YER = 1998) then
        writeln(FIO,' ',FAK,' ',GRP,' ',YER);
end.
