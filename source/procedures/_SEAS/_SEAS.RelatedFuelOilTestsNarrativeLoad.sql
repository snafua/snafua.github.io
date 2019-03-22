create procedure "_SEAS"."RelatedFuelOilTestsNarrativeLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "Narrative" long varchar ) 
begin
  call "SEAS"."RelatedFuelOilTestsNarrativeLoad"(@VesselId,@EquipmentId,@TestResultId)
end