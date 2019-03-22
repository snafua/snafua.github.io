create procedure "_SEAS"."VibrationMidEditorMachineDefinitionSelectedOptions"( in @StandardMachineId integer ) 
result( "LowRangeSelected" smallint,"HighRangeSelected" smallint,"DemodulationSelected" smallint ) 
begin
  call "SEAS"."VibrationMidEditorMachineDefinitionSelectedOptions"(@StandardMachineId)
end