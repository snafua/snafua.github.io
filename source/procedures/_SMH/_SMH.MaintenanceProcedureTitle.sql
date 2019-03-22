create procedure "_SMH"."MaintenanceProcedureTitle"( in @VesselId smallint,in @EquipmentId integer,in @MachineryHistoryId integer,in @MaintenanceProcedureID integer ) 
result( "MaintenanceProcedureId" integer,"MaintenanceProcedureTitle" char(50) ) 
begin
  call "SMH"."MaintenanceProcedureTitle"(@VesselId,@EquipmentId,@MachineryHistoryId,@MaintenanceProcedureID)
end