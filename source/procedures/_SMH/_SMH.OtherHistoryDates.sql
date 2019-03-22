create procedure "_SMH"."OtherHistoryDates"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer ) 
result( 
  "HistoryYear" char(4),
  "HistoryDate" char(11),
  "HistoryId" integer ) 
begin
  call "SMH"."OtherHistoryDates"(@VesselId,@EquipmentId,@MachineryHistoryId)
end