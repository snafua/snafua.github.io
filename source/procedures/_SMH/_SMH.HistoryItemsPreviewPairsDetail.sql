create procedure "_SMH"."HistoryItemsPreviewPairsDetail"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId integer,
  in @HistoryItemType char(20) ) 
result( 
  "Name" char(25),
  "Value" char(50) ) 
begin
  call "SMH"."HistoryItemsPreviewPairsDetail"(@VesselId,@EquipmentId,@HistoryItemId,@HistoryItemType)
end