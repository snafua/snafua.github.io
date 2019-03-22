create procedure "_SEAS"."VibrationStandardEquipmentMeasurementPointsLoad"( in @StandardEquipmentId integer,
  in @Sort long varchar default null ) 
result( "SensorOrientation" char(3),"MeasurementPointDescription" char(50),"MeasurementPointLocationId" integer ) 
begin
  call "SEAS"."VibrationStandardEquipmentMeasurementPointsLoad"(@StandardEquipmentId,@Sort)
end