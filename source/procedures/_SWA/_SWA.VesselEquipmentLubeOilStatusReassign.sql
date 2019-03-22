create procedure "_SWA"."VesselEquipmentLubeOilStatusReassign"( 
  in @RowId char(1024),
  in @Status char(50) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MeasPtId integer;
  declare @LubeOilSampleID integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MeasPtId = "SWA"."KeyValuePairParse"(@RowId,'MeasPtId');
  set @LubeOilSampleID = "SWA"."KeyValuePairParse"(@RowId,'LubeOilSampleID');
  call "SWA"."VesselEquipmentLubeOilStatusReassign"(@VesselId,@EquipmentId,@MeasPtId,@LubeOilSampleID,@Status)
end