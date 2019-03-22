create procedure "_SEAS"."LubeOilVesselSamplePoints"( in @VesselId smallint ) 
result( "VesselId" smallint,"EquipmentId" integer,"MeasurementPointId" integer,"MeasurementPointDescription" char(80) ) 
begin
  call "SEAS"."LubeOilVesselSamplePoints"(@VesselId)
end