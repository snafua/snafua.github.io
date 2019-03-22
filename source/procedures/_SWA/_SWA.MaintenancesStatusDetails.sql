create procedure "_SWA"."MaintenancesStatusDetails"( 
  in @ApplicationId integer,
  in @RowIds long varchar ) 
result( 
  "Status" char(10),
  "DisabledMessage" char(256) ) 
begin
  call "SWA"."MaintenancesStatusDetails"(@ApplicationId,@RowIds)
end