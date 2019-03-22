create procedure "_PEM"."ContractPortEngineerNoteAttachmentInsert"( 
  in @VesselId integer,
  in @ContractId integer,
  in @PortEngineerNoteId integer,
  in @AttachmentFileName char(128),
  in @AttachmentFileData long binary ) 
result( 
  "AttachmentId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractPortEngineerNoteAttachmentInsert"(@VesselId,@ContractId,@PortEngineerNoteId,@AttachmentFileName,@AttachmentFileData)
end