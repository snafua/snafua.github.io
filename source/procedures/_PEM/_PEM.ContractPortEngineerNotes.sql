create procedure "_PEM"."ContractPortEngineerNotes"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "PortEngineerNoteId" integer,
  "PortEngineerNoteNumber" integer,
  "PortEngineerNoteDate" date,
  "PortEngineerNoteSubject" char(128),
  "AttachmentCount" integer,
  "FlagNote" integer ) 
begin
  call "PEM"."ContractPortEngineerNotes"(@VesselId,@ContractId)
end