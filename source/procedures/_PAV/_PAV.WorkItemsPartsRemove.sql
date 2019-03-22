create procedure "_PAV"."WorkItemsPartsRemove"( 
  in @PartRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @WorkItemPartId integer;
  declare @WorkItemEquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@PartRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@PartRowId,'WorkItemId');
  set @WorkItemPartId = "SWA"."KeyValuePairParse"(@PartRowId,'WorkItemPartId');
  set @WorkItemEquipmentId = "SWA"."KeyValuePairParse"(@PartRowId,'WorkItemEquipmentId');
  call "PNG"."WorkItemsPartsRemove"(@VesselId,@WorkItemId,@WorkItemPartId,@WorkItemEquipmentId)
end