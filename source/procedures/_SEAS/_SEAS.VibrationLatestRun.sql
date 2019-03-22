create function "_SEAS"."VibrationLatestRun"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
returns timestamp
begin
  declare @Result timestamp;
  set @Result = "SEAS"."VibrationLatestRun"(@VesselId,@EquipmentId,@TestResultId);
  return(@Result)
end