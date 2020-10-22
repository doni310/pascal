type
  table = record
    FIO:string[30];
    STR:string[20];
    HOU:string[4];
    APA:string[4];
    end;
var
  spisok:array of table;
  count,n,i:byte;
begin
  write('Введите число записей в списке n = '); readln(n);
  SetLength(spisok,n);
  writeln('Введите список по полям - каждое поле с новой строки');
	for i:=0 to n-1 do
    with spisok[i] do
      begin
      write(' Ф.И.О - 30 символов:  ');readln(FIO);
      write(' Улица - 20 символов : ');readln(STR);
      write(' Дом - 4 символов:  ');readln(HOU);   
      write(' Квартира - 4 символа:  ');readln(APA);
      writeln();
	    end;
	writeln('Список студентов проживающих в доме номер 45:');
  for i:=0 to n-1 do
		with spisok[i] do begin
		  if HOU = '45' then
        writeln(FIO,' ',STR,' ',HOU,' ',APA);
      if STR = 'Свердлова' then
        count:=count+1;
    end;
  writeln('Число студентов живущих на улице Свердлова: ',count);
end.
