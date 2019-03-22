create procedure -- JHM: 2013-06-12 - Moved to new file structure
"_SMH"."SpecialTestData"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestId" integer,
  "VariableId" char(20),
  "VariableValue" char(20),
  "InAlarm" bit ) 
begin
  call "SMH"."SpecialTestData"(@VesselId,@EquipmentId,@TestResultId)
end