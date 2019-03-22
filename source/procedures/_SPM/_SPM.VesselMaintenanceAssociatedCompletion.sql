create procedure "_SPM"."VesselMaintenanceAssociatedCompletion"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer ) 
result( 
  "ProcedureId" integer,
  "ProcedureName" char(50),
  "LastCompelted" date ) 
begin
  /*
2013-01-30  rbh changed ProcedureTitle to ProcedureName per Josh
*/
  call "SPM"."VesselMaintenanceAssociatedCompletion"(@VesselId,@EquipmentId,@ProcedureId)
end