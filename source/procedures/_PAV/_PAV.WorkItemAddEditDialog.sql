create procedure --RJM
"_PAV"."WorkItemAddEditDialog"( 
  in @NodeId char(256),
  in @RowId char(256),
  in @Action char(15),
  in @Module char(25) default 'Availabilities',
  in @ContractId integer default null,
  in @EnableLineItemEstimateTabs bit default null,
  in @AvailabilityId integer default null,
  in @ISEncoded bit default null ) 
result( 
  "VesselId" integer,
  "WorkItemId" integer,
  "ContractId" integer,
  "FundingId" integer,
  "AvailabilityId" integer,
  "ExpenditureTypeCode" char(10),
  "ExpenditureTypeDisplay" char(50),
  "WorkItemCategory" char(5),
  "SWBS" char(4),
  "SWBSTitle" char(128),
  "WorkItemNumber" char(50),
  "WorkItemTitle" char(256),
  "VesselName" char(128),
  "Availability" char(128),
  "WorkPackage" char(25),
  "SpecificationId" integer,
  "SpecificationFileName" char(256),
  "LaborHours" numeric(15,2),
  "LaborRate" numeric(15,2),
  "LaborTotal" numeric(15,2),
  "OtherDirect" numeric(15,2),
  "EstimateId" integer,
  "EstimateFileName" char(256),
  "FundingDescription" char(128),
  "ProgressByTime" bit,
  "VesselIsEditable" bit,
  "AvailabilityIsEditable" bit,
  "TitleIsEditable" bit,
  "SpecificationIsEditable" bit,
  "ContractIsEditable" bit,
  "SWBSIsEditable" bit,
  "WorkItemNumberIsEditable" bit,
  "WorkItemCategoryIsEditable" bit,
  "CostsAreEditable" bit,
  "ProgressByTimeIsEditable" bit,
  "FundingIsEditable" bit,
  "WorkItemLibraryId" integer,
  "AttachmentsAreEditable" bit,
  "LineItemDollars" numeric(15,2),
  "RowId" char(1024),
  "LaborHoursIsEditable" bit,
  "LaborRateIsEditable" bit,
  "LaborTotalIsEditable" bit,
  "OtherDirectIsEditable" bit,
  "LineItemIsEditable" bit ) 
begin
  /*
2016-08-10 RJM Added @RowId to  CALL PAV.WorkItemAddFromHistorical to support copy eq and parts
2016-09-12 RJM Added Bit for LineItem/Estimate tabs
2017-03-16 RJM  Added @AvailabilityId as input parameter for PMIA
2017-05-25 RJM Added b64 encoding
*/
  declare @VesselId smallint;
  declare @AvailabilityIdIn integer;
  declare @ContractIdIn integer;
  declare @WorkItemId integer;
  declare @WorkItemLibraryId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @WorkItemLibraryReferenceId integer;
  declare @WorkItemReferenceId integer;
  declare @AttachmentId integer;
  declare @ReferenceTypeId integer;
  declare @WorkItemReferenceType char(15);
  declare @NodeType char(25);
  declare @Node char(25);
  declare @VesselClassId integer;
  declare @ProgramManagerCode char(10);
  declare @AvailabilityType char(25);
  declare @ServiceOrderType char(25);
  if @Module is null then set @Module = 'Availabilities' end if;
  if @NodeId is null then set @NodeId = '' end if;
  if "ECO"."CHeckNull"(@EnableLineItemEstimateTabs) is null then
    set @EnableLineItemEstimateTabs = 0
  end if;
  if @ISEncoded is null then
    set @ISEncoded = 0
  end if;
  if @Module = 'maintenance' then --Use Row Key instead of RowId
    call "SPM"."RowIDDecode"(@RowId,@VesselId,@WorkItemLibraryId,@WorkItemId)
  --message 'VesselId=' || @VesselId || ', WorkItemLibraryId=' || @WorkItemLibraryId || ', EquipmentId=' || @EquipmentId type info to client;
  elseif @Module = 'repair' then
    call "PAV"."DecodeNodeRowId"(@NodeId,@RowId,@VesselId,@AvailabilityIdIn,@ContractIdIn,@WorkItemId)
  elseif @Module = 'historical' then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId')
  elseif @Module = 'transalt' then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
    set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId')
  else
    if @NodeId is not null then call "PAV"."NodeIdDecode"(@NodeId,@NodeType,@Node,@VesselId,@VesselClassId,@ProgramManagerCode,@AvailabilityType,@AvailabilityIdIn,@ServiceOrderType) end if;
    if @RowId is not null then call "PAV"."RowIdDecode"(@RowId,@VesselId,@AvailabilityIdIn,@ContractIdIn,@WorkItemId,@ReferenceTypeId,@WorkItemReferenceType,@EquipmentId,@WorkItemReferenceId) end if
  end if;
  --message string('Module = ',@Module) type info to client;
  --message string('WorkItemLibraryId = ',@WorkItemLibraryId) type info to client;
  if @AvailabilityId is not null then
    set @AvailabilityIdIn = @AvailabilityId
  end if;
  if @ContractId is not null then
    set @ContractIdIn = @ContractId
  end if;
  if @Action is null then
    set @Action = 'Add'
  end if;
  if @WorkItemLibraryId is null then
    set @WorkItemLibraryId = 0
  end if;
  if(@AvailabilityIdIn is null or @ContractIdIn is null) and(@Module <> 'historical') then
    select "AvailabilityId",
      "ContractId"
      into @AvailabilityIdIn,
      @ContractIdIn
      from "PNG"."ViewContractsAvaliabilitiesWorkItems"
      where "VesselId" = @VesselId
      and "WorkItemId" = @WorkItemId
  end if;
  if @Module = 'historical' then
    call "PAV"."WorkItemAddFromHistorical"(@VesselId,@WorkItemId,@Action,@Module,@RowId,@ISEncoded)
  else
    --message string('@ContractIdIn = ',@ContractIdIn) type info to client;
    call "PAV"."WorkItemAddEditDialog"(@VesselId,@AvailabilityIdIn,@ContractIdIn,@WorkItemId,@Action,@Module,@WorkItemLibraryId,@RowId,@EnableLineItemEstimateTabs,@ISEncoded)
  end if
end