create procedure -- JHM: 2013-06-12 - Moved to new file structure
"_SMH"."SpecialTestInletvlvDimensionBY"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "ColumnId" integer,
  "ColumnTitle" integer,
  "VariableId" char(20),
  "VariableDesc" char(20),
  "VariableValue" char(20) ) 
begin
  call "SMH"."SpecialTestInletvlvDimensionBY"(@VesselId,@EquipmentId,@TestResultId)
end