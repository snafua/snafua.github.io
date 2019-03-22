create procedure "_TAE"."AdditionalDetailsGrid"( 
  in @RowId char(1024) ) 
result( 
  "Name" char(25),
  "Value" char(128) ) 
begin
  call "TAE"."AdditionalDetailsGrid"(@RowId)
end