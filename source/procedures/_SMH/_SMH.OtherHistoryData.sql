create procedure "_SMH"."OtherHistoryData"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer ) 
result( 
  "TestId" integer,
  "VariableId" char(20),
  "VariableValue" char(10) ) 
begin
  call "SMH"."OtherHistoryData"(@VesselId,@EquipmentId,@MachineryHistoryId)
end