create procedure "_LIT"."ItemTypes"()
result( 
  "Name" char(25),
  "Value" char(25),
  "IsSelected" bit ) 
begin
  call "LIT"."ItemTypes"()
end