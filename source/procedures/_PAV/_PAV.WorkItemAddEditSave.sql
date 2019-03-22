create procedure --RJM
"_PAV"."WorkItemAddEditSave"( 
  in @VesselId integer,
  in @ContractId integer,
  in @FundingId char(25) default null,
  in @AvailabilityId integer,
  in @ExpenditureTypeCode char(10) default null,
  in @WorkItemCategory char(5),
  in @SWBS char(4),
  in @WorkItemNumber char(50),
  in @WorkItemTitle char(256),
  in @SpecificationDocumentDelete bit default 0,
  in @SpecificationID integer default null,
  in @SpecificationFileName char(256) default null,
  in @SpecificationDocument long varchar default null,
  in @SpecificationTitle char(125) default null,
  in @SpecificationFileDate char(25) default null,
  in @EstimateDocumentDelete bit default 0,
  in @EstimateId integer default null,
  in @EstimateFileName char(128) default null,
  in @EstimateDocument long varchar default null,
  in @EstimateTitle char(125) default null,
  in @EstimateFileDate char(25) default null,
  in @LaborHours numeric(15,2) default null,
  in @LaborRate numeric(15,2) default null,
  in @LaborTotal numeric(15,2) default null,
  in @OtherDirect numeric(15,2) default null,
  in @ProgressByTime bit default 0,
  in @AttachmentDataJSON long varchar default '',
  in @WorkItemId integer default null,
  in @DeletedAttachmentIds long varchar default null,
  in @SourceRowIdJSON long varchar default null,
  in @Module char(25) default 'Availabilities',
  in @RowId char(512) default null,
  in @LibraryItemId integer default null,
  in @LineItemDollars numeric(15,2) default null,
  in @AwardedLaborHours numeric(15,2) default null,
  in @AwardedLaborRate numeric(15,2) default null,
  in @AwardedLaborTotal numeric(15,2) default null,
  in @AwardedOtherDirect numeric(15,2) default null,
  in @AwardedLineItemsCost numeric(15,2) default null,
  in @RFPCost numeric(15,2) default null,
  in @ContractorId integer default null,
  in @AwardedDate date default null,
  in @IsNotEncoded bit default null,
  in @IsEncoded bit default null ) 
result( 
  "RowId" char(256),
  "Success" bit,
  "ErrorMessage" char(3000),
  "WorkItemId" integer ) 
/*
2014-05-13 RJM Updated RowId encode/decode
2016-08-10 Added calls to copy eq parts from historical item, formatted for readability
2016-12-13 RJM changed @FundingIdStr to @FundingId
2017-05-25 RJM E-04184, D-04106 Added b64 encoding
*/
begin
  declare @Success bit;
  declare @ErrorMessage char(3000);
  declare @SQLError long varchar;
  declare @FundingIdInt integer;
  declare @SpecificationFileTimestamp timestamp;
  declare @EstimateFileTimestamp timestamp;
  declare @ExpenditureTypeCodeStr char(10);
  declare @VesselId2 smallint;
  declare @WorkItemLibraryId integer;
  declare @WorkItemId2 integer;
  declare @HasPartsEquipments bit;
  if("ECO"."CheckNull"(@IsEncoded) is null) then
    set @IsEncoded = 0
  end if;
  if(@IsEncoded = 1) then
    set @WorkItemNumber = "BASE64_DECODE"(@WorkItemNumber);
    set @WorkItemTitle = "BASE64_DECODE"(@WorkItemTitle)
  end if;
  set @WorkItemTitle = "ECO"."STR_RemoveIllegalFileNameChars"(@WorkItemTitle);
  set @WorkItemNumber = "ECO"."STR_RemoveIllegalFileNameChars"(@WorkItemNumber);
  if(@WorkItemId is not null) then
    set @HasPartsEquipments = 1
  else
    set @HasPartsEquipments = 0
  end if;
  if(@ProgressByTime is null) then
    set @ProgressByTime = 0
  end if;
  if("ISNUMERIC"(@SpecificationId) = 0) then
    set @SpecificationId = null
  end if;
  if("ISNUMERIC"(@EstimateId) = 0) then
    set @EstimateId = null
  end if;
  if(@ExpenditureTypeCode is not null) then
    set @ExpenditureTypeCodeStr = cast(@ExpenditureTypeCode as char(10))
  end if;
  if("ISNUMERIC"(@FundingId) = 1) then
    set @FundingIdInt = cast(@FundingId as integer)
  end if;
  if("ISDATE"(@SpecificationFileDate) = 1) then
    set @SpecificationFileTimestamp = cast(@SpecificationFileDate as timestamp)
  end if;
  if("ISDATE"(@EstimateFileDate) = 1) then
    set @EstimateFileTimestamp = cast(@EstimateFileDate as timestamp)
  end if;
  if(@Module is null) then
    set @Module = 'Availabilities'
  end if;
  -- No idea why RowId is here
  if(@Module = 'maintenance') then
    call "SPM"."RowIdDecode"(@RowId,@VesselId2,@WorkItemLibraryId,@WorkItemId2)
  end if;
  call "PAV"."WorkItemAddEditSave"(@VesselId,@ContractId,@FundingIdInt,@AvailabilityId,@ExpenditureTypeCodeStr,@WorkItemCategory,@SWBS,@WorkItemNumber,@WorkItemTitle,
  @SpecificationDocumentDelete,@SpecificationID,@SpecificationFileName,@SpecificationDocument,@SpecificationTitle,@SpecificationFileTimestamp,
  @EstimateDocumentDelete,@EstimateId,@EstimateFileName,@EstimateDocument,@EstimateTitle,@EstimateFileTimestamp,@LaborHours,@LaborRate,@LaborTotal,
  @OtherDirect,@ProgressByTime,@AttachmentDataJSON,@WorkItemId,@DeletedAttachmentIds,@SourceRowIdJSON,@Module,@WorkItemLibraryId,@LibraryItemId,
  @LineItemDollars,@AwardedLaborHours,@AwardedLaborRate,@AwardedLaborTotal,@AwardedOtherDirect,@AwardedLineItemsCost,@RFPCost,@ContractorId,@AwardedDate);
  if("ISNULL"(@WorkItemId,0) < 1) then
    select "MAX"("WorkItemId")
      into @WorkItemId
      from "PNG"."ViewContractsAvaliabilitiesWorkItems"
      where "VesselId" = @VesselId
      and "AvailabilityId" = @AvailabilityId
      and "ContractId" = @ContractId
      and "WorkItemNumber" = @WorkItemNumber
  end if;
  --If copying from historical item, we need old vesselid/workitemid to copy eq and parts
  if(@Module = 'historical') and(@RowId is not null) and(@HasPartsEquipments = 0) then
    set @VesselId2 = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @WorkItemId2 = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
    call "PNG"."WorkItemCopyEquipmentsParts"(@VesselId2,@WorkItemId2,@VesselId,@WorkItemId)
  end if;
  if(@Module <> 'maintenance') then
    set @RowId = "PAV"."RowIdEncode"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
  else
    call "PAV"."WorkItemsLibraryReferencesInsertUpdate"(@VesselId,@WorkItemId,@WorkItemLibraryId);
    set @RowId = "SPM"."RowIdEncode"(@VesselId,@WorkItemLibraryId,@WorkItemId)
  end if;
  select @RowId as "RowId",
    1 as "Success",
    null as "ErrorMessage",
    @WorkItemId as "WorkItemId"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select '' as "RowId",
      0 as "Success",
      @ErrorMessage as "ErrorMessage",
      null as "WorkItemId"
      from "DUMMY"
end