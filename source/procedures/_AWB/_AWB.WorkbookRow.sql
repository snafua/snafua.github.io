create procedure -- JHM - E-03725, E-03457
"_AWB"."WorkbookRow"( 
  in @ApplicationId integer,
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselName" char(80),
  "TaskId" char(25),
  "EquipmentDescription" char(80),
  "Title" char(50),
  "Scheduled" date,
  "EstimatedManHours" numeric(10,2),
  "ActualManHours" numeric(10,2),
  "TaskStatus" char(20),
  "Billet" char(240),
  "Frequency" char(50),
  "LastCompleted" date,
  "Criticality" char(20),
  "HasAttachments" bit,
  "VesselId" integer,
  "EquipmentId" integer,
  "MachineryHistoryId" integer,
  "ItemType" char(20),
  "TestsRequired" char(1024),
  "CompletePermissions" integer,
  "DeferPermissions" integer,
  "ResetPermissions" integer,
  "UncompletePermissions" integer,
  "BilletPermissions" integer,
  "ItemPermissions" integer,
  "DeferralCount" integer,
  "BilletId" integer,
  "HistoryPermissions" integer,
  "BilletNodeId" char(1024),
  "SchedulerPermissions" integer,
  "RepairPermissions" integer ) 
begin
  /*
2016-08-31 RJM CHanged Uncomplete to "Reset"
2017-05-26 RJM Added BilletNodeId
2017-10-19 RJM Added SchedulerPermissions
2018-01-11 RJM Added RepairPermissions
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @MachineryHistoryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  call "AWB"."WorkbookRow"(@ApplicationId,@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId)
end