create procedure "_TAR"."TransaltRequestItemsExport"( 
  in @NodeId char(512) default null,
  in @OrderBy char(512) default null,
  in @UsePaging bit default 1,
  in @RowsPerPage integer default 500,
  in @PageToDisplay integer default 1 ) 
result( 
  "RowId" char(1024),
  "TransaltId" integer,
  "TransaltTitle" char(128),
  "TitleBarDisplay" char(128),
  "TransaltExternalId" char(25),
  "RequestOrTAlt" char(10),
  "TransaltNumber" char(25),
  "TransaltDescription" long varchar,
  "TransaltsType" char(25),
  "SWBS" char(4),
  "Priority" char(25),
  "Category" char(25),
  "ApprovedDate" date,
  "Status" char(25),
  "RequestDate" date,
  "RequestNumber" char(25),
  "EstimatedCost" numeric(15,2),
  "EstimatedGovernmentFurnishedMaterialsCostPerVessel" numeric(15,2),
  "FundingSource" char(25),
  "WorkItemTitle" char(128),
  "WorkItemCategory" char(5),
  "WorkItemNumber" char(25),
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
  "CanVote" bit,
  "CanEdit" bit,
  "NumberExecutionStatus" char(25),
  "TotalRows" integer,
  "CurrentPage" integer,
  "TotalPages" integer,
  "AffectedSystem" char(50),
  "VesselClass" char(50),
  "TransaltItemPermissions" integer,
  "ProjectNumber" char(20),
  "ProjectStatus" char(20),
  "N04711Review" char(20),
  "N04721Review" char(20),
  "N04722Review" char(20),
  "N04723Review" char(20),
  "N04725Review" char(20),
  "N04733Review" char(20),
  "N04726Review" char(20),
  "N04641Review" char(20),
  "N04644Review" char(20),
  "N04645Review" char(20) ) 
/*
2017-10-26 AJLF Added Routing Status
*/
begin
  set @UsePaging = 1;
  set @RowsPerPage = 65500;
  set @PageToDisplay = 1;
  set @NodeId = "TAR"."SavedNodeIdSelect"();
  call "TAR"."TransaltRequestItems"(@NodeId,@OrderBy,@UsePaging,@RowsPerPage,@PageToDisplay)
end