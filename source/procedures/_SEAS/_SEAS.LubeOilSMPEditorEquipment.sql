create procedure "_SEAS"."LubeOilSMPEditorEquipment"( in @Lubricants long varchar ) 
result( "EquipmentClassificationId" integer,"EquipmentClassification" char(50) ) 
begin
  call "SEAS"."LubeOilSMPEditorEquipment"(@Lubricants)
end