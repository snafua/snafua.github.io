create procedure --JLD
"_ACM"."RepairCompletionMaintenanceInsertUpdate"( 
  in @RowId char(1024),
  in @EquipmentRowId char(1024),
  in @Meter integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-05-17 JLD E-03377 B-17750
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @MachineryHistoryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'WorkRequestId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  call "ACM"."RepairCompletionMaintenanceInsertUpdate"(@VesselId,@WorkRequestId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId,@Meter)
end