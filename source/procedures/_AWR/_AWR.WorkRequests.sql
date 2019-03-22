create procedure --E-04228 B-19380
--RJM
"_AWR"."WorkRequests"( 
  in @NodeId char(256) default null,
  in @IsLimited bit default 1,
  in @OrderBy char(1024) default null,
  in @TextSearch char(1024) default null ) 
result( 
  "RowId" char(1024),
  "VesselName" char(128),
  "WorkRequestExternalId" char(10),
  "WorkRequestSubject" char(50),
  "WorkListItemExternalId" char(10),
  "DepartmentTitle" char(50),
  "VesselEquipmentDesc" char(80),
  "WorkRequestSubmitted" date,
  "WorkRequestReviewStatus" char(10),
  "WorkRequestLocation" char(128),
  "Originator" char(128),
  "OriginatorDepartmentTitle" char(50),
  "HasAttachments" bit,
  "ApproveDenyPermission" integer,
  "WorkRequestPermission" integer,
  "WorkListItemPermission" integer,
  "TotalRows" integer,
  "OrderBy" char(50),
  "VesselRows" integer,
  "CompletePermissions" integer,
  "InitiationSource" char(80),
  "InitiationSourceSubType" char(80) ) 
begin
  /*
2016-06-06 RJM Added VesselRows
2017-01-06 RJM Updated to save users OrderBy even if using default
2018-01-12 RJM Added CompletePermissions
2018-02-27 RJM Updated to Use SWA.NavigationSQLWhere
2018-03-28 JHM Updated to include InitiationSource and InitiationSourceSubType
2018-09-24 RJM E-04228 B-19380 Added @TextSearch
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
  declare @SavedOrderBy long varchar;
  declare @UseEquipmentHSC bit;
  set @ApplicationId = "AWR"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderby');
  set @UseEquipmentHSC = 0;
  if("ECO"."CheckNull"(@NodeId) is null) then
    set @NodeId = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'NavigationNode')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeSettingId,@NodeId)
  end if;
  if(@NodeType = 'EquipmentHSC') then
    set @UseEquipmentHSC = 1
  end if;
  if("ECO"."CheckNull"(@OrderBy) is null) then
    if("LENGTH"("ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')) > 0) then
      set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')
    else
      set @OrderBy = 'WorkRequestExternalId ASC';
      call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
    end if
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
  end if;
  if(@NodeId is not null) then
    set @NodeType = "SWA"."KeyValuePairParse"(@NodeId,'NodeType');
    set @AllVessels = "SWA"."KeyValuePairParse"(@NodeId,'AllVessels');
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
    set @DepartmentId = "SWA"."KeyValuePairParse"(@NodeId,'DepartmentId');
    set @BilletId = "SWA"."KeyValuePairParse"(@NodeId,'BilletId');
    set @SystemId = "SWA"."KeyValuePairParse"(@NodeId,'SystemId');
    set @ClassificationId = "SWA"."KeyValuePairParse"(@NodeId,'ClassificationId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentId')
  end if;
  if(@IsLimited is null) then
    set @IsLimited = 1
  end if;
  call "AWR"."WorkRequests"(@NodeType,@AllVessels,@VesselId,@DepartmentId,@BilletId,@SystemId,@ClassificationId,@EquipmentId,@IsLimited,@OrderBy,@ApplicationId,@UseEquipmentHSC,@TextSearch)
end