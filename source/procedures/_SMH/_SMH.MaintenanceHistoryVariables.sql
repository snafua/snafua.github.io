create procedure "_SMH"."MaintenanceHistoryVariables"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer,
  in @MaintenanceProcedureId integer default null ) 
result( 
  "Category" char(50),
  "VariableId" char(20),
  "VariableDesc" char(50) ) 
begin
  set @MaintenanceProcedureId = "ECO"."CheckNull"(@MaintenanceProcedureId);
  call "SMH"."MaintenanceHistoryVariables"(@VesselId,@EquipmentId,@MachineryHistoryId,@MaintenanceProcedureId)
end