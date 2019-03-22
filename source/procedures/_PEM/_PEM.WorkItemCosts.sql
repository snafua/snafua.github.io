create procedure "_PEM"."WorkItemCosts"( 
  in @VesselId integer,
  in @WorkItemId integer ) 
result( 
  "WorkItemModId" integer,
  "WorkItemNumber" char(25),
  "ModNumber" char(10),
  "ModType" char(5),
  "LaborRate" numeric(15,2),
  "LaborHours" numeric(15,2),
  "LaborDollars" numeric(15,2),
  "OtherDollars" numeric(15,2),
  "LineItemsDollars" numeric(15,2),
  "TotalDollars" numeric(15,2),
  "ItemProgress" integer,
  "EarnedDollars" numeric(15,2),
  "PAWIDollars" numeric(15,2),
  "ChangePercentage" numeric(15,2),
  "FlagSummary" integer,
  "FlagLineItems" integer,
  "CanSave" integer ) 
begin
  call "PEM"."WorkItemCosts"(@VesselId,@WorkItemId)
end