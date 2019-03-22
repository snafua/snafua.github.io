create procedure --JLD
"_ACM"."RepairCompletionMaintenanceAvailable"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "MCode" char(50),
  "MaintenanceProcedureTitle" char(50),
  "MaintenanceCompletionDate" timestamp,
  "MaintenanceScheduleDate" timestamp,
  "ProgramName" char(20) ) 
begin
  /*
2018-05-07 JLD E-03377 B-17750
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "ACM"."RepairCompletionMaintenanceAvailable"(@VesselId,@WorkRequestId)
end