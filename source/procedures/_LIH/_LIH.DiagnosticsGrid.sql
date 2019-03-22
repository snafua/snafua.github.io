create procedure "_LIH"."DiagnosticsGrid"( 
  in @RowId char(512) ) 
result( 
  "Name" char(128),
  "Value" char(128) ) 
begin
  call "LIH"."DiagnosticsGrid"(@RowId)
end