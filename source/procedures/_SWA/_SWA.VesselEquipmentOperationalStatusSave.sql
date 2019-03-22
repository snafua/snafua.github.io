create procedure "_SWA"."VesselEquipmentOperationalStatusSave"( 
  in @VesselId char(1024),
  in @NodeId char(1024),
  in @OperationalStatusId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @EquipmentId integer;
  declare @VesselIdInt integer;
  set @EquipmentId = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentId');
  if "ISNUMERIC"(@VesselId) = 1 then
    set @VesselIdInt = @VesselId
  else
    set @VesselIdInt = "SWA"."KeyValuePairParse"(@VesselId,'VesselId')
  end if;
  call "SWA"."VesselEquipmentOperationalStatusSave"(@VesselIdInt,@EquipmentId,@OperationalStatusId)
end