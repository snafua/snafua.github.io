create procedure "_APM"."PlannedMaintenanceNarrative"( 
  in @RowId char(1024) ) 
result( 
  "PlannedMaintenanceNarrative" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "APM"."PlannedMaintenanceNarrative"(@VesselId,@EquipmentId,@MaintenanceProcedureId,'HTML')
end