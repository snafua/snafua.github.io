create procedure "_SPM"."AdditionalDetailsGrid"( 
  in @RowId char(512) ) 
result( 
  "Name" char(128),
  "Value" char(128) ) 
begin
  call "SPM"."AdditionalDetailsGrid"(@RowId)
end