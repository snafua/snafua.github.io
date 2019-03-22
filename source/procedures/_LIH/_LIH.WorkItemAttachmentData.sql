create function "_LIH"."WorkItemAttachmentData"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @VesselId smallint;
  declare @AttachmentId integer;
  call "PNG"."RowIdEncodeWorkItemsAttachments"(@RowId,@VesselId,@AttachmentId);
  -- This is stupid to call an SPM proc
  return("SPM"."AttachmentDownload"(@VesselId,@AttachmentId))
end