create procedure --JLD
"_SWA"."MachineryHistoryAttachments"( 
  in @RowId char(1024) ) 
result( 
  "AttachmentRowId" char(1024),
  "AttachmentBytes" integer,
  "AttachmentTitle" char(200),
  "AttachmentDescription" char(200),
  "AttachmentPermissions" integer ) 
begin
  /*
2018-06-18 JLD E-03966 B-18267
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MachineryHistoryId integer;
  declare @HistoryItemId bigint;
  declare @TestResultId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @HistoryItemId = "SWA"."KeyValuePairParse"(@RowId,'HistoryItemId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "SWA"."MachineryHistoryAttachments"(@VesselId,@EquipmentId,@MachineryHistoryId,@HistoryItemId,@TestResultId,@MaintenanceProcedureId)
end