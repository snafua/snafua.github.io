create procedure "_PAV"."WorkPackageAddEditDialog"( 
  in @NodeId char(256),
  in @RowId char(256),
  in @Action char(15),
  in @Module char(25) default 'Availabilities',
  in @AvailabilityId integer default null ) 
result( 
  "VesselId" integer,
  "AvailabilityId" integer,
  "ContractId" integer,
  "VesselName" char(128),
  "Availability" char(128),
  "ContractNumber" char(25),
  "PortEngineerName" char(128),
  "PortEngineerId" integer,
  "ContractBeginDate" date,
  "ContractEndDate" date,
  "FundingCodes" long varchar,
  "VesselIsEditable" bit,
  "AvailabilityIsEditable" bit,
  "ContractNumberIsEditable" bit,
  "PortEngineerIsEditable" bit,
  "DatesAreEditable" bit,
  "FundingIsEditable" bit,
  "ContractAwardDate" date,
  "ContractorId" integer,
  "ContractLocationId" integer,
  "ContractorIsEditable" bit,
  "AwardDateIsEditable" bit,
  "LocationIsEditable" bit,
  "CanAddContractor" bit,
  "ContractorName" char(128),
  "LocationName" char(128) ) 
begin
  declare @VesselId integer;
  declare @ContractId integer;
  declare @WorkItemId integer;
  declare @WorkItemLibraryId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @WorkItemLibraryReferenceId integer;
  declare @WorkItemReferenceId integer;
  declare @AttachmentId integer;
  declare @NodeType char(25);
  declare @Node char(25);
  declare @VesselClassId integer;
  declare @ProgramManagerCode char(10);
  declare @AvailabilityType char(25);
  declare @ServiceOrderType char(25);
  declare @ApplicationId integer;
  if @Module = 'maintenance' then
    call "SPM"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId,@WorkItemId)
  elseif @Module = 'repair' then
    call "PAV"."DecodeNodeRowId"(@NodeId,@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
  else
    if @RowId is not null then
      set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
      set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
      set @ContractId = "SWA"."KeyValuePairParse"(@RowId,'ContractId');
      set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
      set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId')
    else
      call "PAV"."NodeIdDecode"(@NodeId,@NodeType,@Node,@VesselId,@VesselClassId,@ProgramManagerCode,@AvailabilityType,@AvailabilityId,@ServiceOrderType)
    end if end if;
  if @Action is null and @AvailabilityId is null then
    set @Action = 'Add'
  end if;
  call "PAV"."WorkPackageAddEditDialog"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId,@Action,@Module)
end