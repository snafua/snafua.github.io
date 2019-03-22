create procedure "_SWA"."MaintenanceAttachmentDivest"( 
  in @ApplicationId integer,
  in @RowId char(1024),
  in @AttachmentRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @AttachmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  call "SAMM"."MaintenanceAttachmentsDelete"(@VesselId,@AttachmentId,@EquipmentId,@MaintenanceProcedureId);
  select 1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    select 0 as "Success",
      "ERRORMSG"() as "ErrorMessage"
      from "DUMMY"
end