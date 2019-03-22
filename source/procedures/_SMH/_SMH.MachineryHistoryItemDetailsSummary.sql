create procedure --E-03967
--RJM
"_SMH"."MachineryHistoryItemDetailsSummary"( 
  in @RowId char(1024) ) 
result( 
  "HistoryItemSummary" long varchar,
  "IsBinary" bit ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MachineryHistoryId integer;
  declare @TestResultId integer;
  declare @WorkItemId integer;
  declare @TransaltId integer;
  declare @MaintenanceProcedureId integer;
  declare @TextFormat char(4);
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @TextFormat = "SWA"."KeyValuePairParse"(@RowId,'TextFormat');
  call "SMH"."MachineryHistoryItemDetailsSummary"(@VesselId,@EquipmentId,@MachineryHistoryId,@TestResultId,@WorkItemId,@TransaltId,@MaintenanceProcedureId,@TextFormat)
end