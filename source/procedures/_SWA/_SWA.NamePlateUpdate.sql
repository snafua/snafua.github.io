create procedure --RJM
"_SWA"."NamePlateUpdate"( 
  in @ApplicationId integer default null,
  in @NamePlate long varchar,
  in @RowId char(1024),
  in @VesselId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-07-18 RJM E-04381
*/
  declare @EquipmentHSC char(20);
  declare @EquipmentId integer;
  if("ECO"."CheckNull"(@VesselId) is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  set @EquipmentHSC = "BASE64_DECODE"("SWA"."KeyValuePairParse"(@RowId,'EquipmentHSC'));
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  call "SWA"."NamePlateUpdate"(@VesselId,@EquipmentHSC,@EquipmentId,@NamePlate)
end