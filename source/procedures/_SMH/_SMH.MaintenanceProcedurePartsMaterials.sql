create procedure "_SMH"."MaintenanceProcedurePartsMaterials"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId integer,
  in @ProcedureId integer default null ) 
result( 
  "PartMaterial" char(10),
  "PartMaterialId" integer,
  "PartMaterialDescription" char(80),
  "NavyStockNumber" char(20),
  "Quantity" integer ) 
begin
  set @ProcedureId = "ECO"."CheckNull"(@ProcedureId);
  call "SMH"."MaintenanceProcedurePartsMaterials"(@VesselId,@EquipmentId,@HistoryItemId,@ProcedureId)
end