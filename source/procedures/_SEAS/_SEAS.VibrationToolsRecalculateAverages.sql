create function "_SEAS"."VibrationToolsRecalculateAverages"( in @StandardEquipmentId integer ) 
returns bit
begin
  declare @Result integer;
  set @Result = "SEAS"."VibrationToolsRecalculateAverages"(@StandardEquipmentId);
  return(@Result)
end