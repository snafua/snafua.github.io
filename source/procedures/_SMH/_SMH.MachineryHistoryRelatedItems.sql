create procedure -- AIM
"_SMH"."MachineryHistoryRelatedItems"( 
  in @RowId char(1024) ) 
result( 
  "RelatedItemRowId" char(1024),
  "RelatedItemId" char(50),
  "RelatedItemTitle" char(1024),
  "RelatedItemType" char(128),
  "VesselId" integer,
  "EquipmentId" integer,
  "TestType" char(128),
  "HistoryItemId" integer,
  "WorkItemId" integer,
  "RelatedItemPermission" integer ) 
begin
  /*
2018-05-08 RJM E-03924 History Items Related Items
2018-05-09 JHM Updated to select from the SMH procedure in order to provide an empty result set when no select is executed
2018-05-18 RJM Added @HistoryItemId
2018-07-12 RJM E-04294 B-18300 added MaintenanceProcedureId
2018-11-08 AIM E-04237 D-04186 Added VesselId,EquipmentId,TestType and HistoryItemId columns
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
  select "RelatedItemRowId",
    "RelatedItemId",
    "RelatedItemTitle",
    "RelatedItemType",
    "VesselId",
    "EquipmentId",
    "TestType",
    "HistoryItemId",
    "WorkItemId",
    "RelatedItemPermission"
    from "SMH"."MachineryHistoryRelatedItems"(@VesselId,@EquipmentId,@MachineryHistoryId,@TestResultId,@HistoryItemId,@MaintenanceProcedureId)
end