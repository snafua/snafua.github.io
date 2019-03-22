create procedure --Procedure _PAV.WorkPackageList
--RJM 2013-06-12 Populates Work package dropdown on Add/Edit Dialog
"_PAV"."WorkPackageList"( 
  in @VesselId integer,
  in @AvailabilityId integer ) 
result( 
  "ContractId" integer,
  "ContractNumber" char(25) ) 
begin
  call "PAV"."WorkPackageList"(@VesselId,@AvailabilityId)
end