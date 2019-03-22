create procedure "_SMH"."RepairHistoryData"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer ) 
result( 
  "TestId" integer,
  "VariableId" char(20),
  "VariableValue" char(10) ) 
begin
  call "SMH"."RepairHistoryData"(@VesselId,@EquipmentId,@MachineryHistoryId)
end