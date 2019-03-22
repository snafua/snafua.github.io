create procedure "_SPM"."DiagnosticsGrid"( 
  in @RowId char(1024) ) 
result( 
  "Name" char(128),
  "Value" char(128) ) 
begin
  call "SPM"."DiagnosticsGrid"(@RowId)
end