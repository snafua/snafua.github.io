create procedure "_SWA"."EquipmentReport"( 
  in @VesselId integer default null,
  in @EquipmentNodeId char(1024) default null,
  in @RowId char(1024) default null ) 
result( 
  "EquipmentName" char(128),
  "VesselName" char(128),
  "RiskFactor" char(2) ) 
begin
  declare @EquipmentId integer;
  set @RowId = "ECO"."CheckNull"(@RowId);
  if @RowId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId')
  else
    set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'EquipmentId')
  end if;
  call "SWA"."EquipmentReport"(@VesselId,@EquipmentId)
end