create procedure --JLD
"_SWA"."MaintenancesCompleted"( 
  in @ApplicationId integer,
  in @RowIds long varchar ) 
result( 
  "CompletionDate" char(10),
  "ActualHours" char(10),
  "ItemComments" long varchar,
  "MeteredMaintenanceInterval" char(25),
  "CompletionDatePermissions" integer,
  "ActualHoursPermissions" integer,
  "ItemCommentsPermissions" integer,
  "MeteredMaintenanceIntervalPermissions" integer,
  "SpecialTestPermissions" integer,
  "AttachmentPermissions" integer,
  "MeteredMaintenanceIntervalRequired" bit,
  "MeterHistoryPermissions" integer ) 
begin
  /*
2018-06-06 JLD E-03929 B-17231 Added Edit Button Permission and Updated Permission logic for Meter Maintenance
*/
  declare @UserId integer;
  set @UserId = "SWA"."UserId"();
  call "SWA"."MaintenancesCompleted"(@ApplicationId,@RowIds,@UserId)
end