create function "_SEAS"."VibrationMidEditorIsMidAvailable"( in @StandardMachineId integer ) 
returns bit
begin
  declare @Result bit;
  set @Result = "SEAS"."VibrationMidEditorIsMidAvailable"(@StandardMachineId);
  return(@Result)
end