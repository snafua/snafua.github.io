create procedure "_PAV"."WorkItemsEquipmentsSelectedList"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "NodeId" char(1024),
  "NodeTitle" char(1024) ) 
begin
  declare @VesselId smallint;
  declare @WorkItemId integer;
  declare @AvailabilityId integer;
  declare @ContractId integer;
  declare @WorkRequestId integer;
  if @ApplicationId is null then set @ApplicationId = "PAV"."ApplicationId"() end if;
  if @ApplicationId = "PAV"."ApplicationId"() then
    set @VesselId = "PAV"."RowIdDecodeValue"(@ModuleRowId,'VesselId');
    set @WorkItemId = "PAV"."RowIdDecodeValue"(@ModuleRowId,'WorkItemId')
  elseif @ApplicationId = "LIH"."ApplicationId"() then
    call "LIH"."RowIdDecode"(@ModuleRowId,@VesselId,@WorkItemId)
  elseif @ApplicationId = "PNG"."ApplicationId"() then
    call "PNG"."RowIdDecode"(@ModuleRowId,@VesselId,@WorkRequestId,@AvailabilityId,@ContractId,@WorkItemId)
  end if;
  call "PAV"."WorkItemsEquipmentsSelectedList"(@VesselId,@WorkItemId)
end