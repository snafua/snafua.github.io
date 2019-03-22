create procedure -- JLD
"_SWA"."MaintenanceCanComplete"( 
  in @RowIds long varchar ) 
result( 
  "ValidationMessage" char(256),
  "AllowCompletion" bit ) 
begin
  /*
2018-03-28 JLD E-03930 B-17233
*/
  call "SWA"."MaintenanceCanComplete"(@RowIds)
end