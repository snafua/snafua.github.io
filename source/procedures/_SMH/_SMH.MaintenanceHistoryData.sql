create procedure "_SMH"."MaintenanceHistoryData"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer,
  in @MaintenanceProcedureId integer default null ) 
result( 
  "TestId" integer,
  "VariableId" char(10),
  "VariableValue" char(10) ) 
begin
  set @MaintenanceProcedureId = "ECO"."CheckNull"(@MaintenanceProcedureId);
  call "SMH"."MaintenanceHistoryData"(@VesselId,@EquipmentId,@MachineryHistoryId,@MaintenanceProcedureId)
end