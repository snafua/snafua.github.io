create procedure "_SMH"."SpecialTestCylinderDistance"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "ColumnId" integer,
  "ColumnTitle" char(20),
  "VariableId" char(20),
  "VariableDesc" char(20),
  "VariableValue" char(20) ) 
begin
  call "SMH"."SpecialTestCylinderDistance"(@VesselId,@EquipmentId,@TestResultId)
end