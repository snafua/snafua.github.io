create function "_PAV"."WorkItemAttachmentDownload"( 
  in @VesselId integer,
  in @AttachmentId integer ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "PAV"."WorkItemAttachmentDownload"(@VesselId,@AttachmentId);
  return(@Result)
end