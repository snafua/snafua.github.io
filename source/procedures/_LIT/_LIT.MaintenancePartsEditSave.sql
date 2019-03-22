create procedure "_LIT"."MaintenancePartsEditSave"( 
  in @PartRowId long varchar,
  in @NavyStockNumber char(25) default null,
  in @PartNumber char(40) default null,
  in @PartDescription char(80) default null,
  in @SupplierName char(80) default null,
  in @CageCode char(5) default null,
  in @QuantityRequired char(25) default null,
  in @UnitCost char(25) default null,
  in @UnitOfMeasure char(10) default null,
  in @ApplicationId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  declare @MaintenanceProcedureId integer;
  declare @PartId integer;
  declare @EquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@PartRowId,'VesselId');
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@PartRowId,'WorkItemLibraryId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@PartRowId,'MaintenanceProcedureId');
  set @PartId = "SWA"."KeyValuePairParse"(@PartRowId,'PartId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@PartRowId,'EquipmentId');
  call "LIT"."MaintenancePartsEditSave"(@VesselId,@WorkItemLibraryId,@MaintenanceProcedureId,@PartId,@EquipmentId,@NavyStockNumber,@PartNumber,
  @PartDescription,@SupplierName,@CageCode,@QuantityRequired,@UnitCost,@UnitOfMeasure,@ApplicationId)
end