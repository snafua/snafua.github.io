create procedure --B-20016   E-04768
--RJM
"_SWA"."MaintenanceAttachments"( 
  in @RowId char(1024) ) 
result( 
  "AttachmentRowId" char(1024),
  "AttachmentBytes" integer,
  "AttachmentTitle" char(200),
  "AttachmentDescription" char(200),
  "AttachmentPermissions" integer,
  "AttachmentBytesEx" char(25) ) 
begin
  /*
2018-11-01 RJM Added AttachmentBytesEx for report B-20016   E-04768
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "SWA"."MaintenanceAttachments"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
end