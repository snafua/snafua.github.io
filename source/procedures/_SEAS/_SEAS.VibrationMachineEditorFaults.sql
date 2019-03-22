create procedure "_SEAS"."VibrationMachineEditorFaults"( in @StandardMachineId integer ) 
result( "FaultNameId" integer,"FaultName" char(80),"SpeedRatio" real,"FaultCode" char(3),"RowId" integer ) 
begin
  call "SEAS"."VibrationMachineEditorFaults"(@StandardMachineId)
end