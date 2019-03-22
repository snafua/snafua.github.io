create procedure "_PEM"."WorkItemModificationAttachmentDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @AttachmentId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationAttachmentDelete"(@VesselId,@WorkItemId,@WorkItemModId,@AttachmentId)
end