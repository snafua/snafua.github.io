create procedure "_SEAS"."NavigationMIDsLoad"()
result( "MID" integer,"EquipmentDescription" char(80) ) 
begin
  call "SEAS"."NavigationMIDsLoad"()
end