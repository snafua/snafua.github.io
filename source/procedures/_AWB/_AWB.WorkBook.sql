create procedure --E-04230 B-19383
--RJM
"_AWB"."WorkBook"( 
  in @NodeId char(1024),
  in @OrderBy char(1024) default null,
  in @IsLimited bit default null,
  in @PMIARowIds char(1024) default null,
  in @TextSearch char(1024) default null ) 
result( 
  "RowId" char(1024),
  "VesselName" char(80),
  "TaskId" char(25),
  "EquipmentDescription" char(80),
  "Title" char(50),
  "Scheduled" date,
  "EstimatedManHours" numeric(10,2),
  "ActualManHours" numeric(10,2),
  "TaskStatus" char(20),
  "Billet" char(240),
  "Frequency" char(50),
  "LastCompleted" date,
  "Criticality" char(20),
  "HasAttachments" bit,
  "VesselId" integer,
  "EquipmentId" integer,
  "MachineryHistoryId" integer,
  "ItemType" char(20),
  "TestsRequired" char(1024),
  "TotalRows" integer,
  "OrderBy" char(1024),
  "CompletePermissions" integer,
  "DeferPermissions" integer,
  "ResetPermissions" integer,
  "UncompletePermissions" integer,
  "BilletPermissions" integer,
  "ItemPermissions" integer,
  "DeferralCount" integer,
  "BilletId" integer,
  "VesselRows" integer,
  "HistoryPermissions" integer,
  "BilletNodeId" char(1024),
  "SchedulerPermissions" integer,
  "RepairPermissions" integer ) 
begin
  /*
2016-05-12 RJM Added Deferral COunt to results, billetId,   VesselRows
2016-06-30 RJM Added HistoryPermissions
2016-08-31 RJM CHanged Uncomplete to "Reset"
2017-01-05 RJM Updated to save orderby even if using default
2017-05-26 RJM Added BilletNodeId
2017-10-19 RJM Added SchedulerPermissions
2018-01-11 RJM Added RepairPermissions
2018-03-22 JLD E-03927, B-17232 Modified to check if PMIA row ids exist
2018-09-24 RJM 04230 B-19383 Added @TextSearch
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
  declare @NodeSettingId integer;
  declare @OrderBySettingId integer;
  declare @UserId integer;
  declare @UseEquipmentHSC bit;
  declare @EquipmentHSC char(12);
  declare @SystemIsNULL bit;
  declare @ClassificationIsNULL bit;
  set @ApplicationId = "AWB"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderBy');
  set @UseEquipmentHSC = 0;
  if(@IsLimited is null) then
    set @IsLimited = 1
  end if;
  if "ECO"."CheckNull"(@OrderBy) is null then
    set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
  end if;
  if(@PMIARowIds is null) then
    if "ECO"."CheckNull"(@NodeId) is null then
      set @NodeId = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'NavigationNode')
    else
      call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeSettingId,@NodeId)
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
      set @EquipmentHSC = "BASE64_DECODE"("SWA"."KeyValuePairParse"(@NodeId,'EquipmentHSC'))
    end if;
    if(@NodeType = 'EquipmentByHSC') then
      set @UseEquipmentHSC = 1
    end if;
    if(@AllVessels is null) then
      set @AllVessels = 0
    end if;
    if("ECO"."CheckNull"(@OrderBy) is null) then
      set @OrderBy = 'VesselName ASC, TaskId ASC';
      call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeSettingId,@NodeId)
    end if;
    call "AWB"."WorkbookExt"(@NodeType,@AllVessels,@VesselId,@DepartmentId,@BilletId,@SystemId,@ClassificationId,@EquipmentId,@IsLimited,@OrderBy,@ApplicationId,@UseEquipmentHSC,@EquipmentHSC,@SystemIsNULL,@ClassificationIsNULL,@TextSearch)
  else
    call "AWB"."WorkbookPortEngineer"(@IsLimited,@OrderBy,@PMIARowIds)
  end if
end