create procedure "_PAV"."ServiceOrderAddEditSave"( 
  in @VesselId integer,
  in @AvailabilityId integer,
  in @ContractId integer,
  in @WorkItemId integer,
  in @ContractNumber char(50),
  in @StartDate date,
  in @EndDate date,
  in @FundingId integer,
  in @ProjectCode char(25),
  in @TaskCode char(25),
  in @Requisition char(256),
  in @PurchaseOrder char(256),
  in @WorkItemTitle char(256),
  in @SWBS char(4),
  in @ExpenditureTypeCode char(10),
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
  in @AttachmentDataJSON long varchar,
  in @DeletedAttachmentIds long varchar,
  in @SourceRowIdJSON long varchar default null,
  in @Module char(25) default null,
  in @RowId char(512) default null,
  in @LibraryItemId integer default null,
  in @AwardedLaborHours numeric(15,2) default null,
  in @AwardedLaborRate numeric(15,2) default null,
  in @AwardedLaborTotal numeric(15,2) default null,
  in @AwardedOtherDirect numeric(15,2) default null,
  in @AwardedDate date default null,
  in @ContractorId integer default null,
  in @RFPCost numeric(15,2) default null,
  in @AwardedLineItemsCost numeric(15,2) default null,
  in @LineItemDollars numeric(15,2) default null,
  in @LocationId integer default null,
  in @Action char(10) default null,
  in @IsEncoded bit default null ) 
result( 
  "RowId" char(256),
  "Success" bit,
  "ErrorMessage" char(3000),
  "ContractId" integer,
  "WorkItemId" integer ) 
begin
  declare @Success bit;
  declare @Message char(3000);
  declare @RowIdOut char(256);
  declare @FundingCodes long varchar;
  declare @FundingDescription char(128);
  declare @PortEngineerName char(128);
  declare @FundingSourceRemove bit;
  declare @ContractType char(15);
  declare @WorkItemLibraryId integer;
  declare @WorkItemLibraryReferenceId integer;
  declare @WorkItemReferenceId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @AttachmentId integer;
  declare @WorkItemIdIn integer;
  declare @ContractIdIn integer;
  declare @AvailabilityIdIn integer;
  declare @VesselIdIn integer;
  if @ISEncoded is null then
    set @ISEncoded = 0
  end if;
  if @ISEncoded = 1 then
    set @ContractNumber = "Base64_Decode"(@ContractNumber);
    set @WorkItemTitle = "Base64_Decode"(@WorkItemTitle);
    set @Requisition = "Base64_Decode"(@Requisition);
    set @PurchaseOrder = "Base64_Decode"(@PurchaseOrder)
  end if;
  set @ProjectCode = "ECO"."CheckNull"(@ProjectCode);
  set @TaskCode = "ECO"."CheckNull"(@TaskCode);
  set @ContractType = 'Service Order';
  set @Requisition = "ECO"."CheckNull"(@Requisition);
  set @PurchaseOrder = "ECO"."CheckNull"(@PurchaseOrder);
  if @Module is null then set @Module = 'Availabilities' end if;
  if((@ProjectCode is null) or(@TaskCode is null)) and @FundingId > 0 then
    if @FundingId > 0 then set @FundingSourceRemove = 1
    else set @FundingSourceRemove = 0 end if;
    set @FundingCodes = "STRING"('[{"FundingId":"',@FundingId,'","ProjectCode":"","TaskCode":"","DefaultFunding":"","FundingDescription":"","FundingSourceRemove":"',@FundingSourceRemove,'"}]');
    set @FundingId = null
  elseif((@ProjectCode is null) or(@TaskCode is null)) then
    set @FundingCodes = null
  else
    set @FundingDescription = "STRING"(@ProjectCode,'/',@TaskCode);
    set @FundingCodes = "STRING"('[{"FundingId":"',@FundingId,'","ProjectCode":"',@ProjectCode,'","TaskCode":"',@TaskCode,'","DefaultFunding":"1","FundingDescription":"',@FundingDescription,'","FundingSourceRemove":"0"}]')
  end if;
  if @AvailabilityId < 1 then set @AvailabilityId = null end if;
  call "PAV"."WorkPackageAddEditSave"(
  @VesselId,
  @AvailabilityId,
  @ContractNumber,
  null,
  null,
  @StartDate,
  @EndDate,
  @FundingCodes,
  @ContractId,
  @Requisition,
  @PurchaseOrder,
  @AwardedDate,
  @ContractorId,
  @LocationId,
  @ContractType);
  if @FundingId is null then
    select "ContractFundingId"
      into @FundingId from "PNG"."ViewContractsAvaliabilitiesWorkItems"
      where "VesselId" = @VesselId
      and "ContractId" = @ContractId
  end if;
  call "PAV"."WorkItemAddEditSave"(
  @VesselId,
  @ContractId,
  @FundingId,
  @AvailabilityId,
  @ExpenditureTypeCode,
  'A',
  @SWBS,
  @ContractNumber,
  @WorkItemTitle,
  @SpecificationDocumentDelete,
  @SpecificationId,
  @SpecificationFileName,
  @SpecificationDocument,
  @SpecificationTitle,
  @SpecificationFileDate,
  @EstimateDocumentDelete,
  @EstimateId,
  @EstimateFileName,
  @EstimateDocument,
  @EstimateTitle,
  @EstimateFileDate,
  @LaborHours,
  @LaborRate,
  @LaborTotal,
  @OtherDirect,
  0,
  @AttachmentDataJSON,
  @WorkItemId,
  @DeletedAttachmentIds,
  @SourceRowIdJSON,
  @Module,
  @LibraryItemId,
  @LibraryItemId,
  @LineItemDollars,
  @AwardedLaborHours,
  @AwardedLaborRate,
  @AwardedLaborTotal,
  @AwardedOtherDirect,
  @AwardedLineItemsCost,
  @RFPCost,
  @ContractorId,
  @AwardedDate);
  if @WorkItemId is null then
    set @WorkItemId = "PAV"."ServiceOrderWorkItemId"(@VesselId,@ContractId)
  end if;
  if @RowId is not null and @Module <> 'repair' then
    call "SPM"."RowIdDecode"(@RowId,@VesselIdIn,@WorkItemLibraryId,@WorkItemIdIn);
    if @WorkItemLibraryId is not null then
      call "PAV"."WorkItemsLibraryReferencesInsertUpdate"(@VesselId,@WorkItemId,@WorkItemLibraryId)
    end if end if;
  if @Module <> 'maintenance' then
    set @RowIdOut = "PAV"."RowIdEncode"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
  else
    set @RowIdOut = "SPM"."RowIdEncode"(@VesselId,@WorkItemLibraryId,@WorkItemId)
  end if;
  if @LibraryItemId is not null then
    call "PNG"."WorkItemsLibraryReferencesInsertUpdate"(@VesselId,@WorkItemId,@LibraryItemId)
  end if;
  select @RowIdOut as "RowId",
    1 as "Success",
    null as "ErrorMessage",
    @ContractId as "ContractId",
    @WorkItemId as "WorkItemId"
    from "DUMMY"
exception
  when others then
    set @Message = "ERRORMSG"();
    select '' as "RowId",
      0 as "Success",
      @Message as "ErrorMessage",
      null as "ContractId",
      null as "WorkItemId"
      from "DUMMY"
end