create procedure "_AWB"."AttachmentsLoad"( 
  in @RowId char(1024) ) 
result( 
  "AttachmentRowId" char(256),
  "FileSize" integer,
  "FileName" char(128),
  "FileDescription" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  if @MaintenanceProcedureId is not null then
    call "AWB"."AttachmentsLoad"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
  elseif @WorkRequestId is not null then
    call "ACM"."AttachmentsLoad"(@VesselId,@WorkRequestId)
  end if
end