create procedure "_SEAS"."VibrationStandardEquipmentMeasurementPointSetupLoad"( in @StandardEquipmentId integer,in @MeasurementPointLocationId integer,
  in @Sort long varchar default null ) 
result( "Axis" char(10),"Range" char(10),"MaxFrequency" integer,"Resolution" integer ) 
begin
  call "SEAS"."VibrationStandardEquipmentMeasurementPointSetupLoad"(@StandardEquipmentId,@MeasurementPointLocationId,@Sort)
end