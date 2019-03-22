create procedure "_SEAS"."VesselEquipmentClassificationsLoad"( in @VesselId smallint,in @EquipmentSystemId integer ) 
result( "EquipmentClassificationId" integer,"EquipmentClassificationDescription" char(50) ) 
begin
  call "SEAS"."VesselEquipmentClassificationsLoad"(@VesselId,@EquipmentSystemId)
end