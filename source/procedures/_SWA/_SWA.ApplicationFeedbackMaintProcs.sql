create procedure "_SWA"."ApplicationFeedbackMaintProcs"( 
  in @EquipmentNodeId char(1024),
  in @SearchText long varchar default null ) 
result( 
  "MCode" char(4),
  "Title" char(50),
  "EFD" char(80),
  "MaintenanceProcedureId" integer,
  "RowId" char(1024) ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'EquipmentId');
  call "SWA"."ApplicationFeedbackMaintProcs"(@VesselId,@EquipmentId,@SearchText)
end