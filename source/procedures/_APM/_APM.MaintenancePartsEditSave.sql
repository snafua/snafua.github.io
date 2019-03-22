create procedure --RJM
"_APM"."MaintenancePartsEditSave"( 
  in @PartRowId long varchar,
  in @NavyStockNumber char(25) default null,
  in @PartNumber char(40) default null,
  in @PartDescription char(80) default null,
  in @SupplierName char(80) default null,
  in @CageCode char(5) default null,
  in @QuantityRequired char(25) default null,
  in @UnitCost char(25) default null,
  in @UnitOfMeasure char(10) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-08-03 RJM E-04174
*/
  declare @VesselId integer;
  declare @MaintenanceProcedureId integer;
  declare @PartId integer;
  declare @EquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@PartRowId,'VesselId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@PartRowId,'MaintenanceProcedureId');
  set @PartId = "SWA"."KeyValuePairParse"(@PartRowId,'PartId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@PartRowId,'EquipmentId');
  call "APM"."MaintenancePartsEditSave"(@VesselId,@MaintenanceProcedureId,@PartId,@EquipmentId,@NavyStockNumber,@PartNumber,
  @PartDescription,@SupplierName,@CageCode,@QuantityRequired,@UnitCost,@UnitOfMeasure)
end