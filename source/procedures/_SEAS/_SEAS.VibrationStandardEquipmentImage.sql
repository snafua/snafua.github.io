create procedure "_SEAS"."VibrationStandardEquipmentImage"( in @StandardEquipmentId integer,in @ImageType char(20) ) 
result( "VibEquipmentDiagram" long varchar ) 
begin
  call "SEAS"."VibrationStandardEquipmentImage"(@StandardEquipmentId,@ImageType)
end