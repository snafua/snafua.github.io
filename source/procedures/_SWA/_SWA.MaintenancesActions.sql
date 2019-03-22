create procedure "_SWA"."MaintenancesActions"( 
  in @ApplicationId integer,
  in @RowIds long varchar ) 
result( 
  "Status" char(10),
  "Permissions" integer ) 
begin
  declare @UserId integer;
  set @UserId = "SWA"."UserId"();
  call "SWA"."MaintenancesActions"(@ApplicationId,@RowIds,@UserId)
end