create procedure --RJM
"_CMS"."ConditionMonitoringRow"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselId" smallint,
  "EquipmentId" integer,
  "VesselName" char(80),
  "TaskCode" char(25),
  "EquipmentName" char(80),
  "Criticality" char(20),
  "TestType" char(20),
  "TestDate" date,
  "AnalysisTimestamp" date,
  "PriorityStatus" char(20),
  "PriorityStatusDisplayText" char(20),
  "PriorityStatusDisplayHex" char(20),
  "MaintenanceProcedureTitle" char(50),
  "HasAttachments" bit,
  "HasMachineryHistory" bit,
  "HasWorkRequest" bit,
  "HasRelatedItems" bit,
  "TestResultPermission" integer,
  "EquipmentSystemId" integer,
  "EquipmentClassificationId" integer ) 
begin
  /*
2018-06-15 RJM E-04294 B-18300
*/
  declare @ApplicationId integer;
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @TestResultId integer;
  declare @UserId integer;
  set @RowId = "ECO"."CheckNull"(@RowId);
  set @ApplicationId = "CMS"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  if(@RowId is not null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
    set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId')
  end if;
  call "CMS"."ConditionMonitoringRow"(@RowId,@VesselId,@EquipmentId,@TestResultId)
end