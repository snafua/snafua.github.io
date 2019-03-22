create procedure "_SMH"."ScheduledMaintenanceLoad"( 
  in @VesselId smallint,
  in @HSC varchar(12) ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "EquipmentTitle" char(80),
  "MaintenanceProcedureId" integer,
  "MaintenanceProcedureTitle" char(50),
  "MaintenanceProcedureType" char(50),
  "TaskCode" char(50),
  "NextScheduled" timestamp ) 
begin
  call "SMH"."ScheduledMaintenanceLoad"(@VesselId,@HSC)
end