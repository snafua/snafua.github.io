create procedure "_PEM"."ContractPortEngineerNoteDetails"( 
  in @VesselId integer,
  in @ContractId integer,
  in @PortEngineerNoteId integer ) 
result( 
  "PortEngineerNoteNumber" integer,
  "PortEngineerNoteDate" date,
  "PortEngineerNoteSubject" char(128),
  "PortEngineerNote" long varchar,
  "FlagNote" integer,
  "FlagAttachment" integer ) 
begin
  call "PEM"."ContractPortEngineerNoteDetails"(@VesselId,@ContractId,@PortEngineerNoteId)
end