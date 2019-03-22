create procedure "_LIT"."MaintenanceItemsPartsRemove"( 
  in @PartRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @VesselClassId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @PartId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@PartRowId,'VesselId');
  set @VesselClassId = "SWA"."KeyValuePairParse"(@PartRowId,'VesselClassId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@PartRowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@PartRowId,'MaintenanceProcedureId');
  set @PartId = "SWA"."KeyValuePairParse"(@PartRowId,'PartId');
  if @VesselClassId is null then
    set @VesselClassId = "SWA"."VesselClassId"(@VesselId)
  end if;
  call "LIT"."MaintenanceItemsPartsRemove"(@VesselClassId,@EquipmentId,@MaintenanceProcedureId,@PartId)
end