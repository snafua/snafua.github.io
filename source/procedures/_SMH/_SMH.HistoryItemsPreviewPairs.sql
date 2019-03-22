create procedure "_SMH"."HistoryItemsPreviewPairs"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId integer,
  in @HistoryItemType char(20) ) 
result( "ItemType" char(10),"ItemName" char(25),"ItemValue" char(50) ) 
begin
  call "SMH"."HistoryItemsPreviewPairs"(@VesselId,@EquipmentId,@HistoryItemId,@HistoryItemType)
end