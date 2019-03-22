create procedure "_PNG"."WorkRequestAttachment"( 
  in @VesselId integer,
  in @WorkRequestId integer,
  in @AttachmentId integer ) 
result( 
  "AttachmentName" char(256),
  "AttachmentSize" bigint,
  "AttachmentData" long varchar ) 
begin
  call "PNG"."WorkRequestAttachment"(@VesselId,@WorkRequestId,@AttachmentId)
end