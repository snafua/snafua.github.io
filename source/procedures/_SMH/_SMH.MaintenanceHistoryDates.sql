create procedure "_SMH"."MaintenanceHistoryDates"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer,
  in @MaintenanceProcedureId integer default null ) 
result( 
  "HistoryYear" char(4),
  "HistoryDate" char(11),
  "HistoryId" integer ) 
begin
  set @MaintenanceProcedureId = "ECO"."CheckNull"(@MaintenanceProcedureId);
  call "SMH"."MaintenanceHistoryDates"(@VesselId,@EquipmentId,@MachineryHistoryId,@MaintenanceProcedureId)
end