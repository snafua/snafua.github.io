create procedure --JLD
"_ACM"."WorkListItemsEquipmentsInsertUpdate"( 
  in @EquipmentRowId char(1024),
  in @RowId char(1024),
  in @Operable bit default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-10-12 JLD E-04166 B-19397
2019-02-06 JLD E-04767 B-20617 Updated to take in Operable Bit
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @EquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  call "ACM"."WorkListItemsEquipmentsInsertUpdate"(@VesselId,@WorkRequestId,@EquipmentId)
end