create procedure "_SPM"."VesselMaintenanceAssociatedScheduledUpdate"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer,
  in @Items long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SPM"."VesselMaintenanceAssociatedScheduledUpdate"(@VesselId,@EquipmentId,@ProcedureId,@Items)
end