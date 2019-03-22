create procedure "_PEM"."ContractPortEngineerNoteDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @PortEngineerNoteId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractPortEngineerNoteDelete"(@VesselId,@ContractId,@PortEngineerNoteId)
end