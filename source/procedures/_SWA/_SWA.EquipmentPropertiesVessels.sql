create procedure -- JHM
"_SWA"."EquipmentPropertiesVessels"( 
  in @ApplicationId integer,
  in @NodeId char(1024) ) 
result( 
  "VesselId" integer,
  "VesselName" char(80) ) 
begin
  /*
2016-08-22 RJM
2018-06-01 JHM E-03966 Added support for EquipmentHSC
*/
  declare @EquipmentId integer;
  declare @EquipmentHSC char(20);
  set @EquipmentId = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentId');
  set @EquipmentHSC = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentHSC');
  if(@EquipmentHSC is not null) then set @EquipmentHSC = "BASE64_DECODE"(@EquipmentHSC) end if;
  call "SWA"."EquipmentPropertiesVessels"(@ApplicationId,@EquipmentId,@EquipmentHSC)
end