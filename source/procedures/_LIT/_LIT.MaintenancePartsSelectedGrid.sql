create procedure "_LIT"."MaintenancePartsSelectedGrid"( 
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
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
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  call "LIT"."MaintenancePartsSelectedGrid"(@VesselId,@WorkItemLibraryId,@ApplicationId)
end