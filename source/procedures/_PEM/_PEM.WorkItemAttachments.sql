create procedure "_PEM"."WorkItemAttachments"( 
  in @VesselId integer,
  in @WorkItemId integer ) 
result( 
  "AttachmentId" integer,
  "AttachmentFileName" char(128),
  "AttachmentSize" integer,
  "AttachmentFileType" char(128) ) 
begin
  call "PEM"."WorkItemAttachments"(@VesselId,@WorkItemId)
end