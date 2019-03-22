create function "_SEAS"."VibrationMidEditorTestPointDefinitionComponentAdd"( in @StandardMachineId integer,in @ComponentCode numeric ) 
returns integer
begin
  declare @Result integer;
  set @Result = "SEAS"."VibrationMidEditorTestPointDefinitionComponentAdd"(@StandardMachineId,@ComponentCode);
  return(@Result)
end