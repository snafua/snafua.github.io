create procedure "_PNG"."WorkItemLibraryGrid"( 
  in @WorkItemLibraryType char(25),
  in @VesselList char(3000) default '*',
  in @OrderBy char(256) default 'SWBS ASC, Title ASC' ) 
result( 
  "VesselId" integer,
  "WorkItemLibraryId" integer,
  "Title" char(256),
  "SWBS" char(4),
  "WorkItemNumber" char(25),
  "ExpenditureTypeCode" char(10),
  "WorkItemCategory" char(5),
  "SpecificationId" integer,
  "SpecificationFileName" char(128),
  "EstimateId" integer,
  "EstimateFileName" char(128),
  "LaborHours" numeric(15,2),
  "LaborRate" numeric(15,2),
  "LaborDollars" numeric(15,2),
  "OtherDollars" numeric(15,2),
  "VesselName" char(128),
  "AttachmentsJSON" long varchar,
  "AvailabilityTypesJSON" long varchar,
  "OrderBy" char(256) ) 
begin
  call "PNG"."WorkItemLibraryGrid"(@WorkItemLibraryType,@VesselList,@OrderBy)
end