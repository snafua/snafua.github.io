create function "_PAV"."AvailabilitiesAttachmentDownload"( 
  in @RowId char(512),
  in @FileId integer ) 
returns long binary
begin
  return("PAV"."AvailabilitiesAttachmentDownload"(@RowId,@FileId))
end