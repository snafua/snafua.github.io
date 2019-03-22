create procedure --E-04174
--RJM
"_APM"."MaintenancePartsSelectedGrid"( 
  in @RowId char(1024) ) 
result( 
  "PartRowId" char(1024),
  "EquipmentRowId" char(1024),
  "EquipmentDescription" char(120),
  "AllowancePartsList" char(25),
  "QuantityRequired" integer,
  "PartNumber" char(40),
  "PartDescription" char(80),
  "NavyStockNumber" char(20),
  "SupplierName" char(80),
  "UOM" char(25),
  "OnHand" integer,
  "CageCode" char(10),
  "UnitCost" decimal(15,2),
  "EquipmentId" integer,
  "PartId" integer,
  "OrderBy" char(1024) ) 
begin
  /*
2018-08-06 RJM E-04174
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "APM"."MaintenancePartsSelectedGrid"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
end