begin
  var fact: integer;
  var res, sum: real;
  
  for var i:=1 to 10 do
  begin
    fact := 1;
    
    for var j:=2 to i do
      fact *= j;
    
    sum += fact / (3 * exp(i * log(i)) );
  end;
  
  writeln(sum);
end.