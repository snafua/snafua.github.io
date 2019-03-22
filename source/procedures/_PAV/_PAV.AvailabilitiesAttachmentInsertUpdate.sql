create procedure "_PAV"."AvailabilitiesAttachmentInsertUpdate"( 
  in @RowId char(256),
  in @AttachmentName char(256),
  in @AttachmentData long varchar,
  in @Enclosure bit ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."AvailabilitiesAttachmentInsertUpdate"(@RowId,@AttachmentName,@AttachmentData,@Enclosure)
end