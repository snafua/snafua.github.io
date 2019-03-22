create procedure "_PEM"."WorkItemsProgressHistory"( 
  in @VesselId integer,
  in @ContractId integer,
  in @IncludeWorkItems bit default 1,
  in @IncludeWorkItemModifications bit default 1 ) 
result( 
  "WorkItemId" integer,
  "WorkItemModId" integer,
  "WorkItemNumber" char(25),
  "WorkItemModNumber" char(10),
  "ItemTitle" char(128),
  "ProgressDate" date,
  "Progress" integer,
  "FlagProgress" integer ) 
begin
  call "PEM"."WorkItemsProgressHistory"(@VesselId,@ContractId,@IncludeWorkItems,@IncludeWorkItemModifications)
end