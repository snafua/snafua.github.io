create procedure --E-03967
--E-03647
--RJM
"_SMH"."MachineryHistoryItemSummary"( 
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
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId');
  call "SMH"."MachineryHistoryItemDetailsSummary"(@VesselId,@EquipmentId,@MachineryHistoryId,@TestResultId,@WorkItemId,@TransaltId)
/*
DECLARE @VesselId           INTEGER;
DECLARE @EquipmentId        INTEGER;
DECLARE @HistoryItemId      INTEGER;
DECLARE @HistoryItemTypeId  INTEGER;
DECLARE @HistoryItemType    CHAR(20);

SET @VesselId           = SWA.KeyValuePairParse(@RowId, 'VesselId');
SET @HistoryItemId      = SWA.KeyValuePairParse(@RowId, 'HistoryItemId');
SET @EquipmentId        = SWA.KeyValuePairParse(@RowId, 'EquipmentId');
SET @HistoryItemTypeId  = SWA.KeyValuePairParse(@RowId, 'HistoryItemTypeId');

IF @HistoryItemTypeId   = 0 THEN
SET @HistoryItemType  = 'Maintenance';
ELSE
SET @HistoryItemType  = 'Test Result';
END IF;

CALL SMH.MachineryHistoryItemSummary(@VesselId,@EquipmentId,@HistoryItemId,@HistoryItemType);
*/
end