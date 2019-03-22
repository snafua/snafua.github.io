create procedure "_LIH"."AdditionalDetailsGrid"( 
  in @RowId char(512) ) 
result( 
  "Name" char(128),
  "Value" char(128) ) 
begin
  call "LIH"."AdditionalDetailsGrid"(@RowId)
end