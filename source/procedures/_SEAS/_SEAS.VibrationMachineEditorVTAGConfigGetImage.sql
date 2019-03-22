create procedure "_SEAS"."VibrationMachineEditorVTAGConfigGetImage"( in @ImageId integer ) 
result( "ImageFileName" char(255),"ImageData" long varchar,"ImageFileSize" integer ) 
begin
  call "SEAS"."VibrationMachineEditorVTAGConfigGetImage"(@ImageId)
end