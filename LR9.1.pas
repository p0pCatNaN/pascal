function elmOfSeries(num: integer): real;
begin
  Result := exp(num*ln(num)) / ((1 + num)*(1 + num));
end;

begin
  var elm1,elm2,res:real;
  var count:integer;
  count := 1;
  elm1 := elmOfSeries(1);
  res := elm1;
  
  while abs(elm1 - elm2) > 0.001 do
  begin
    elm2 := elm1;
    count += 1;
    elm1 := elmOfSeries(count);
    res += elm1;
  end;
  
  writeln (res,' ',count);
end.