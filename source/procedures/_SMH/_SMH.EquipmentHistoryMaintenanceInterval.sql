create procedure "_SMH"."EquipmentHistoryMaintenanceInterval"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer ) 
result( 
  "FormattedInterval" char(40) ) 
begin
  call "SMH"."EquipmentHistoryMaintenanceInterval"(@VesselId,@EquipmentId,@ProcedureId)
end