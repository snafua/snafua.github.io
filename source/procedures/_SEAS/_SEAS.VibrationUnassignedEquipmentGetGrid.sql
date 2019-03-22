create procedure "_SEAS"."VibrationUnassignedEquipmentGetGrid"( in @NodeId char(80),in @Sort long varchar ) 
result( "VesselId" smallint,"VesselName" char(80),"EquipmentId" integer,"EquipmentDescription" char(80) ) 
begin
  call "SEAS"."VibrationUnassignedEquipmentGetGrid"(@NodeId,@Sort)
end