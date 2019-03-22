create procedure "_SMH"."HistoryItemsPreviewText"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId integer,
  in @HistoryItemType char(20) ) 
result( 
  "PreviewText" long varchar ) 
begin
  call "SMH"."HistoryItemsPreviewText"(@VesselId,@EquipmentId,@HistoryItemId,@HistoryItemType)
end