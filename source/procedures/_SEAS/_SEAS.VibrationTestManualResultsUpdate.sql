create function "_SEAS"."VibrationTestManualResultsUpdate"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @ManualResults long varchar ) 
returns bit
begin
  declare @Result bit;
  set @Result = "SEAS"."VibrationTestManualResultsUpdate"(@VesselId,@EquipmentId,@TestResultId,@ManualResults);
  return(@Result)
end