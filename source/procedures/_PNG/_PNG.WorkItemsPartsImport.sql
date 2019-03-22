create procedure "_PNG"."WorkItemsPartsImport"( 
  in @ModuleRowId char(1024),
  in @partsRowIds char(1024),
  in @EquipmentRowId char(1024) default null,
  in @ApplicationId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@ModuleRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@ModuleRowId,'WorkItemId');
  call "PNG"."WorkItemsPartsImport"(@VesselId,@WorkItemId,@partsRowIds,@EquipmentRowId,@ApplicationId)
end