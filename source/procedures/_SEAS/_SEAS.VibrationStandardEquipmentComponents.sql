create procedure "_SEAS"."VibrationStandardEquipmentComponents"( in @StandardEquipmentId integer,
  in @Sort long varchar default null ) 
result( "Component" char(250),"Orientation" char(40),"Locations" char(10) ) 
begin
  call "SEAS"."VibrationStandardEquipmentComponents"(@StandardEquipmentId,@Sort)
end