create procedure "_SPM"."MaintenanceScheduleEquipment"( 
  in @NodeId char(256) ) 
result( 
  "VesselId" integer,
  "EquipmentId" integer,
  "EquipmentName" char(128) ) 
begin
  call "SPM"."MaintenanceScheduleEquipment"(@NodeId)
end