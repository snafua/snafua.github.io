create procedure "_SMH"."ProcessVariablesChart"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @LubeOilVariableId integer,
  in @ProcessId integer ) 
result( 
  "VariableUnits" char(10),
  "VariableName" char(20),
  "DecimalPlaces" integer,
  "VariableTimestamp" bigint,
  "VariableY" real ) 
begin
  call "SMH"."ProcessVariablesChart"(@VesselId,@EquipmentId,@LubeOilVariableId,@ProcessId)
end