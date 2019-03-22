create procedure --RJM
"_CMS"."ConditionMonitoring"( 
  in @NodeId char(1024) default null,
  in @OrderBy char(1024) default null,
  in @IsLimited bit default null,
  in @TextSearch char(1024) default null ) 
result( 
  "RowId" char(1024),
  "VesselId" smallint,
  "EquipmentId" integer,
  "HistoryItemId" integer,
  "VesselName" char(80),
  "TaskCode" char(25),
  "EquipmentName" char(80),
  "Criticality" char(20),
  "TestType" char(20),
  "TestDate" date,
  "AnalysisTimestamp" date,
  "PriorityStatus" char(20),
  "PriorityStatusDisplayText" char(20),
  "PriorityStatusDisplayHex" char(20),
  "MaintenanceProcedureTitle" char(50),
  "HasAttachments" bit,
  "HasMachineryHistory" bit,
  "HasWorkRequest" bit,
  "HasRelatedItems" bit,
  "TestResultPermission" integer,
  "EquipmentSystemId" integer,
  "EquipmentClassificationId" integer,
  "OrderBy" char(256),
  "TotalRows" integer,
  "VesselRows" integer ) 
begin
  /*
2018-06-15 RJM E-04294 B-18300
2018-11-09 AIM E-04294 D-04185 Added HistoryItemId
*/
  declare @ApplicationId integer;
  declare @VesselId integer;
  declare @SystemId integer;
  declare @ClassificationId integer;
  declare @EquipmentId integer;
  declare @TestType char(30);
  declare @NodeType char(80);
  declare @NodeSettingId integer;
  declare @OrderBySettingId integer;
  declare @UserId integer;
  declare @AllVessels bit;
  set @NodeId = "ECO"."CheckNull"(@NodeId);
  set @ApplicationId = "CMS"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderBy');
  if("ECO"."CheckNull"(@NodeId) is null) then
    set @NodeId = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'NavigationNode')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeSettingId,@NodeId)
  end if;
  if("ECO"."CheckNull"(@OrderBy) is null) then
    set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
  end if;
  set @IsLimited = "ISNULL"(@IsLimited,1);
  if("ECO"."CheckNull"(@OrderBy) is null) then
    set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
  end if;
  if(@OrderBy is null) then
    set @OrderBy = ' AnalysisTimestamp DESC '
  end if;
  if(@NodeId like '%AllVessels%') or(@NodeId is null) then
    set @AllVessels = 1
  else
    set @AllVessels = 0
  end if;
  if(@NodeId is not null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
    set @SystemId = "SWA"."KeyValuePairParse"(@NodeId,'SystemId');
    set @ClassificationId = "SWA"."KeyValuePairParse"(@NodeId,'ClassificationId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentId');
    set @NodeType = "SWA"."KeyValuePairParse"(@NodeId,'NodeType');
    set @TestType = "SWA"."KeyValuePairParse"(@NodeId,'TestType')
  end if;
  call "CMS"."ConditionMonitoring"(@VesselId,@TestType,@SystemId,@ClassificationId,@EquipmentId,@IsLimited,@OrderBy,@ApplicationId,@AllVessels,@NodeType,@TextSearch)
end