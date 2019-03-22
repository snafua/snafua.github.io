create procedure "_SMH"."RepairHistoryDates"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer ) 
result( 
  "HistoryYear" char(4),
  "HistoryDate" char(11),
  "HistoryId" integer ) 
begin
  call "SMH"."RepairHistoryDates"(@VesselId,@EquipmentId,@MachineryHistoryId)
end