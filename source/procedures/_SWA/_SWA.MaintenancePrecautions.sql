create procedure "_SWA"."MaintenancePrecautions"( 
  in @ApplicationId integer default null,
  in @RowId char(1024) ) 
result( 
  "MaintenancePrecautionId" integer,
  "MaintenancePrecautionTitle" char(80),
  "MaintenancePrecaution" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  if @VesselId is not null and @EquipmentId is not null and @MaintenanceProcedureId is not null then
    call "SWA"."MaintenancePrecautions"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
  end if
end