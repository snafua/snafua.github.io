create procedure "_SWA"."PlannedMaintenanceUnComplete"( 
  in @RowId long varchar ) 
result( 
  "RowId" long varchar,
  "TaskStatus" char(20),
  "Scheduled" date,
  "LastCompleted" date,
  "ActualManHours" numeric(10,2),
  "DeferralCount" integer,
  "CompletePermissions" integer,
  "DeferPermissions" integer,
  "UncompletePermissions" integer,
  "MaintenanceProcedureNodeId" char(1024) ) 
begin
  declare @ErrorMessage long varchar;
  declare @UserId integer;
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @MachineryHistoryId integer;
  declare @MachineryHistoryType char(15);
  declare @MaintenanceProcedureTitle char(50);
  declare @BilletId integer;
  set @UserId = "SWA"."UserId"();
  set @MachineryHistoryType = 'Maintenance';
  message "STRING"('Starting CALL SWA.PlannedMaintenanceUnComplete from _SWA.PlannedMaintenanceUnComplete, UserId = ',@UserId,', RowId = ',@RowId) type info to console;
  call "SWA"."PlannedMaintenanceUnComplete"(@RowId)
end