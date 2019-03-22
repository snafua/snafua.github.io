create procedure "_PEM"."ContractPortEngineerNoteNumberGenerate"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "PortEngineerNoteNumber" integer ) 
begin
  call "PEM"."ContractPortEngineerNoteNumberGenerate"(@VesselId,@ContractId)
end