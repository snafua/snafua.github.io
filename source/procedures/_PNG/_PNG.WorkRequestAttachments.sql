create procedure "_PNG"."WorkRequestAttachments"( 
  in @VesselId integer,
  in @WorkRequestIds long varchar ) 
result( 
  "AttachmentId" integer,
  "AttachmentSize" bigint,
  "AttachmentName" char(256),
  "AttachmentDescription" char(256),
  "AttachmentOrigin" char(5),
  "CanEdit" integer,
  "CanDelete" integer ) 
begin
  call "PNG"."WorkRequestAttachments"(@VesselId,@WorkRequestIds)
end