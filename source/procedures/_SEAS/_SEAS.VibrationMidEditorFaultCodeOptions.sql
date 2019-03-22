create procedure "_SEAS"."VibrationMidEditorFaultCodeOptions"( in @StandardMachineId integer ) 
result( "Id" integer,"Text" char(3) ) 
begin
  call "SEAS"."VibrationMidEditorFaultCodeOptions"(@StandardMachineId)
end