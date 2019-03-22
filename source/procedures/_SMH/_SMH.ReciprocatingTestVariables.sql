create procedure "_SMH"."ReciprocatingTestVariables"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "Category" char(50),
  "VariableId" integer,
  "VariableDesc" char(50) ) 
begin
  call "SMH"."ReciprocatingTestVariables"(@VesselId,@EquipmentId,@TestResultId)
end