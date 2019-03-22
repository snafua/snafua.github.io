create procedure "_SEAS"."VibrationMidEditorImageIds"( in @StandardMachineId integer ) 
result( "SchematicImageId" integer,"DiagramImageId" integer ) 
begin
  call "SEAS"."VibrationMidEditorImageIds"(@StandardMachineId)
end