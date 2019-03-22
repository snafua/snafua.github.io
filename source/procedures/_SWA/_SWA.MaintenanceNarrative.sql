create procedure "_SWA"."MaintenanceNarrative"( 
  in @ApplicationId integer,
  in @RowId char(1024) ) 
result( 
  "Narrative" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @Narrative long varchar;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @Narrative = "SWA"."MaintenanceNarrative"(@VesselId,@EquipmentId,@MaintenanceProcedureId);
  select @Narrative as "Narrative"
    from "DUMMY"
end