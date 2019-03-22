create procedure --RJM
"_SWA"."VesselEquipmentClassificationOperationalStatusSave"( 
  in @VesselId char(1024),
  in @NodeId char(1024),
  in @OperationalStatusId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-10-24 RJM
*/
  declare @VesselIdInt integer;
  declare @ClassificationId integer;
  declare @SystemId integer;
  if "ISNUMERIC"(@VesselId) = 1 then
    set @VesselIdInt = @VesselId
  else
    set @VesselIdInt = "SWA"."KeyValuePairParse"(@VesselId,'VesselId')
  end if;
  set @ClassificationId = "SWA"."KeyValuePairParse"(@NodeId,'ClassificationId');
  set @SystemId = "SWA"."KeyValuePairParse"(@NodeId,'SystemId');
  call "SWA"."VesselEquipmentClassificationOperationalStatusSave"(@VesselIdInt,@OperationalStatusId,@ClassificationId,@SystemId)
end