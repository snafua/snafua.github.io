create function "_SEAS"."VibrationMidEditorVTAGConfigDeleteImage"( in @ImageId integer ) 
returns bit
begin
  declare @Result bit;
  set @Result = "SEAS"."VibrationMidEditorVTAGConfigDeleteImage"(@ImageId);
  return(@Result)
end