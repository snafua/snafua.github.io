create procedure "_SWA"."MaintenanceStatusDetails"( 
  in @ApplicationId integer,
  in @RowIds long varchar ) 
result( 
  "Status" char(10),
  "DisabledMessage" char(256) ) 
begin
  call "SWA"."MaintenanceStatusDetails"(@ApplicationId,@RowIds)
end