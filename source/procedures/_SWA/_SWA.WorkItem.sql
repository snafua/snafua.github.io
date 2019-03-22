create procedure "_SWA"."WorkItem"( 
  in @VesselId integer,
  in @WorkItemId integer default null ) 
result( 
  "RowId" char(1024),
  "WorkItemTitle" char(128),
  "WorkItemNumber" char(25),
  "WorkItemEstimatedCost" numeric(15,2),
  "WorkItemAwardedCost" numeric(15,2),
  "WorkItemActualCost" numeric(15,2) ) 
begin
  call "SWA"."WorkItem"(@VesselId,@WorkItemId)
end