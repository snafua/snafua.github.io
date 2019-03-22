create function "_SEAS"."VibrationIsAddedToAverage"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
returns bit
begin
  declare @Result bit;
  set @Result = "SEAS"."VibrationIsAddedToAverage"(@VesselId,@EquipmentId,@TestResultId);
  return(@Result)
end