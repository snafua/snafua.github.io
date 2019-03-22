create procedure "_SMH"."FilterListEquipmentSelectedLoad"()
result( 
  "EquipmentId" integer,
  "EquipmentName" char(128) ) 
begin
  call "SMH"."FilterListEquipmentSelectedLoad"()
end