create procedure "_SEAS"."VibrationMidEditorFaultOptions"( in @StandardMachineId integer ) 
result( "Text" char(80),"Code" char(3),"Id" integer ) 
begin
  call "SEAS"."VibrationMidEditorFaultOptions"(@StandardMachineId)
end