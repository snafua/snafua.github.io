create procedure "_SMH"."LubeOilVariableSampleData"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @MeasurementPointId integer,
  in @LubeOilVariableId integer ) 
result( 
  "VariableName" char(20),
  "VariableUnits" char(10),
  "DecimalPlaces" integer,
  "ValueTimestamp" bigint,
  "VariableValue" real ) 
begin
  call "SMH"."LubeOilVariableSampleData"(@VesselId,@EquipmentId,@MeasurementPointId,@LubeOilVariableId)
end