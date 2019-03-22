create procedure "_SPM"."MaintenanceWorkItems"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WorkItemId" integer,
  "WorkItemText" char(20) ) 
begin
  call "SPM"."MaintenanceWorkItems"(@VesselId,@ContractId)
end