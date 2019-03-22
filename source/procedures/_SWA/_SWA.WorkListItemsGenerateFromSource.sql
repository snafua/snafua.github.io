create procedure --JLD
"_SWA"."WorkListItemsGenerateFromSource"( 
  in @RowId char(1024),
  in @RowType char(20) ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-12-07 JLD E-04525 B-20313
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @EquipmentId integer;
  declare @BilletId integer;
  declare @MaintenanceProcedureId integer;
  declare @HistoryItemId integer;
  declare @TestResultId integer;
  declare @MachineryHistoryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @BilletId = "SWA"."KeyValuePairParse"(@RowId,'BilletId');
  set @HistoryItemId = "SWA"."KeyValuePairParse"(@RowId,'HistoryItemId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  if(@RowType = 'TestResult') then
    call "SWA"."WorkListItemsGenerateFromTestResult"(@VesselId,@EquipmentId,@TestResultId,@MaintenanceProcedureId,@MachineryHistoryId,@HistoryItemId,@BilletId)
  elseif(@RowType = 'MachineryHistory') then
    call "SWA"."WorkListItemsGenerateFromMachineryHistory"(@VesselId,@EquipmentId,@MachineryHistoryId,@HistoryItemId,@TestResultId,@BilletId)
  elseif(@RowType = 'Maintenance') then
    call "SWA"."WorkListItemsGenerateFromMaintenance"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@BilletId)
  elseif(@RowType = 'WorkListItem') then
    call "SWA"."WorkListItemsGenerateFromRepair"(@VesselId,@WorkRequestId)
  end if
end