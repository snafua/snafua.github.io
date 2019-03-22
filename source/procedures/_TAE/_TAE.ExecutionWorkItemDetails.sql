create procedure "_TAE"."ExecutionWorkItemDetails"( 
  in @RowId char(1024) ) 
result( 
  "ContractNumber" char(32),
  "AvailabilityType" char(12),
  "WorkItemNumber" char(12),
  "StartDate" timestamp,
  "CompletionDate" timestamp,
  "FacilityName" char(256),
  "FacilityId" integer,
  "WorkItemCost" numeric(15,2),
  "GFMCost" numeric(15,2) ) 
begin
  call "TAE"."ExecutionWorkItemDetails"(@RowId)
end