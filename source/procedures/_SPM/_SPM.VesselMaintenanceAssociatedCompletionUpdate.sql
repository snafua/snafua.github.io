create procedure "_SPM"."VesselMaintenanceAssociatedCompletionUpdate"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer,
  in @Items long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SPM"."VesselMaintenanceAssociatedCompletionUpdate"(@VesselId,@EquipmentId,@ProcedureId,@Items)
end