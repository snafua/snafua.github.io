create procedure "_TAR"."TransaltsQuickEdit"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "TitleBarDisplay" char(128),
  "TransaltId" integer,
  "Status" char(25),
  "Priority" char(25),
  "EstimateId" integer,
  "EstimateFileName" char(256),
  "SpecificationId" integer,
  "SpecificationFileName" char(256),
  "HasSpecification" bit,
  "HasEstimate" bit,
  "WorkItemLibraryId" integer,
  "CanAddTAltRequest" bit,
  "CanAddServiceRequest" bit,
  "CanEditDescription" bit,
  "CanAddSpec" bit,
  "CanEditSpec" bit,
  "CanAddComment" bit,
  "CanAddAttachment" bit,
  "CanEditAttachment" bit,
  "CanVote" bit ) 
begin
  select "RowId",
    "TitleBarDisplay",
    "TransaltId",
    "Status",
    "Priority",
    "EstimateId",
    "EstimateFileName",
    "SpecificationId",
    "SpecificationFileName",
    "HasSpecification",
    "HasEstimate",
    "WorkItemLibraryId",
    "CanAddTAltRequest",
    "CanAddServiceRequest",
    "CanEditDescription",
    "CanAddSpec",
    "CanEditSpec",
    "CanAddComment",
    "CanAddAttachment",
    "CanEditAttachment",
    "CanVote" from "_TAR"."TransaltRequestItemDetails"(@RowId)
end