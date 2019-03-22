create procedure "_SMH"."MaintenanceCommentsLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer,
  in @MaintenanceProcedureId integer default null ) 
result( 
  "Narrative" long varchar,
  "UserNotes" long varchar ) 
begin
  set @MaintenanceProcedureId = "ECO"."CheckNull"(@MaintenanceProcedureId);
  call "SMH"."MaintenanceCommentsLoad"(@VesselId,@EquipmentId,@MachineryHistoryId,@MaintenanceProcedureId)
end