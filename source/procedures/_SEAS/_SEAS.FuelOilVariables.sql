create procedure "_SEAS"."FuelOilVariables"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId integer,
  in @SampleId char(20) ) 
result( 
  "VariableId" integer,
  "VariableLabel" char(20),
  "VariableAlarmLC" char(20),
  "VariableAlarmLA" char(20),
  "VariableAlarmB" char(20),
  "VariableAlarmHA" char(20),
  "VariableAlarmHC" char(20),
  "VariableAlarmLRC" char(20),
  "VariableAlarmHRC" char(20),
  "VariableCategory" char(50),
  "VariableUnits" char(10),
  "DontTrend" bit,
  "DisplaySequence" integer ) 
begin
  call "SEAS"."FuelOilVariables"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end