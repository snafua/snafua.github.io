create procedure "_SEAS"."ScheduledMaintenanceLoad"( in @VesselId smallint,in @HSC varchar(12),in @Sort long varchar default '7 DESC' ) 
result( "VesselId" smallint,"EquipmentId" integer,"EquipmentTitle" char(80),"MaintenanceProcedureId" integer,"MaintenanceProcedureTitle" char(50),"MaintenanceProcedureType" char(50),"TaskCode" char(50),"NextScheduled" timestamp ) 
begin
  call "SEAS"."ScheduledMaintenanceLoad"(@VesselId,@HSC,@Sort)
end