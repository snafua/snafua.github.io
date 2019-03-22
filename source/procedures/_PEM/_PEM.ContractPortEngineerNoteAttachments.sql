create procedure "_PEM"."ContractPortEngineerNoteAttachments"( 
  in @VesselId integer,
  in @ContractId integer,
  in @PortEngineerNoteId integer ) 
result( 
  "AttachmentId" integer,
  "AttachmentFileName" char(128),
  "AttachmentFileSize" integer,
  "AttachmentFileType" char(25),
  "FlagAttachment" integer ) 
begin
  call "PEM"."ContractPortEngineerNoteAttachments"(@VesselId,@ContractId,@PortEngineerNoteId)
end