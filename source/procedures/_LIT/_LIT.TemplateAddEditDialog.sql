create procedure "_LIT"."TemplateAddEditDialog"( 
  in @RowId char(256),
  in @Action char(15),
  in @Module char(25) default 'Library',
  in @NodeId char(256) default null,
  in @EnableLineItemEstimateTabs bit default null,
  in @IsEncoded bit default null ) 
result(
  "Title" char(256),
  "SWBS" char(4),
  "SWBSDescription" char(128),
  "WorkItemNumber" char(50),
  "SpecificationId" integer,
  "SpecificationFileName" char(256),
  "ExpenditureType" char(10),
  "LaborHours" numeric(15,2),
  "LaborRate" numeric(15,2),
  "LaborTotal" numeric(15,2),
  "OtherDirect" numeric(15,2),
  "EstimateId" integer,
  "EstimateFileName" char(256),
  "WorkItemLibraryId" integer,
  "WorkItemLibraryType" char(25),
  "WorkItemCategory" char(4),
  "AvailabilityEnabled" bit,
  "TitleEnabled" bit,
  "SWBSEnabled" bit,
  "WorkItemNumberEnabled" bit,
  "SpecificationEnabled" bit,
  "VesselsEnabled" bit,
  "AttachmentsEnabled" bit,
  "ExpenditureEnabled" bit,
  "CostsEstimateEnabled" bit,
  "RevisionsEnabled" bit,
  "HistoryEnabled" bit,
  "CategoryEnabled" bit,
  "VesselStr" char(1024),
  "LineItemsCanEdit" bit,
  "LaborHoursIsEditable" bit,
  "LaborRateIsEditable" bit,
  "LaborTotalIsEditable" bit,
  "OtherDirectIsEditable" bit,
  "LineItemIsEditable" bit,
  "WorkItemLibraryTypeIsEditable" bit ) 
begin
  declare @VesselId smallint;
  declare @WorkItemLibraryId integer;
  declare @SpecificationId integer;
  declare @EstimateId integer;
  declare @AttachmentId integer;
  declare @SWBS char(4);
  declare @VesselClass char(64);
  declare @VesselPM char(64);
  set @Module = "ISNULL"(@Module,'Library');
  set @Action = "ISNULL"(@Action,'Add');
  call "LIT"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId);
  call "LIT"."TemplateAddEditDialog"(@Action,@Module,@WorkItemLibraryId,@VesselId,@NodeId,null,@EnableLineItemEstimateTabs,@IsEncoded)
end