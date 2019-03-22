create procedure --E-03519
--RJM
"_ACM"."PartRemove"( 
  in @PartRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018=08-15 RJM
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @WorkRequestId integer;
  declare @PartId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@PartRowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@PartRowId,'EquipmentId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@PartRowId,'WorkRequestId');
  set @PartId = "SWA"."KeyValuePairParse"(@PartRowId,'PartId');
  call "ACM"."PartRemove"(@VesselId,@EquipmentId,@WorkRequestId,@PartId)
end