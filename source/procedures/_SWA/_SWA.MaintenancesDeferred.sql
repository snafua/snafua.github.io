create procedure -- JLD
"_SWA"."MaintenancesDeferred"( 
  in @ApplicationId integer,
  in @RowIds long varchar ) 
result( 
  "DeferralDate" char(10),
  "AvailabilityId" integer,
  "AvailabilityDescription" char(128),
  "ItemComments" long varchar,
  "DeferralReason" char(50),
  "DeferralPermissions" integer,
  "ItemCommentsPermissions" integer,
  "DeferralReasonPermissions" integer,
  "AttachmentPermissions" integer,
  "MeteredMaintenanceInterval" char(15),
  "MeteredMaintenanceIntervalPermissions" integer,
  "MeteredMaintenanceIntervalRequired" bit,
  "MeterHistoryPermissions" integer ) 
begin
  /*
2016-09-28 RJM Added Maintenance Interval columns
2018-06-06 JLD E-03929 B-17231 Added Edit Button Permission and Updated Permission logic for Meter Maintenance
*/
  declare @UserId integer;
  set @UserId = "SWA"."UserId"();
  call "SWA"."MaintenancesDeferred"(@ApplicationId,@RowIds,@UserId)
end