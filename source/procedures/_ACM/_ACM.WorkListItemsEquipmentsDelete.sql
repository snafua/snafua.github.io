create procedure --JLD
"_ACM"."WorkListItemsEquipmentsDelete"( 
  in @EquipmentRowId char(1024),
  in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-10-12 JLD E-04166 B-19397
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  call "ACM"."WorkListItemsEquipmentsDelete"(@VesselId,@WorkRequestId,@EquipmentId)
end