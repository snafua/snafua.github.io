create procedure "_SWA"."EquipmentReportLubeOil"( 
  in @VesselId integer default null,
  in @EquipmentScopeId integer default null,
  in @EquipmentNodeId char(1024) default null,
  in @StartDate date default null,
  in @EndDate date default null,
  in @RowId char(1024) default null ) 
result( 
  "SampleDescription" char(128),
  "LubeOilSampleDate" date,
  "AlertStatus" char(128),
  "SampleComments" long varchar ) 
begin
  declare @EquipmentId integer;
  set @RowId = "ECO"."CheckNull"(@RowId);
  if @EndDate is null then
    set @EndDate = current utc timestamp
  end if;
  if @StartDate is null then
    set @StartDate = "DATEADD"("year",-1,@EndDate)
  end if;
  if @RowId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId')
  else
    set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'EquipmentId')
  end if;
  call "SWA"."EquipmentReportLubeOil"(@VesselId,@EquipmentId,@StartDate,@EndDate)
end