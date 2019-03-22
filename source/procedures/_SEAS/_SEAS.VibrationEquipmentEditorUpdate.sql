create procedure "_SEAS"."VibrationEquipmentEditorUpdate"( in @VesselId smallint,in @EquipmentId integer,in @StandardMachineId integer,in @NominalSpeed integer,in @SpeedVariation integer,in @SWAB char(6) ) 
result( "Success" bit,"Error" long varchar ) 
begin
  call "SEAS"."VibrationEquipmentEditorUpdate"(@VesselId,@EquipmentId,@StandardMachineId,@NominalSpeed,@SpeedVariation,@SWAB)
end