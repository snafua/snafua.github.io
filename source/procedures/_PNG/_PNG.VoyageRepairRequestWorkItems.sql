create procedure "_PNG"."VoyageRepairRequestWorkItems"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer default null ) 
result( 
  "WorkItemId" integer,
  "WorkItemText" char(128),
  "WorkItemTitle" char(128) ) 
begin
  call "PNG"."VoyageRepairRequestWorkItems"(@VesselId,@ContractId,@WorkItemId)
end