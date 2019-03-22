create procedure "_SEAS"."VibrationMidEditorBearingOptions"( in @StandardMachineId integer ) 
result( "Text" char(2),"Id" integer ) 
begin
  call "SEAS"."VibrationMidEditorBearingOptions"(@StandardMachineId)
end