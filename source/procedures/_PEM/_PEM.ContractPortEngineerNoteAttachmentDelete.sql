create procedure "_PEM"."ContractPortEngineerNoteAttachmentDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @PortEngineerNoteId integer,
  in @AttachmentId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractPortEngineerNoteAttachmentDelete"(@VesselId,@ContractId,@PortEngineerNoteId,@AttachmentId)
end