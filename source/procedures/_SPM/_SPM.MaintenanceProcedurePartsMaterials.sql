create procedure "_SPM"."MaintenanceProcedurePartsMaterials"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer ) 
result( 
  "PartMaterial" char(10),
  "PartMaterialId" integer,
  "PartMaterialDescription" char(80),
  "NavyStockNumber" char(20),
  "Quantity" integer ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceProcedurePartsMaterials"(@VesselId,@EquipmentId,@ProcedureId)
end