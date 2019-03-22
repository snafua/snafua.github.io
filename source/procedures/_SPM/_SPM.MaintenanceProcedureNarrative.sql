create procedure "_SPM"."MaintenanceProcedureNarrative"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer ) 
result( 
  "Narrative" long varchar ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceProcedureNarrative"(@VesselId,@EquipmentId,@ProcedureId)
end