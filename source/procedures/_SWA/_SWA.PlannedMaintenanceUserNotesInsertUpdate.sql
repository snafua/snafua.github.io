create procedure "_SWA"."PlannedMaintenanceUserNotesInsertUpdate"( 
  in @RowId char(1024),
  in @MaintenanceUserNotes long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @MaintenanceUserNotes = "ECO"."CheckNull"(@MaintenanceUserNotes);
  call "SWA"."PlannedMaintenanceUserNotesInsertUpdate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MaintenanceUserNotes)
end