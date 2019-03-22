create function "_SWA"."LaunchPengJavaScriptObjectNotation"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer ) 
returns long varchar
begin
  declare @Result long varchar;
  declare @VesselId smallint;
  declare @WorkRequestId integer;
  declare @AvailabilityId integer;
  declare @ContractId integer;
  declare @WorkItemId integer;
  declare @ContractType char(50);
  if @ApplicationId = "PAV"."ApplicationId"() then
    set @VesselId = "PAV"."RowIdDecodeValue"(@RowId,'VesselId');
    set @WorkItemId = "PAV"."RowIdDecodeValue"(@RowId,'WorkItemId');
    set @ContractId = "PAV"."RowIdDecodeValue"(@RowId,'ContractId');
    set @ContractType = "PNG"."ContractType"(@VesselId,@ContractId)
  elseif @ApplicationId = "LIH"."ApplicationId"() then
    call "LIH"."RowIdDecode"(@RowId,@VesselId,@WorkItemId)
  elseif @ApplicationId = "PNG"."ApplicationId"() then
    call "PNG"."RowIdDecode"(@RowId,@VesselId,@WorkRequestId,@AvailabilityId,@ContractId,@WorkItemId)
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
    set @ContractId = "SWA"."KeyValuePairParse"(@RowId,'ContractId');
    set @ContractType = "PNG"."ContractType"(@VesselId,@ContractId)
  end if;
  if @ContractId is null then
    set @ContractId = "PNG"."WorkItemContractId"(@VesselId,@WorkItemId)
  end if;
  if @AvailabilityId is null then
    set @AvailabilityId = "PNG"."WorkItemAvailabilityId"(@VesselId,@WorkItemId)
  end if;
  if @ContractType is null then
    set @ContractType = "PNG"."WorkItemContractType"(@VesselId,@WorkItemId)
  end if;
  set @Result = "PNG"."LaunchJavaScriptObjectNotation"(@VesselId,@AvailabilityId,@ContractId,@ContractType);
  return(@Result)
end