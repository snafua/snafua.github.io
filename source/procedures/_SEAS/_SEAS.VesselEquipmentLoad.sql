create procedure "_SEAS"."VesselEquipmentLoad"( 
  in @VesselId integer,
  in @EquipmentSystemId integer,
  in @EquipmentClassificationId integer default null,
  in @MID integer default null,
  in @SMP integer default null ) 
result( 
  "EquipmentId" char(50),
  "EquipmentDescription" char(80),
  "IsVibrationEquipment" bit,
  "IsLubeOilEquipment" bit ) 
begin
  if(@EquipmentClassificationId = 0) then
    set @EquipmentClassificationId = null
  end if;
  call "SEAS"."VesselEquipmentLoad"(@VesselId,@EquipmentSystemId,@EquipmentClassificationId,@MID,@SMP)
end