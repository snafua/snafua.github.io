create procedure "_SMH"."LubeOilMeasurementPointPropertiesLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "ItemType" char(10),
  "ItemName" char(25),
  "ItemValue" char(50) ) 
begin
  call "SMH"."LubeOilMeasurementPointPropertiesLoad"(@VesselId,@EquipmentId,@TestResultId)
end