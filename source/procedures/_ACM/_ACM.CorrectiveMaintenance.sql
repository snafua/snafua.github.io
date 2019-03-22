create procedure --E-04169 B-19964
--RJM
"_ACM"."CorrectiveMaintenance"( 
  in @NodeId char(256) default null,
  in @IsLimited bit default 1,
  in @OrderBy char(1024) default null,
  in @TextSearch char(1024) default null ) 
result( 
  "RowId" char(1024),
  "VesselName" char(128),
  "RequestId" char(10),
  "Title" char(50),
  "OpenDate" date,
  "WorkListItemPriority" char(10),
  "RiskAssessment" integer,
  "ShipStatus" char(10),
  "ShoreStatus" char(10),
  "Originator" char(128),
  "Billet" char(30),
  "StartDate" date,
  "CompletionDate" date,
  "ClosedDate" date,
  "Source" char(80),
  "SubType" char(80),
  "Availability" char(128),
  "HasAttachments" bit,
  "WorkListItemPermission" tinyint,
  "TotalRows" integer,
  "OrderBy" char(1024),
  "VesselRows" integer ) 
begin
  /*
2018-05-16 RJM Added columns for E-03420 new filters
2018-10-13 RJM E-04169 B-19964 added Text filter
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
  set @ApplicationId = "ACM"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderby');
  set @UseEquipmentHSC = 0;
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
  if(@NodeId is not null) then
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
  if(@IsLimited is null) then
    set @IsLimited = 1
  end if;
  if(@AllVessels is null) then
    set @AllVessels = 0
  end if;
  if("ECO"."CheckNull"(@OrderBy) is null) then
    set @OrderBy = 'RequestId ASC';
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeSettingId,@NodeId)
  end if;
  call "ACM"."CorrectiveMaintenance"(@NodeType,@AllVessels,@VesselId,@DepartmentId,@BilletId,@SystemId,@ClassificationId,
  @EquipmentId,@IsLimited,@OrderBy,@ApplicationId,@UseEquipmentHSC,@EquipmentHSC,@SystemIsNULL,@ClassificationIsNULL,@TextSearch)
end