create procedure -- JHM: 2013-06-12 - Moved to new file structure
"_SMH"."SpecialTestType"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "SpecialTestType" char(20) ) 
begin
  call "SMH"."SpecialTestType"(@VesselId,@EquipmentId,@TestResultId)
end