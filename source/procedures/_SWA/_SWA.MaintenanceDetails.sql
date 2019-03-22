create procedure --RJM
"_SWA"."MaintenanceDetails"( 
  in @ApplicationId integer,
  in @RowId char(1024) ) 
result( 
  "VesselName" char(80),
  "VesselId" integer,
  "VesselEquipmentDesc" char(80),
  "EquipmentNodeId" char(1024),
  "MaintenanceCode" char(4),
  "MaintenanceProcedureTitle" char(50),
  "MaintenanceProcedureId" integer,
  "BilletDescription" char(240),
  "BilletNodeId" char(1024),
  "MaintenanceEvent" char(1024),
  "MaintenanceEventId" char(1024),
  "MaintenanceEstimatedHours" numeric(6,2),
  "AttachmentsPermissions" integer,
  "EquipmentPermissions" integer,
  "EventsPermissions" integer,
  "BilletPermissions" integer,
  "MaintenancePartsPermissions" integer,
  "MaintenanceProcedurePermissions" integer,
  "MaintenanceSchedulePermissions" integer,
  "MaintenanceUserNotesPermissions" integer,
  "VesselPermissions" integer,
  "HistoryPermissions" integer,
  "SpecialTestRequired" bit,
  "CompletePermissions" integer,
  "DeferPermissions" integer,
  "ResetPermissions" integer,
  "EquipmentId" integer,
  "MachineryHistoryId" integer,
  "ItemType" char(15),
  "BilletId" integer,
  "MaintenanceReportType" char(1024),
  "MaintenanceReportId" char(1024),
  "RepairPermissions" integer ) 
begin
  /*
2016-06-15 RJM
2016-06-30 RJM Added HistoryPermissions
2017-02-01 RJM Added MaintenanceReportType, MaintenanceReportId to results for B-13095
2018-01-08 RJM Added RepairPermissions
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @OperationalStatusId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @OperationalStatusId = "SWA"."KeyValuePairParse"(@RowId,'OperationalStatusId');
  call "SWA"."MaintenanceDetails"(@ApplicationId,@VesselId,@EquipmentId,@MaintenanceProcedureId,@OperationalStatusId)
end