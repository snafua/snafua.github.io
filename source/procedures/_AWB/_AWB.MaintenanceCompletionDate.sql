create procedure "_AWB"."MaintenanceCompletionDate"( 
  in @RowId char(512) ) 
result( 
  "LastCompleted" date ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  select "SWA"."MaintenanceStatusDate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,'Complete') as "LastCompleted"
end