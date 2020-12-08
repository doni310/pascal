UNIT modul_a;
INTERFACE 
Procedure INPUT_A;
Procedure OUTPUT_A;
type
  table = record
    FIO:string[17];
    FAK:string[3];
    GRP:string[6];
    YER:string[4];
    end;
var
  c:char;
  slovo:string;
  spis : text;
  TAB:array of table;
  count,j,i,kol_zap:byte;
IMPLEMENTATION

procedure INPUT_A();
begin
assign (spis, 'C:\pascal\spis.txt');
reset (spis);
readln(spis);
SetLength(TAB,1);
  while not Eof(spis) do begin
    read(spis,c);
    if c <> ' ' then
      slovo:=slovo+c
    else begin
    count:=count+1;
    with TAB[i] do begin
      if count = 1 then
        FIO:=slovo;
      if count = 2 then
        FAK:=slovo;
      if count = 3 then
        GRP:=slovo;
      if count = 4 then begin
        YER:=slovo;
        count:=0;
        i:=i+1;
        SetLength(TAB,i+1);
      end;
      slovo:='';
    end;
    end;
  end;
kol_zap:=i;
close(spis);
end;
procedure OUTPUT_A; //процедура вывода на экран
  var i:integer;
  begin
  writeln('ФИО                Факультет   Группа   Год рождения');
  for i:=0 to kol_zap do begin
      with TAB[i] do  begin
      write(FIO);
      write('       '+FAK);
      write('       '+GRP);
      write('       '+YER);
      writeln();
      end; 
      end;
  end;
END.