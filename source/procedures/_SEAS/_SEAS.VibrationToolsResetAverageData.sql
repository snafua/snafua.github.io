create procedure "_SEAS"."VibrationToolsResetAverageData"( in @StandardMachineId integer ) 
result( "Success" bit,"Error" long varchar ) 
begin
  call "SEAS"."VibrationToolsResetAverageData"(@StandardMachineId)
end