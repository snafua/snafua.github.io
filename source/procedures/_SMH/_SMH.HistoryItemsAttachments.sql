create procedure "_SMH"."HistoryItemsAttachments"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer,
  in @ItemType char(20) ) 
result( 
  "AttachmentId" integer,
  "AttachmentTitle" char(255),
  "AttachmentFileName" char(255),
  "AttachmentTimestamp" timestamp,
  "AttachmentFileSize" integer ) 
begin
  call "SMH"."HistoryItemsAttachments"(@VesselId,@EquipmentId,@MachineryHistoryId,@ItemType)
end