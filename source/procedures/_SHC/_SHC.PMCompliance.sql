create procedure --AIM
"_SHC"."PMCompliance"( 
  in @NodeId char(1024) default null,
  in @IsLimited bit default 1,
  in @OrderBy long varchar default null,
  in @TextSearch char(1024) default null ) 
result( 
  "RowId" char(1024),
  "VesselId" integer,
  "EquipmentId" integer,
  "VesselName" char(80),
  "EquipmentName" char(80),
  "Criticality" char(20),
  "MTBR" integer,
  "EquipmentAge" integer,
  "MaintenancesScheduled" integer,
  "MaintenancesCompleted" integer,
  "MaintenancesIncomplete" integer,
  "MaintenanceCompliance" integer,
  "MaintenanceCompletion" integer,
  "TotalRows" integer,
  "VesselRows" integer ) 
begin
  /*
2016-06-06 RJM Adapted from _SHC.EquipmentStatisticsLoad for SAMM 2.0
2017-01-06 RJM  Updated to save OrderBy even if using default
2019-02-04 AIM E-04941 B-20835 Added @TextSearch
*/
  declare @ApplicationId integer;
  declare @AllVessels bit;
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @SystemId integer;
  declare @NodeSettingId integer;
  declare @OrderBySettingId integer;
  declare @UserId integer;
  set @ApplicationId = "SHC"."ApplicationId"(); --308
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
    set @AllVessels = "SWA"."KeyValuePairParse"(@NodeId,'AllVessels');
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentId');
    set @SystemId = "SWA"."KeyValuePairParse"(@NodeId,'SystemId')
  end if;
  if @AllVessels is null then
    set @AllVessels = 0
  end if;
  if(@IsLimited is null) then
    set @IsLimited = 1
  end if;
  if("ECO"."CheckNull"(@OrderBy) is null) then
    set @OrderBy = ' MTBR ASC';
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
  end if;
  --MESSAGE STRING('UserId = ',@UserId,', OrderBy = ',@OrderBy) TYPE INFO TO CONSOLE;
  call "SHC"."PMCompliance"(@AllVessels,@VesselId,@IsLimited,@EquipmentId,@SystemId,@OrderBy,@ApplicationId,@UserId,@TextSearch)
end