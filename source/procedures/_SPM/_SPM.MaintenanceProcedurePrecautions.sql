create procedure "_SPM"."MaintenanceProcedurePrecautions"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer ) 
result( 
  "PrecautionId" integer,
  "PrecautionTitle" char(50),
  "Precaution" long varchar ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceProcedurePrecautions"(@VesselId,@EquipmentId,@ProcedureId)
end