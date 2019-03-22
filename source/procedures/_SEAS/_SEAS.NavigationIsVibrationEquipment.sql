create function "_SEAS"."NavigationIsVibrationEquipment"( in @VesselId smallint,in @EquipmentId integer ) 
returns bit
begin
  declare @Result bit;
  set @Result = "SEAS"."NavigationIsVibrationEquipment"(@VesselId,@EquipmentId);
  return(@Result)
end