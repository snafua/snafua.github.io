create procedure "_SWA"."MaintenanceSchedule"( 
  in @ApplicationId integer,
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "OperationalStatusCode" char(10),
  "OperationalStatusId" integer,
  "MaintenanceInterval" integer,
  "MaintenanceIntervalUnits" char(15),
  "MeteredMaintenanceInterval" integer,
  "MeteredMaintenanceIntervalUnits" char(15),
  "SchedulePermissions" integer ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @EqOperationalStatusId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @EqOperationalStatusId = "SWA"."KeyValuePairParse"(@RowId,'EqOperationalStatusId');
  call "SWA"."MaintenanceSchedule"(@ApplicationId,@VesselId,@EquipmentId,@MaintenanceProcedureId,@EqOperationalStatusId)
end