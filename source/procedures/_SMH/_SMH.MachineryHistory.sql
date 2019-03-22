create procedure --AIM
"_SMH"."MachineryHistory"( 
  in @NodeId char(1024) default null,
  in @OrderBy char(1024) default null,
  in @IsLimited bit default null,
  in @TextSearch char(1024) default null ) 
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
  "OrderBy" char(256),
  "ReportId" integer,
  "TotalRows" integer,
  "VesselRows" integer ) 
begin
  /*
2016-05-25 RJM
2016-06-23 RJM Added ReportId
2017-04-27 RJM Added Test Types
2018-04-17 RJM added HistoryPermission
2018-10-09 RJM Added @EquipmentHSC to where clause if present E-04617, D-4157
2018-11-06 JHM Added support for EquipmentHSC and corrected history item dates (also updated to use vessel equipment desc by modifying view)
2019-01-04 RJM B-19894 E-04625 Added Text search
2019-01-10 AIM E-04885 B-20343 Fixed VesselList Logic
*/
  declare @ApplicationId integer;
  declare @VesselId integer;
  declare @SystemId integer;
  declare @ClassificationId integer;
  declare @EquipmentId integer;
  declare @EquipmentHSC char(100);
  declare @ItemSubType char(30);
  declare @NodeType char(80);
  declare @NodeSettingId integer;
  declare @OrderBySettingId integer;
  declare @UserId integer;
  declare @AllVessels bit;
  set @NodeId = "ECO"."CheckNull"(@NodeId);
  set @ApplicationId = "SMH"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderBy');
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
  set @IsLimited = "ISNULL"(@IsLimited,1);
  if @OrderBy is null then
    set @OrderBy = 'HistoryItemTimestampChar DESC'
  end if;
  if @NodeId like '%AllVessels%' or @NodeId is null then
    set @AllVessels = 1
  else
    set @AllVessels = 0
  end if;
  set @TextSearch = "ECO"."CheckNull"(@TextSearch);
  if @NodeId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
    set @SystemId = "SWA"."KeyValuePairParse"(@NodeId,'SystemId');
    set @ClassificationId = "SWA"."KeyValuePairParse"(@NodeId,'ClassificationId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentId');
    set @NodeType = "SWA"."KeyValuePairParse"(@NodeId,'NodeType');
    set @ItemSubType = "SWA"."KeyValuePairParse"(@NodeId,'SubTypeDesc');
    set @EquipmentHSC = "BASE64_DECODE"("SWA"."KeyValuePairParse"(@NodeId,'EquipmentHSC'))
  end if;
  call "SMH"."MachineryHistory"(@VesselId,@SystemId,@ClassificationId,@EquipmentId,@IsLimited,@OrderBy,@ApplicationId,@AllVessels,@NodeType,@ItemSubType,@EquipmentHSC,@TextSearch)
end