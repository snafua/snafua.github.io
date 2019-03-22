create procedure "_APM"."AttachmentsLoad"( 
  in @RowId char(1024) ) 
result( 
  "AttachmentRowId" char(256),
  "AttachmentBytes" integer,
  "AttachmentFileName" char(128),
  "AttachmentDescription" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "APM"."AttachmentsLoad"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
end