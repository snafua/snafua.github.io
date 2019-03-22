create procedure --RJM
"_PAV"."ServiceOrderAddEditDialog"( 
  in @NodeId char(256),
  in @RowId char(256),
  in @Action char(10),
  in @Module char(25) default 'Availabilities',
  in @AvailabilityId integer default null,
  in @ContractId integer default null,
  in @EnableLineItemEstimateTabs bit default null,
  in @IsEncoded bit default null ) 
result( 
  "VesselId" integer,
  "AvailabilityId" integer,
  "ContractId" integer,
  "WorkItemId" integer,
  "SpecificationId" integer,
  "FundingId" integer,
  "EstimateId" integer,
  "VesselName" char(80),
  "Title" char(256),
  "Availability" char(128),
  "SWBS" char(4),
  "SWBSTitle" char(128),
  "SONum" char(50),
  "Requisition" char(256),
  "PurchaseOrder" char(256),
  "SpecificationFileName" char(125),
  "StartDate" date,
  "EndDate" date,
  "ProjectCode" char(20),
  "TaskCode" char(20),
  "ExpenditureTypeCode" char(10),
  "LaborHours" numeric(15,2),
  "LaborTotal" numeric(15,2),
  "LaborRate" numeric(15,2),
  "OtherDirect" numeric(15,2),
  "EstimateFileName" char(256),
  "VesselIsEditable" bit,
  "AvailabilityIsEditable" bit,
  "ServiceOrderNumberIsEditable" bit,
  "TitleIsEditable" bit,
  "SpecificationIsEditable" bit,
  "FundingIsEditable" bit,
  "SWBSIsEditable" bit,
  "RequisitionIsEditable" bit,
  "PurchaseOrderIsEditable" bit,
  "AttachmentsAreEditable" bit,
  "DatesAreEditable" bit,
  "CostsAreEditable" bit,
  "LineItemDollars" numeric(15,2),
  "LaborHoursIsEditable" bit,
  "LaborRateIsEditable" bit,
  "LaborTotalIsEditable" bit,
  "OtherDirectIsEditable" bit,
  "LineItemIsEditable" bit,
  "ProjectCodeEncoded" char(50),
  "TaskCodeEncoded" char(50) ) 
begin
  --2014-05-29 RJM updated to use PAV.NodeIdDecode/RowIdDecode
  --2016-11-04 RJM Added Bits for LineItem/Estimate tabs
  --  2017-05-25 RJM Added b64 encoding
  --2017-07-05 RJM added more b64
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @WorkItemLibraryId integer;
  declare @VesselClassId integer;
  declare @ProgramManagerCode char(10);
  declare @ServiceOrderType char(15);
  declare @AvailabilityType char(25);
  declare @NodeType char(25);
  declare @Node char(25);
  declare @ReferenceTypeId integer;
  declare @WorkItemReferenceType char(15);
  declare @EquipmentId integer;
  declare @WorkItemReferenceId integer;
  declare @WorkRequestId integer;
  if @Module is null then set @Module = 'Availabilities' end if;
  set @RowId = "REPLACE"(@RowId,',ContractId,Add a WP/SO',',ContractId,-1');
  if @Module = 'maintenance' then --Use Row Key instead of RowId
    call "SPM"."RowIDDecode"(@RowId,@VesselId,@WorkItemLibraryId,@WorkItemId);
    if @WorkItemId is not null then
      select first
        "AvailabilityId",
        "ContractId"
        into @AvailabilityId,
        @ContractId
        from "PNG"."ViewContractsAvaliabilitiesWorkItems"
        where "VesselId" = @VesselId
        and "WorkItemId" = @WorkItemId
    end if
  --message 'VesselId=' || @VesselId || ', WorkItemLibraryId=' || @WorkItemLibraryId || ', EquipmentId=' || @EquipmentId type info to client;
  elseif @Module = 'repair' then
    if "CHARINDEX"(@RowId,'WorkRequestId') > 0 then
      call "PNG"."RowIdDecode"(@RowId,@VesselId,@WorkRequestId,@AvailabilityId,@ContractId,@WorkItemId)
    else
      call "PAV"."DecodeNodeRowId"(@NodeId,@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
    end if
  elseif @Module = 'availabilities' then
    if @NodeId is not null then call "PAV"."NodeIdDecode"(@NodeId,@NodeType,@Node,@Vesselid,@VesselClassId,@ProgramManagerCode,@AvailabilityType,@AvailabilityId,@ServiceOrderType) end if;
    if @RowId is not null then call "PAV"."RowIdDecode"(@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId,@ReferenceTypeId,@WorkItemReferenceType,@EquipmentId,@WorkItemReferenceId) end if
  else
    call "PAV"."DecodeNodeRowId"(@NodeId,@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
  end if;
  if @Action is null and @AvailabilityId is null then
    set @Action = 'Add'
  end if;
  call "PAV"."ServiceOrderAddEditDialog"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId,@Action,@Module,@WorkItemLibraryId,@WorkRequestId,@EnableLineItemEstimateTabs,@IsEncoded)
end