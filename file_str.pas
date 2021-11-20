begin
  var f: text;
  var strOfValues: string;
  var bufer: string; // элементы до пробела
  var sum: integer;

  
  assign(f, 'C:/PascalInput/input.txt');
  reset(f);

  readln(f, strOfValues); // f - файловая переменная, strOfValues - строка данных
  
  strOfValues += ' ';

  for var i := 1 to length(strOfValues) do
    if(strOfValues[i] <> ' ') then
    begin
      writeln('START: bufer: ', bufer, ' strOfValues[i]: ', strOfValues[i]);
      bufer += strOfValues[i];
      writeln('END: bufer: ', bufer, ' strOfValues[i]: ', strOfValues[i], newline);
    end
 
    else
    begin
      sum += bufer.toInteger();
      bufer := '';
    end;
    
    
  write(sum/10);
  close(f);
end.