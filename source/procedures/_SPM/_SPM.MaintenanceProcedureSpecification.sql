create procedure "_SPM"."MaintenanceProcedureSpecification"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer ) 
result( 
  "Specification" long varchar ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceProcedureSpecification"(@VesselId,@EquipmentId,@ProcedureId)
end