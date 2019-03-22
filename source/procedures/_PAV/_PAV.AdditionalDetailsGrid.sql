create procedure "_PAV"."AdditionalDetailsGrid"( 
  in @RowId char(1024) ) 
result( 
  "Name" char(128),
  "Value" char(128) ) 
begin
  call "PAV"."AdditionalDetailsGrid"(@RowId)
end