create procedure "_LIT"."MaintenancePartsPermissions"( 
  in @Action char(15) default null,
  in @ApplicationId integer default null,
  in @NodeId char(1024) default null,
  in @RowId char(1024) default null ) 
result( 
  "CanAddEquipment" bit,
  "CanAddParts" bit ) 
begin
  declare @VesselId integer;
  if @RowId is null then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  if @ApplicationId is null then
    set @ApplicationId = "LIT"."ApplicationId"()
  end if;
  call "LIT"."MaintenancePartsPermissions"(@VesselId,@ApplicationId)
end