create procedure "_SWA"."Diagnostics"( 
  in @ApplicationId integer,
  in @RowId char(1024) ) 
result( 
  "DiagnosticName" char(128),
  "DiagnosticValue" long varchar ) 
begin
  call "SWA"."Diagnostics"(@ApplicationId,@RowId)
end