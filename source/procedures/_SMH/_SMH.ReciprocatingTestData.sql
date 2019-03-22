create procedure "_SMH"."ReciprocatingTestData"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestId" integer,
  "VariableId" integer,
  "VariableValue" char(10) ) 
begin
  call "SMH"."ReciprocatingTestData"(@VesselId,@EquipmentId,@TestResultId)
end