create procedure "_SMH"."VibrationTestsMeasurementPointsLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "MeasurementPointId" integer,
  "MeasurementPointName" char(50),
  "Orientation" char(3),
  "Barcode" integer ) 
begin
  call "SMH"."VibrationTestsMeasurementPointsLoad"(@VesselId,@EquipmentId,@TestResultId)
end