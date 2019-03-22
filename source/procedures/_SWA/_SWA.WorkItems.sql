create procedure "_SWA"."WorkItems"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WorkItemId" integer,
  "WorkItemTitle" char(128),
  "WorkItemNumber" char(25) ) 
begin
  call "SWA"."WorkItems"(@VesselId,@ContractId)
end