Program task1_18_11_21;
var s,slovo: string;
var mgl: set of char;
x, i, a, k: integer;
m:array of string;
begin
readln(s);
s := s+' ';

setlength(m,1);
slovo := ' ';
k := 0;
for i := 1 to length(s) do
  if s[i]<>' ' then slovo := slovo+s[i]
  else
  begin
    m[k] := slovo;
    slovo := ' ';
    k := k+1;
    setlength(m,k+1);
  end;
  
  
var charOfWord: set of char; //множество букв слова
var mask: set of 'a'..'z';

for i := 1 to length(m[0])  do
  mask := mask + [m[0][i]];

for i := 1 to k-1 do
  begin
    charOfWord := [];
    for var j := 1 to length(m[i]) do
     charOfWord := charOfWord + [m[i][j]];
  
 mask := mask - charOfWord;
end;

for var q: char := 'a' to 'z' do
  if (q in mask) then write(q);
  
end.