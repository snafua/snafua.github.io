create procedure "_PEM"."WorkItemModifications"( 
  in @VesselId integer,
  in @WorkItemId integer ) 
result( 
  "WorkItemModificationId" integer,
  "WorkItemModificationNumber" integer,
  "WorkItemModificationTitle" char(128),
  "WorkItemModificationClassificationCode" char(5),
  "WorkItemModificationClassification" char(25),
  "WorkItemModificationStatus" char(25),
  "WorkItemModificationType" char(5),
  "WorkItemModificationProgress" integer,
  "EstimatedTotalCost" numeric(15,2),
  "AwardedTotalCost" numeric(15,2),
  "ActualTotalCost" numeric(15,2) ) 
begin
  call "PEM"."WorkItemModifications"(@VesselId,@WorkItemId)
end