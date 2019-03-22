create procedure "_SMH"."MaintenanceScheduleLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer,
  in @MaintenanceProcedureId integer default null ) 
result( 
  "OperationalStatus" char(10),
  "Periodicity" char(20),
  "Scheduled" char(16),
  "RunningHours" char(10) ) 
begin
  set @MaintenanceProcedureId = "ECO"."CheckNull"(@MaintenanceProcedureId);
  call "SMH"."MaintenanceScheduleLoad"(@VesselId,@EquipmentId,@MachineryHistoryId,@MaintenanceProcedureId)
end