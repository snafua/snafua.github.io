create procedure --E-03647
--RJM
"_SMH"."MachineryHistoryItemDetails"( 
  in @RowId char(1024) default null,
  in @NodeId char(1024) default null ) 
result( 
  "RowId" char(1024),
  "VesselId" integer,
  "VesselName" char(128),
  "EquipmentId" integer,
  "EquipmentNodeId" char(1024),
  "EquipmentDescription" char(128),
  "MaintenanceLevel" char(2),
  "Title" char(50),
  "HistoryItemType" char(20),
  "CompletedDateTimestamp" date,
  "DocumentedDateTimestamp" date,
  "PriorityStatus" char(20),
  "Originator" char(128),
  "LaborHours" numeric(10,2),
  "HistoryItemSummary" long varchar,
  "Narrative" long varchar,
  "CompletedDateMin" date,
  "CompletedDateMax" date,
  "VesselPermissions" integer,
  "EquipmentPermissions" integer,
  "LevelPermissions" integer,
  "TitlePermissions" integer,
  "HistoryItemTypePermissions" integer,
  "CompletedDatePermissions" integer,
  "DocumentedDatePermissions" integer,
  "PriorityStatusPermissions" integer,
  "OriginatorPermissions" integer,
  "LaborHoursPermissions" integer,
  "SummaryPermissions" integer,
  "NarrativePermissions" integer,
  "AttachmentsPermissions" integer,
  "ReportType" char(3),
  "ReportId" integer,
  "MachineryHistoryId" integer ) 
begin
  /*
2018-05-11 RJM added   MachineryHistoryId to results
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MachineryHistoryId integer;
  declare @HistoryItemId bigint;
  declare @TestResultId integer;
  declare @MaintenanceProcedureId integer;
  declare @WorkItemId integer;
  declare @TransaltId integer;
  set @RowId = "ECO"."CheckNull"(@RowId);
  set @NodeId = "ECO"."CheckNull"(@NodeId);
  set @RowId = "ISNULL"(@RowId,@NodeId);
  if @RowId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
    set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
    set @HistoryItemId = "SWA"."KeyValuePairParse"(@RowId,'HistoryItemId');
    set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
    set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
    set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId')
  end if;
  if @HistoryItemId < 1000000000000 then
    if @TestResultId is not null then
      set @HistoryItemId = @HistoryItemId+1000000000000
    else
      set @HistoryItemId = @HistoryItemId+2000000000000
    end if
  end if;
  call "SMH"."MachineryHistoryItemDetails"(@VesselId,@EquipmentId,@MachineryHistoryId,@HistoryItemId,@TestResultId,@WorkItemId,@TransaltId,@MaintenanceProcedureId)
end