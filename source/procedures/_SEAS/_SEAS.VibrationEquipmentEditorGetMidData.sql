create procedure "_SEAS"."VibrationEquipmentEditorGetMidData"( in @StandardMachineId integer ) 
result( "MachineName" char(80),"NominalSpeed" integer,"SpeedVariation" integer ) 
begin
  call "SEAS"."VibrationEquipmentEditorGetMidData"(@StandardMachineId)
end