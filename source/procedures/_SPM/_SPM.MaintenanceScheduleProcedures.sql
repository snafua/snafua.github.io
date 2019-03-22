create procedure "_SPM"."MaintenanceScheduleProcedures"( 
  in @VesselId integer,
  in @EquipmentId integer ) 
result( 
  "EquipmentId" integer,
  "ProcedureId" integer,
  "MaintenanceCategory" char(25),
  "ProcedureTitle" char(128),
  "MaintenanceInterval" char(20),
  "MaintenanceCompliance" char(10),
  "LastCompleteDate" char(10) ) 
begin
  call "SPM"."MaintenanceScheduleProcedures"(@VesselId,@EquipmentId)
end