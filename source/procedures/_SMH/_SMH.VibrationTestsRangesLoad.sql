create procedure "_SMH"."VibrationTestsRangesLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @MeasurementPointId integer ) 
result( 
  "RangeId" integer,
  "RangeName" char(10) ) 
begin
  call "SMH"."VibrationTestsRangesLoad"(@VesselId,@EquipmentId,@TestResultId,@MeasurementPointId)
end