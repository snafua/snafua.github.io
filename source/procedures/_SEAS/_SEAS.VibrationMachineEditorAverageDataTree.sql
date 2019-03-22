create procedure "_SEAS"."VibrationMachineEditorAverageDataTree"( in @StandardMachineId integer ) 
result( "LocId" integer,"LocText" char(50),"IsLeaf" bit ) 
begin
  call "SEAS"."VibrationMachineEditorAverageDataTree"(@StandardMachineId)
end