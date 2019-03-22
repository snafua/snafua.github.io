create function "_SMH"."VibrationEquipmentImage"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @ImageType char(10) ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "SMH"."VibrationEquipmentImage"(@VesselId,@EquipmentId,@ImageType);
  return(@Result)
end