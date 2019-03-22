create procedure "_SWA"."VesselMaintenanceProcedures"( 
  in @VesselId smallint ) 
result( 
  "VesselId" smallint,
  "VesselName" char(80),
  "EquipmentId" integer,
  "VesselEquipmentDesc" char(80),
  "MaintenanceProcedureTitle" char(50),
  "MaintenanceCode" char(4) ) 
begin
  call "SWA"."VesselMaintenanceProcedures"(@VesselId)
end