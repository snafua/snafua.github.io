create function "_VTL"."AttachmentDownload"( 
  in @AttachmentId integer ) 
returns long binary
begin
  return("VTL"."AttachmentDownload"(@AttachmentId))
end