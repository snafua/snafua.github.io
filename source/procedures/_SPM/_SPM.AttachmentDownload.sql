create function "_SPM"."AttachmentDownload"( 
  in @VesselId smallint,
  in @AttachmentId integer ) 
returns long binary
begin
  return("SPM"."AttachmentDownload"(@VesselId,@AttachmentId))
end