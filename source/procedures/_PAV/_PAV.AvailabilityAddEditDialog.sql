create procedure "_PAV"."AvailabilityAddEditDialog"( 
  in @NodeId char(256),
  in @RowId char(256),
  in @Action char(15),
  in @Module char(25) default 'Availabilities' ) 
result( 
  "VesselId" integer,
  "AvailabilityId" integer,
  "VesselName" char(128),
  "AvailabilityType" char(15),
  "AvailabilityBeginDate" date,
  "AvailabilityEndDate" date,
  "VesselIsEditable" bit,
  "TypeIsEditable" bit,
  "DatesAreEditable" bit,
  "AttachmentsAreEditable" bit ) 
begin
  --2014-05-29 RJM updated to use PAV. NodeidDcode/RowIdDecode
  declare @VesselId integer;
  declare @AvailabilityId integer;
  declare @ContractId integer;
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
  if @Module is null then set @Module = 'Availabilities' end if;
  if @Module = 'maintenance' then --Use Row Key instead of RowId
    call "SPM"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId,@WorkItemId)
  elseif @Module = 'Availabilities' then
    if @NodeId is not null then call "PAV"."NodeIdDecode"(@NodeId,@NodeType,@Node,@Vesselid,@VesselClassId,@ProgramManagerCode,@AvailabilityType,@AvailabilityId,@ServiceOrderType) end if;
    if @RowId is not null then call "PAV"."RowIdDecode"(@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId,@ReferenceTypeId,@WorkItemReferenceType,@EquipmentId,@WorkItemReferenceId)
    end if
  else call "PAV"."DecodeNodeRowId"(@NodeId,@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
  end if;
  if @Action is null and @AvailabilityId is null then
    set @Action = 'Add'
  end if;
  call "PAV"."AvailabilityAddEditDialog"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId,@Action,@Module)
end