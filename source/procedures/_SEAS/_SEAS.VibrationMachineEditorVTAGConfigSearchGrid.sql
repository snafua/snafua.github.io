create procedure "_SEAS"."VibrationMachineEditorVTAGConfigSearchGrid"( in @Sort long varchar,in @Filter long varchar,in @ImageType char(10) ) 
result( "Mid" long varchar,"Filename" char(255),"ImageId" integer,"RowId" integer ) 
begin
  call "SEAS"."VibrationMachineEditorVTAGConfigSearchGrid"(@Sort,@Filter,@ImageType)
end