create procedure "_SMH"."RepairHistoryVariables"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer ) 
result( 
  "Category" char(50),
  "VariableId" char(20),
  "VariableDesc" char(50) ) 
begin
  call "SMH"."RepairHistoryVariables"(@VesselId,@EquipmentId,@MachineryHistoryId)
end