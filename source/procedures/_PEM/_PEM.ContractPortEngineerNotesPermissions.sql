create procedure "_PEM"."ContractPortEngineerNotesPermissions"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "FlagNotes" integer ) 
begin
  call "PEM"."ContractPortEngineerNotesPermissions"(@VesselId,@ContractId)
end