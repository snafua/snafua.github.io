create procedure "_SMH"."VibrationMeasurementPointSetup"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MeasurementPointId integer ) 
result( 
  "AxisId" integer,
  "AxisDescription" char(10),
  "RangeId" integer,
  "RangeDescription" char(10),
  "MaxFrequencyInOrders" integer,
  "MaxFrequencyInHertz" integer,
  "Resolution" integer ) 
begin
  call "SMH"."VibrationMeasurementPointSetup"(@VesselId,@EquipmentId,@MeasurementPointId)
end