create procedure "_SWA"."MaintenancesStatuses"( 
  in @ApplicationId integer,
  in @RowIds long varchar ) 
result( 
  "Status" char(10),
  "Permissions" integer ) 
begin
  declare @UserId integer;
  set @UserId = "SWA"."UserId"();
  call "SWA"."MaintenancesStatuses"(@ApplicationId,@RowIds,@UserId)
end