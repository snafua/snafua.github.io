create procedure "_CMS"."TestResultsRelatedItems"( 
  in @RowId char(1024) ) 
result( 
  "RelatedItemRowId" char(1024),
  "RelatedItemId" char(50),
  "RelatedItemTitle" char(1024),
  "RelatedItemType" char(128),
  "VesselId" integer,
  "EquipmentId" integer,
  "TestType" char(128),
  "HistoryItemId" bigint,
  "WorkItemId" integer,
  "RelatedItemPermission" integer ) 
begin
  /*
2018-06-20 RJM E-04294 B-18300
2018-11-08 AIM E-04237 D-04186 Added VesselId,EquipmentId,TestType and HistoryItemId columns
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @MachineryHistoryId integer;
  declare @HistoryItemId bigint;
  declare @TestResultId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @HistoryItemId = "SWA"."KeyValuePairParse"(@RowId,'HistoryItemId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  call "CMS"."TestResultsRelatedItems"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId,@TestResultId,@HistoryItemId)
end