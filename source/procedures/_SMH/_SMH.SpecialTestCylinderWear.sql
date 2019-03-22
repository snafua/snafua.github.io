create procedure "_SMH"."SpecialTestCylinderWear"( 
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
  call "SMH"."SpecialTestCylinderWear"(@VesselId,@EquipmentId,@TestResultId)
end