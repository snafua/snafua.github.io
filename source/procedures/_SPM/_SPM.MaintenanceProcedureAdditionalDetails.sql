create procedure "_SPM"."MaintenanceProcedureAdditionalDetails"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer ) 
result( 
  "ItemType" char(10),
  "ItemName" char(25),
  "ItemValue" char(128) ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceProcedureAdditionalDetails"(@VesselId,@EquipmentId,@ProcedureId)
end