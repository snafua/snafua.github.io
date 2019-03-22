create procedure "_LIT"."AdditionalDetailsGrid"( 
  in @RowId char(512) ) 
result( 
  "Name" char(128),
  "Value" char(128) ) 
begin
  call "LIT"."AdditionalDetailsGrid"(@RowId)
end