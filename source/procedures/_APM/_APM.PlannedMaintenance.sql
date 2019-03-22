create procedure --E-04171 B-19385
--RJM
"_APM"."PlannedMaintenance"( 
  in @NodeId char(1024),
  in @IsLimited bit default 1,
  in @OrderBy long varchar default null,
  in @TextSearch char(1024) default null ) 
result( 
  "RowId" char(1024),
  "MaintenanceProcedureNodeId" char(1024),
  "MachineryHistoryId" integer,
  "VesselName" char(128),
  "VesselId" integer,
  "EquipmentName" char(128),
  "EquipmentId" integer,
  "EqStat" char(10),
  "Criticality" char(2),
  "TaskCode" char(25),
  "ProcedureTitle" char(50),
  "OpStat" char(10),
  "Billet" char(240),
  "Frequency" char(50),
  "CompletionDate" date,
  "LastAction" char(10),
  "ScheduleDate" date,
  "Permission" tinyint,
  "HasAttachments" bit,
  "TotalRows" integer,
  "OrderBy" long varchar,
  "ItemType" char(15),
  "VesselRows" integer,
  "BilletId" integer,
  "SpecialTestRequired" bit,
  "CompletePermissions" integer,
  "DeferPermissions" integer,
  "ResetPermissions" integer,
  "UncompletePermissions" integer,
  "HistoryPermissions" integer,
  "OnSchedule" char(3) ) 
begin
  /*
2018-09-25 E-04171 B-19385 RJM Added @TextSearch
*/
  declare @ApplicationId integer;
  declare @NodeType char(128);
  declare @AllVessels bit;
  declare @VesselId integer;
  declare @DepartmentId integer;
  declare @BilletId integer;
  declare @SystemId integer;
  declare @ClassificationId integer;
  declare @EquipmentId integer;
  declare @EquipmentHSC char(12);
  declare @UseEquipmentHSC bit;
  declare @NodeSettingId integer;
  declare @OrderBySettingId integer;
  declare @UserId integer;
  declare @SystemIsNULL bit;
  declare @ClassificationIsNULL bit;
  set @ApplicationId = "APM"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderby');
  if "ECO"."CheckNull"(@NodeId) is null then
    set @NodeId = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'NavigationNode')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeSettingId,@NodeId)
  end if;
  if "ECO"."CheckNull"(@OrderBy) is null then
    set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
  end if;
  if @NodeId is not null then
    set @NodeType = "SWA"."KeyValuePairParse"(@NodeId,'NodeType');
    set @AllVessels = "SWA"."KeyValuePairParse"(@NodeId,'AllVessels');
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
    set @DepartmentId = "SWA"."KeyValuePairParse"(@NodeId,'DepartmentId');
    set @BilletId = "SWA"."KeyValuePairParse"(@NodeId,'BilletId');
    if("SWA"."KeyValuePairParse"(@NodeId,'SystemId') = 'NULL') then
      set @SystemIsNULL = 1;
      set @SystemId = null
    else
      set @SystemIsNULL = 0;
      set @SystemId = "SWA"."KeyValuePairParse"(@NodeId,'SystemId')
    end if;
    if("SWA"."KeyValuePairParse"(@NodeId,'ClassificationId') = 'NULL') then
      set @ClassificationIsNULL = 1;
      set @ClassificationId = null
    else
      set @ClassificationIsNULL = 0;
      set @ClassificationId = "SWA"."KeyValuePairParse"(@NodeId,'ClassificationId')
    end if;
    set @EquipmentId = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentId');
    set @EquipmentHSC = "BASE64_DECODE"("SWA"."KeyValuePairParse"(@NodeId,'EquipmentHSC'));
    if(@NodeType = 'EquipmentByHSC') then set @UseEquipmentHSC = 1
    else set @UseEquipmentHSC = 0
    end if
  end if;
  set @IsLimited = "ISNULL"(@IsLimited,1);
  if("ECO"."CheckNull"(@OrderBy) is null) then
    set @OrderBy = 'VesselName ASC, EquipmentName ASC, CompletionDate ASC';
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
  end if;
  select
    "APM"."PlannedMaintenanceRowIdEncode"(
    "VesselId",
    "EquipmentId",
    "MaintenanceProcedureId",
    "BilletId",
    "IntervalOperationalStatusId") as "RowId",
    "APM"."MaintenanceProcedureNodeIdIdEncode"(
    "VesselId",
    "EquipmentId",
    "MaintenanceProcedureId") as "MaintenanceProcedureNodeId",
    -- TODO: Front end update needed to make this unnecessary
    null as "MachineryHistoryId",
    "VesselName" as "VesselName",
    "VesselId" as "VesselId",
    "EquipmentDescription" as "EquipmentName",
    "EquipmentId" as "EquipmentId",
    "EquipmentOperationalStatusCode" as "EqStat",
    "MaintenanceLevelCode" as "Criticality",
    "TaskCode" as "TaskCode",
    "MaintenanceProcedureTitle" as "ProcedureTitle",
    "IntervalOperationalStatusCode" as "OpStat",
    "Billet" as "Billet",
    "MaintenanceFrequency" as "Frequency",
    "MaintenanceCompletionDate" as "CompletionDate",
    "MaintenanceLastAction" as "LastAction",
    "MaintenanceScheduleDate" as "ScheduleDate",
    "Permission" as "Permission",
    "MaintenanceHasAttachments" as "HasAttachments",
    "TotalRows" as "TotalRows",
    "OrderBy" as "OrderBy",
    -- TODO: Front end update needed to make this unnecessary
    null as "ItemType",
    "VesselRows" as "VesselRows",
    "BilletId" as "BilletId",
    "SpecialTestRequired" as "SpecialTestRequired",
    "CompletePermissions" as "CompletePermissions",
    "DeferPermissions" as "DeferPermissions",
    "ResetPermissions" as "ResetPermissions",
    "UncompletePermissions" as "UncompletePermissions",
    null as "HistoryPermissions",
    if("ISNULL"("MaintenanceOnSchedule",0) = 1) then 'Yes' else 'No' endif as "OnSchedule"
    from "APM"."PlannedMaintenanceEx"(@NodeType,@AllVessels,@VesselId,@DepartmentId,@BilletId,@SystemId,@ClassificationId,@EquipmentId,@UseEquipmentHSC,@IsLimited,@OrderBy,@ApplicationId,@EquipmentHSC,@SystemIsNULL,@ClassificationIsNULL,@TextSearch)
end