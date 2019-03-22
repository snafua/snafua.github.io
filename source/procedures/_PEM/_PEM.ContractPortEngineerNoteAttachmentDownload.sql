create procedure "_PEM"."ContractPortEngineerNoteAttachmentDownload"( 
  in @VesselId integer,
  in @ContractId integer,
  in @PortEngineerNoteId integer,
  in @AttachmentId integer ) 
result( 
  "AttachmentFileData" long binary ) 
begin
  call "PEM"."ContractPortEngineerNoteAttachmentDownload"(@VesselId,@ContractId,@PortEngineerNoteId,@AttachmentId)
end