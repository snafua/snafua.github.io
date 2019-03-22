create procedure "_APM"."MaintenanceRows"( 
  in @ApplicationId integer,
  in @RowId char(1024),
  in @MaintenanceProcedureNodeId char(1024) default null ) 
result( 
  "RowId" char(1024),
  "MaintenanceProcedureNodeId" char(1024),
  "MachineryHistoryId" integer,
  "VesselName" char(80),
  "VesselId" integer,
  "EquipmentName" char(80),
  "EquipmentId" integer,
  "EqStat" char(10),
  "Criticality" char(2),
  "TaskCode" char(25),
  "ProcedureTitle" char(50),
  "OpStat" char(10),
  "Billet" char(240),
  "Frequency" char(50),
  "CompletionDate" date,
  "LastAction" char(10),
  "ScheduleDate" date,
  "Permission" tinyint,
  "HasAttachments" bit,
  "ItemType" char(15),
  "BilletId" integer,
  "SpecialTestRequired" bit,
  "CompletePermissions" integer,
  "DeferPermissions" integer,
  "UncompletePermissions" integer,
  "ResetPermissions" integer,
  "HistoryPermissions" integer,
  "OnSchedule" char(3) ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @OperationalStatusId integer;
  declare @UserId integer;
  declare @OrderBy long varchar;
  set @UserId = "SWA"."UserId"();
  set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy');
  set @VesselId = "SWA"."KeyValuePairParse"("ISNULL"(@MaintenanceProcedureNodeId,@RowId),'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"("ISNULL"(@MaintenanceProcedureNodeId,@RowId),'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"("ISNULL"(@MaintenanceProcedureNodeId,@RowId),'MaintenanceProcedureId');
  set @OperationalStatusId = "SWA"."KeyValuePairParse"(@RowId,'OperationalStatusId');
  call "APM"."MaintenanceRows"(@ApplicationId,@VesselId,@EquipmentId,@MaintenanceProcedureId,@OperationalStatusId,@UserId,@OrderBy)
end