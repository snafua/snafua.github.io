create procedure "_PEM"."WorkItemAttachmentDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @AttachmentId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemAttachmentDelete"(@VesselId,@WorkItemId,@AttachmentId)
end