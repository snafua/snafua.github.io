create procedure "_SEAS"."VibrationMidEditorTestPointDefinitionOrientationUpdate"( in @StandardMachineId integer,in @ComponentCode numeric,in @ComponentOrder integer,in @Orientation char(1) ) 
begin
  call "SEAS"."VibrationMidEditorTestPointDefinitionOrientationUpdate"(@StandardMachineId,@ComponentCode,@ComponentOrder,@Orientation)
end