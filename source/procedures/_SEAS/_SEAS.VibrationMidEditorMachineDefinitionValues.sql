create procedure "_SEAS"."VibrationMidEditorMachineDefinitionValues"( in @StandardMachineId integer ) 
result( "MachineName" char(80),"ReferenceSpeed" integer,"DriverRatio" real,"DrivenRatio" real,"NormTolerance" integer,"Overlap" integer,"TestConditions" long varchar ) 
begin
  call "SEAS"."VibrationMidEditorMachineDefinitionValues"(@StandardMachineId)
end