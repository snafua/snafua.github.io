create procedure "_TAE"."ExecutionAssociatedWorkItems"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "Availability" char(128),
  "Region" char(128),
  "WorkItemTitle" char(128),
  "WorkItemNumber" char(25),
  "ContractStatus" char(25),
  "WorkItemCategory" char(5),
  "WorkItemAwardedCost" numeric(15,2),
  "RFPCount" integer,
  "RFPCost" numeric(15,2),
  "WorkItemActualCost" numeric(15,2),
  "SpecRevision" integer,
  "HasSpecification" bit,
  "HasEstimate" bit,
  "WorkItemAwardedCostTotal" numeric(15,2),
  "RFPCountTotal" integer,
  "RFPCostTotal" numeric(15,2),
  "WorkItemActualCostTotal" numeric(15,2),
  "PrimaryWorkItem" bit ) 
begin
  call "TAE"."ExecutionAssociatedWorkItems"(@RowId)
end