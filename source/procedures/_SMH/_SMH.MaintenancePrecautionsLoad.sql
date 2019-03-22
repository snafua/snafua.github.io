create procedure "_SMH"."MaintenancePrecautionsLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer,
  in @MaintenanceProcedureId integer default null ) 
result( 
  "Precaution" long varchar ) 
begin
  set @MaintenanceProcedureId = "ECO"."CheckNull"(@MaintenanceProcedureId);
  call "SMH"."MaintenancePrecautionsLoad"(@VesselId,@EquipmentId,@MachineryHistoryId,@MaintenanceProcedureId)
end