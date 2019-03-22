create procedure "_SRM"."AdditionalDetailsGrid"( 
  in @RowId char(1024) ) 
result( 
  "Name" char(25),
  "Value" char(128) ) 
begin
  call "SRM"."AdditionalDetailsGrid"(@RowId)
end