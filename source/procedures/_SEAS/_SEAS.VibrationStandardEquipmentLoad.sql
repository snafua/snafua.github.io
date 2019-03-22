create procedure "_SEAS"."VibrationStandardEquipmentLoad"( 
  in @Sort long varchar default null,
  in @Filter long varchar default null ) 
result( "MID" integer,"StandardEquipmentDesc" char(80),"UsedBy" integer,"NeedsRecalc" bit ) 
begin
  call "SEAS"."VibrationStandardEquipmentLoad"(@Sort,@Filter)
end