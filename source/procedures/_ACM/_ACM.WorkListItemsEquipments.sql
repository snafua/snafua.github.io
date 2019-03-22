create procedure "_ACM"."WorkListItemsEquipments"( 
  in @RowId char(256) ) 
result( 
  "RowId" char(256),
  "EquipmentDescription" char(128),
  "EquipmentFailureMode" char(50),
  "EquipmentAllowancePartsList" char(20),
  "EquipmentManufacturer" char(128),
  "EquipmentModel" char(128),
  "EquipmentLocation" char(128) ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "ACM"."WorkListItemsEquipments"(@VesselId,@WorkRequestId)
end