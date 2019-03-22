create procedure "_PEM"."WorkItemDetails"( 
  in @VesselId integer,
  in @WorkItemId integer ) 
result( 
  "WorkItemTitle" char(128),
  "SWBS" char(4),
  "WorkItemNumber" char(25),
  "WorkItemCategory" char(5),
  "TransaltTitle" char(128),
  "PortEngineer" char(128),
  "RevisionDate" date,
  "ExpenditureTypeCode" char(10),
  "FundingId" integer,
  "ProgressByTime" bit,
  "ILSSystem" bit,
  "PierSide" bit,
  "SpecificationId" integer,
  "SpecificationFileName" char(128),
  "EstimateId" integer,
  "EstimateFileName" char(128),
  "Originator" char(128),
  "FlagWorkItem" integer,
  "FlagGeneralInfoGroupPrint" integer,
  "FlagAttachmentsGroupPrint" integer,
  "FlagUploadEstimates" integer,
  "FlagLineItems" integer,
  "FlagModifications" integer,
  "CanSave" integer ) 
begin
  call "PEM"."WorkItemDetails"(@VesselId,@WorkItemId)
end