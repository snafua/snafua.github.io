create procedure "_PNG"."ContractorsList"( 
  in @RowId char(1024) default null ) 
result( 
  "ContractorId" integer,
  "Contractor" char(128),
  "IsSelected" bit ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  declare @WorkItemId integer;
  declare @ContractId integer;
  declare @ContractorId integer;
  call "PNG"."ApplicationRowIdDecode"(@RowId,null,@VesselId,@WorkItemId,@AvailabilityId,@ContractId);
  if @ContractId is null and @WorkItemId is not null then
    set @ContractId = "PNG"."WorkItemContractId"(@VesselId,@WorkItemId)
  end if;
  set @ContractorId = "PNG"."ContractContractorId"(@VesselId,@ContractId);
  select "EntityId" as "ContractorId",
    "EntityName" as "Contractor",
    if "EntityId" = @ContractorId then
      1
    else 0
    endif as "IsSelected"
    from "PNG"."ContractorsList"()
end