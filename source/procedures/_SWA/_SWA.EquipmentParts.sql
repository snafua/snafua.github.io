create procedure "_SWA"."EquipmentParts"( 
  in @RowId char(1024),
  in @ApplicationId integer ) 
result( 
  "RowId" char(1024),
  "EquipmentDescription" char(80),
  "PartDescription" char(50),
  "PartNumber" char(50),
  "NavyStockNumber" char(25),
  "Quantity" integer ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  if(@MaintenanceProcedureId is not null) then
    call "SWA"."EquipmentPartsMaint"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
  elseif(@WorkRequestId is not null) then
    call "SWA"."EquipmentPartsRepair"(@VesselId,@WorkRequestId)
  end if
end