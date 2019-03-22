create procedure "_SWA"."EquipmentNameplateData"( 
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "NamePlate" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  call "SMH"."EquipmentNameplateData"(@VesselId,@EquipmentId)
end