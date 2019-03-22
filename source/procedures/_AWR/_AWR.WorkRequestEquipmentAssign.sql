create procedure "_AWR"."WorkRequestEquipmentAssign"( 
  in @ApplicationId integer,
  in @RowId char(1024),
  in @EquipmentNodeId char(256) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @EquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'EquipmentId');
  call "AWR"."WorkRequestEquipmentAssign"(@VesselId,@WorkRequestId,@EquipmentId)
end