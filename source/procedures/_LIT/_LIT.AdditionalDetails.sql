create procedure "_LIT"."AdditionalDetails"( 
  in @RowId char(512) ) 
result( 
  "Name" char(128),
  "Value" char(128) ) 
begin
  call "LIT"."AdditionalDetails"(@RowId)
end