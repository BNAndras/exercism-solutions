unit Darts;

{$mode ObjFPC}{$H+}

interface

function score(const x : single; const y : single) : uint8;

var
  hypot: single;
  value: uint8;

implementation

uses SysUtils;

function score(const x : single; const y : single) : uint8;
begin

hypot :=  sqrt(x * x + y * y);
if hypot <=  1
  then 
  result := 10
  else if hypot <= 5
  then
  result :=  5
  else if hypot <= 10
  then 
  result := 1
 else
 result := 0;
end;

end.
