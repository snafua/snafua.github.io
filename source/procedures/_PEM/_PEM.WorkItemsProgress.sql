create procedure "_PEM"."WorkItemsProgress"( 
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
  "ItemTotalDollars" numeric(15,2),
  "ItemWeight" real,
  "ItemProgress" integer,
  "ItemProgressWeight" real,
  "ProgressByTime" bit,
  "ProgressByTimeWorkItem" bit,
  "ChangePercent" integer,
  "CompletionPercent" integer,
  "ProgressTotalDollars" numeric(15,2),
  "PAWITotalDollars" numeric(15,2),
  "TotalChangePercent" integer,
  "TotalCompletionPercent" integer,
  "FlagProgress" integer,
  "SWBS" char(4),
  "SWBSTitle" char(128) ) 
begin
  call "PEM"."WorkItemsProgress"(@VesselId,@ContractId,@IncludeWorkItems,@IncludeWorkItemModifications)
end