create procedure "_SEAS"."VibrationRerunExpertSystem"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,in @IsAutomatic bit ) 
begin
  call "SEAS"."VibrationRerunExpertSystem"(@VesselId,@EquipmentId,@TestId,@IsAutomatic)
end