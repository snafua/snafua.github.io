create procedure "_PAV"."WorkPackageByAvailabilityId"( 
  in @VesselId smallint,
  in @AvailabilityId integer ) 
result( 
  "ContractId" integer,
  "WorkPackage" char(128) ) 
begin
  call "PAV"."WorkPackageByAvailabilityId"(@VesselId,@AvailabilityId)
end