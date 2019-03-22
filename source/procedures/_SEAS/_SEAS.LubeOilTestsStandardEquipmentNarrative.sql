create procedure "_SEAS"."LubeOilTestsStandardEquipmentNarrative"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
result( "Narrative" long varchar ) 
begin
  call "SEAS"."LubeOilTestsStandardEquipmentNarrative"(@VesselId,@EquipmentId,@TestResultId)
end