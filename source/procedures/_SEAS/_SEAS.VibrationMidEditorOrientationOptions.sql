create procedure "_SEAS"."VibrationMidEditorOrientationOptions"( in @StandardMachineId integer ) 
result( "Text" char(3),"Id" char(3) ) 
begin
  call "SEAS"."VibrationMidEditorOrientationOptions"(@StandardMachineId)
end