create procedure "_LIT"."DiagnosticsGrid"( 
  in @RowId char(512) ) 
result( 
  "Name" char(128),
  "Value" char(128) ) 
begin
  call "LIT"."DiagnosticsGrid"(@RowId)
end