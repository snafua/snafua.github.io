create procedure "_PEM"."ContractPortEngineerNoteInsertUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @PortEngineerNoteId integer default null,
  in @PortEngineerNoteNumber integer,
  in @PortEngineerNoteDate date,
  in @PortEngineerNoteSubject char(128),
  in @PortEngineerNote long varchar default null ) 
result( 
  "PortEngineerNoteId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractPortEngineerNoteInsertUpdate"(@VesselId,@ContractId,@PortEngineerNoteId,@PortEngineerNoteNumber,@PortEngineerNoteDate,@PortEngineerNoteSubject,@PortEngineerNote)
end