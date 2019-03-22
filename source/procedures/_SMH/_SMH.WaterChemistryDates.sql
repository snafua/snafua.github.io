create procedure "_SMH"."WaterChemistryDates"( in @VesselId smallint,in @EquipmentId integer,in @HistoryItemId integer ) 
result( "TestTimestamp" char(16),"TestVariableId" char(30),"TestVariableValue" char(10) ) 
begin
  call "SMH"."WaterChemistryDates"(@VesselId,@EquipmentId,@HistoryItemId)
end