create procedure "_SPM"."FilterListEquipmentSelectedLoad"()
result( "EquipmentId" integer,"EquipmentName" char(128) ) 
begin
  call "SPM"."FilterListEquipmentSelectedLoad"()
end