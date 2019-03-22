create procedure "_VTL"."DocumentsEquipmentClassifications"( 
  in @EquipmentClassificationDescription char(80) default null ) 
result( 
  "EquipmentClassificationId" integer,
  "EquipmentClassificationDescription" char(80) ) 
begin
  call "VTL"."DocumentsEquipmentClassifications"(@EquipmentClassificationDescription)
end