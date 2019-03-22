create procedure "_AWR"."WorkRequestEquipmentList"( 
  in @ApplicationId integer,
  in @RowId char(1024) ) 
result( 
  "EquipmentRowId" char(256),
  "EFD" char(80),
  "AllowancePartsList" char(20),
  "EquipmentPermissions" integer ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "AWR"."WorkRequestEquipmentList"(@ApplicationId,@VesselId,@WorkRequestId)
end