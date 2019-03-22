create procedure "_SMH"."HistoryItemsPreviewPairsDiagnostic"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId integer,
  in @HistoryItemType char(20) ) 
result( 
  "Name" char(25),
  "Value" char(50) ) 
begin
  call "SMH"."HistoryItemsPreviewPairsDiagnostic"(@VesselId,@EquipmentId,@HistoryItemId,@HistoryItemType)
end