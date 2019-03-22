create procedure "_APM"."PlannedMaintenanceUserNotes"( 
  in @RowId char(1024) ) 
result( 
  "PlannedMaintenanceUserNotes" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "APM"."PlannedMaintenanceUserNotes"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
end