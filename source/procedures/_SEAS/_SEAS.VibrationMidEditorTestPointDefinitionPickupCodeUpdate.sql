create procedure "_SEAS"."VibrationMidEditorTestPointDefinitionPickupCodeUpdate"( in @StandardMachineId integer,in @ComponentCode numeric(4,2),in @ComponentOrder integer,in @PickupCode char(10) ) 
begin
  call "SEAS"."VibrationMidEditorTestPointDefinitionPickupCodeUpdate"(@StandardMachineId,@ComponentCode,@ComponentOrder,@PickupCode)
end