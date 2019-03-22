create procedure -- JHM
"_SWA"."VesselEquipmentProperties"( 
  in @ApplicationId integer,
  in @NodeId char(1024),
  in @VesselId integer default null ) 
result( 
  "PropertyName" char(50),
  "SAMMValue" long varchar,
  "CMLSValue" long varchar ) 
begin
  /*
2016-08-22 RJM
2018-06-01 JHM E-03966 Added support for EquipmentHSC
*/
  declare @EquipmentId integer;
  declare @EquipmentHSC char(50);
  set @EquipmentId = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentId');
  set @EquipmentHSC = "SWA"."KeyValuePairParse"(@NodeId,'EquipmentHSC');
  if(@EquipmentHSC is not null) then set @EquipmentHSC = "BASE64_DECODE"(@EquipmentHSC) end if;
  if(@VesselId is null) then set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId') end if;
  if(@VesselId is null) then
    select first "VesselId"
      into @VesselId
      from "SWA"."EquipmentPropertiesVessels"(@ApplicationId,@EquipmentId,@EquipmentHSC)
      order by "VesselName" asc
  end if;
  call "SWA"."VesselEquipmentProperties"(@VesselId,@EquipmentId,@EquipmentHSC)
end