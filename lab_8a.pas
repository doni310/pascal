const glasn = ['а','е','и','о',
               'у','ы','э','ю','я'];
var
  s:string;
  m:set of char;
  c:char;
  i:integer;
begin
  writeln('Введите непустую последовательность слов из строчных русских букв:');
  readln(s);
  m:=[];
  for i:=1 to length(s) do
    if s[i] in glasn  then include(m,s[i]);
  for c:='а' to 'я' do
    if c in m then write(c,',');
end.