create procedure "_SPM"."QuickEditLoad"( 
  in @RowIds long varchar ) 
result( 
  "Field" char(256),
  "Name" char(256),
  "Value" char(256),
  "Enabled" bit,
  "Required" bit ) 
begin
  call "SPM"."QuickEditLoad"(@RowIds)
end