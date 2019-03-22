create procedure "_LIT"."LibraryItems"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default null,
  in @IsLimited bit default 1 ) 
result( 
  "RowId" char(512),
  "VesselName" char(256),
  "SWBS" char(4),
  "Title" char(256),
  "ItemType" char(25),
  "EstimatedCost" numeric(15,2),
  "SpecificationId" integer,
  "SpecificationFileName" char(512),
  "EstimateId" integer,
  "EstimateFileName" char(512),
  "WorkItemLibraryId" integer,
  "HasSpecification" bit,
  "HasEstimate" bit,
  "HasAttachment" bit,
  "HasWorkItem" bit,
  "IsDeleted" bit,
  "CanAdd" bit,
  "CanSave" bit,
  "CanEdit" bit,
  "CanDelete" bit,
  "IsServiceOrder" bit,
  "VesselId" smallint,
  "TotalRows" integer,
  "OrderBy" char(256) ) 
begin
  call "LIT"."LibraryItems"(@NodeId,@OrderBy,@IsLimited)
end