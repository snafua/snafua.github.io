create procedure --E-03647
--RJM
"_SWA"."MachineryHistoryDetailsReport"( 
  in @RowIds long varchar ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "VesselClass" char(50), -- VesselClass + Hull Number
  "HistoryReportType" char(25),
  "CompletionDate" date,
  "Equipment" char(80),
  "HistoryTitle" char(50),
  "MaintenanceName" char(128),
  "HistoryDate" date,
  "Originator" char(80),
  "Narrative" long varchar,
  "HistoryItemSummary" long varchar,
  "LaborHours" numeric(10,2),
  "MaintenanceLevel" char(2),
  "DocumentedDateTimestamp" date,
  "PriorityStatus" char(20) ) 
begin
  /*
2018-01-08 RJM
2018-03-28 RJM Added LaborHours, MaintenanceLevel, DocumentedDateTimestamp, Prior, concat Narrative and HistoryItemSummary
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MachineryHistoryId integer;
  declare @HistoryItemId bigint;
  declare @TestResultId integer;
  declare @WorkItemId integer;
  declare @TransaltId integer;
  declare @MaintenanceProcedureId integer;
  declare @RowNum integer;
  declare local temporary table @MachineryRows(
    "VesselId" integer null,
    "VesselName" char(80) null,
    "VesselClass" char(50) null,
    "HistoryReportType" char(25) null,
    "CompletionDate" date null,
    "Equipment" char(80) null,
    "HistoryTitle" char(50) null,
    "MaintenanceName" char(128) null,
    "HistoryDate" date null,
    "Originator" char(80) null,
    "Narrative" long varchar null,
    "HistoryItemSummary" long varchar null,
    "LaborHours" numeric(10,2) null,
    "MaintenanceLevel" char(2) null,
    "DocumentedDateTimestamp" date null,
    "PriorityStatus" char(20) null,
    "EquipmentId" integer null,
    "MachineryHistoryId" integer null,
    "HistoryItemId" integer null,
    "TestResultId" integer null,
    "WorkItemId" integer null,
    "TransaltId" integer null,
    "MaintenanceProcedureId" integer null,
    ) not transactional;
  set @RowNum = 0;
  for "MachineryRows" as "MachineryRowCursor" insensitive cursor for
    select "CSValue" as "_MachineryRowData"
      from "SWA"."ParseList"(@RowIds,';')
  do
    set @VesselId = "SWA"."KeyValuePairParse"("_MachineryRowData",'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"("_MachineryRowData",'EquipmentId');
    set @MachineryHistoryId = "SWA"."KeyValuePairParse"("_MachineryRowData",'MachineryHistoryId');
    set @HistoryItemId = "SWA"."KeyValuePairParse"("_MachineryRowData",'HistoryItemId');
    set @TestResultId = "SWA"."KeyValuePairParse"("_MachineryRowData",'TestResultId');
    set @WorkItemId = "SWA"."KeyValuePairParse"("_MachineryRowData",'WorkItemId');
    set @TransaltId = "SWA"."KeyValuePairParse"("_MachineryRowData",'TransaltId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"("_MachineryRowData",'MaintenanceProcedureId');
    insert into @MachineryRows( "VesselId","VesselName","VesselClass","HistoryReportType","CompletionDate",
      "Equipment","HistoryTitle","MaintenanceName","HistoryDate",
      "Originator","Narrative","HistoryItemSummary",
      "LaborHours","MaintenanceLevel","DocumentedDateTimestamp","PriorityStatus",
      "EquipmentId","MachineryHistoryId","HistoryItemId","TestResultId","WorkItemId","TransaltId","MaintenanceProcedureId" ) 
      select "VesselId","VesselName","VesselClass","HistoryReportType","CompletionDate",
        "Equipment","HistoryTitle","MaintenanceName","HistoryDate",
        "Originator","Narrative",
        "HistoryItemSummary",
        "LaborHours","MaintenanceLevel","DocumentedDateTimestamp","PriorityStatus",
        @EquipmentId,@MachineryHistoryId,@HistoryItemId,@TestResultId,@WorkItemId,@TransaltId,@MaintenanceProcedureId
        from "SWA"."MachineryHistoryDetailsReport"(@VesselId,@EquipmentId,@MachineryHistoryId,@HistoryItemId,@TestResultId,@WorkItemId,@TransaltId,@MaintenanceProcedureId);
    set @RowNum = @RowNum+1
  end for;
  select "VesselId" as "VesselId",
    "VesselName" as "VesselName",
    "VesselClass" as "VesselClass",
    "HistoryReportType" as "HistoryReportType",
    "CompletionDate" as "CompletionDate",
    "Equipment" as "Equipment",
    "HistoryTitle" as "HistoryTitle",
    "MaintenanceName" as "MaintenanceName",
    "HistoryDate" as "HistoryDate",
    "Originator" as "Originator",
    "ECO"."RTFConvertDLL"('ANSI',"Narrative") as "Narrative",
    "SWA"."MachineryHistoryItemDetailsSummary"(@VesselId,@EquipmentId,@MachineryHistoryId,@TestResultId,@WorkItemId,@TransaltId,@MaintenanceProcedureId) as "HistoryItemSummary",
    "LaborHours",
    "MaintenanceLevel",
    "DocumentedDateTimestamp",
    "PriorityStatus"
    from @MachineryRows
end