create procedure --Procedure _PAV.ContractList
--RJM 2013-06-12 Populates Work package/Service Order dropdown on repair module
"_PAV"."ContractList"( 
  in @VesselId integer,
  in @AvailabilityId integer ) 
result( 
  "ContractId" integer,
  "ContractNumber" char(25) ) 
begin
  call "PAV"."ContractList"(@VesselId,@AvailabilityId)
end