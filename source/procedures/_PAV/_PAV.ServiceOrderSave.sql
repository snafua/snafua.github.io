create procedure "_PAV"."ServiceOrderSave"( 
  in @VesselId smallint,
  in @AvailabilityId integer,
  in @ContractId integer,
  in @WorkItemId integer,
  in @SONum char(25),
  in @ScheduleType char(15),
  in @StartDate date,
  in @EndDate date,
  in @FundingId integer,
  in @ProjectCode char(25),
  in @TaskCode char(25),
  in @Requisition char(25),
  in @PurchaseOrder char(25),
  in @Title char(128),
  in @SWBS char(4),
  in @ExpenditureTypeCode char(128),
  in @LaborHours numeric(15,2),
  in @LaborRate numeric(15,2),
  in @LaborTotal numeric(15,2),
  in @OtherDirect numeric(15,2),
  in @SpecificationDocumentDelete bit,
  in @SpecificationId integer,
  in @SpecificationFileName char(256),
  in @SpecificationDocument long varchar,
  in @SpecificationTitle char(125),
  in @SpecificationFileDate timestamp,
  in @EstimateDocumentDelete bit,
  in @EstimateId integer,
  in @EstimateFileName char(128),
  in @EstimateDocument long varchar,
  in @EstimateTitle char(125),
  in @EstimateFileDate timestamp,
  in @ProgressByTime bit,
  in @AttachmentDataJSON long varchar,
  in @DeletedAttachmentIds long varchar,
  in @SourceRowIdJSON long varchar default null,
  in @Module char(25) default 'Availabilties',
  in @RowId char(512) default null,
  in @LibraryItemId integer default null ) 
result( 
  "RowId" char(256),
  "Success" bit,
  "ErrorMessage" long varchar,
  "ContractId" integer,
  "WorkItemId" integer ) 
begin
  -- This is a bogus procedure. Use _PAV.ServciceOrderAddEditSave
  declare @WorkItemLibraryId integer;
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  --2014-02-12 RJM Shuffled inputs to match SOAP
  call "PAV"."ServiceOrderSave"(
  @VesselId,
  @ContractId,
  @Title,
  @AvailabilityId,
  @WorkItemId,
  @SWBS,
  @SONum,
  @Requisition,
  @PurchaseOrder,
  @SpecificationDocumentDelete,
  @SpecificationId,
  @SpecificationFileName,
  @SpecificationDocument,
  @SpecificationTitle,
  @SpecificationFileDate,
  @ScheduleType,
  @StartDate,
  @EndDate,
  @FundingId,
  @ProjectCode,
  @TaskCode,
  @ExpenditureTypeCode,
  @LaborHours,
  @LaborRate,
  @LaborTotal,
  @OtherDirect,
  @EstimateDocumentDelete,
  @EstimateId,
  @EstimateFileName,
  @EstimateDocument,
  @EstimateTitle,
  @EstimateFileDate,
  @ProgressByTime,
  @AttachmentDataJSON,
  @DeletedAttachmentIds,
  @SourceRowIdJSON,
  @WorkItemLibraryId,
  @Module)
end