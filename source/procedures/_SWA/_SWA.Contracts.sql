create procedure "_SWA"."Contracts"( 
  in @VesselId integer,
  in @AvailabilityId integer ) 
result( 
  "Contract" char(128),
  "ContractId" integer,
  "IsServiceOrder" bit ) 
begin
  call "SWA"."Contracts"(@VesselId,@AvailabilityId)
end