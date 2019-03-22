create procedure "_SEAS"."VibrationMidEditorMachineOrientationOptions"( in @StandardMachineId integer ) 
result( "Text" char(40),"Id" char(1) ) 
begin
  call "SEAS"."VibrationMidEditorMachineOrientationOptions"(@StandardMachineId)
end