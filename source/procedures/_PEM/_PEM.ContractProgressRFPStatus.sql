create procedure "_PEM"."ContractProgressRFPStatus"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "ProgressDate" date,
  "ModificationsIssued" integer,
  "ModificationsSettled" integer,
  "ModificationsUnsettled" integer,
  "ModificationsCanceled" integer ) 
begin
  call "PEM"."ContractProgressRFPStatus"(@VesselId,@ContractId)
end