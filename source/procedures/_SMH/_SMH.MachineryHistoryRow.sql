create procedure --E-03647
--RJM
"_SMH"."MachineryHistoryRow"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselId" smallint,
  "EquipmentId" integer,
  "HistoryItemId" integer,
  "MachineryHistoryId" integer,
  "TestResultId" integer,
  "MaintenanceLevel" char(20),
  "VesselName" char(80),
  "EquipmentName" char(80),
  "HistoryItemType" char(20),
  "HistoryItemSubType" char(20),
  "HistoryItemDescription" char(50),
  "Originator" char(85),
  "HistoryItemTimestamp" date,
  "HistoryItemSummaryTimestamp" date,
  "HasAttachments" bit,
  "HasTestResults" bit,
  "HasMachineryHistory" bit,
  "HasWorkRequest" bit,
  "HasCorrespondance" bit,
  "PriorityStatus" char(20),
  "PriorityStatusIndex" integer,
  "HasRelatedItems" bit,
  "HistoryPermission" integer,
  "ReportId" integer ) 
begin
  /*
2018-04-05 RJM
2018-04-17 RJM added HistoryPermission
2018-05-18 RJM added TestResultId, updated to return RowId exactly as passed in
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MachineryHistoryId integer;
  declare @TestResultId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  call "SMH"."MachineryHistoryRow"(@VesselId,@EquipmentId,@MachineryHistoryId,@TestResultId,@RowId)
end