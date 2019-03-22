create procedure "_PNG"."WorkItemsPartsEditSave"( 
  in @PartRowId long varchar,
  in @EquipmentRowId char(1024) default null,
  in @NavyStockNumber char(25) default null,
  in @PartNumber char(40) default null,
  in @PartDescription char(80) default null,
  in @SupplierName char(80) default null,
  in @CageCode char(25) default null,
  in @QuantityRequired char(25) default null,
  in @UnitCost char(25) default null,
  in @DateRequired char(25) default null,
  in @SourceOfSupply char(1024) default null,
  in @UnitOfMeasure char(10) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @WorkItemPartId integer;
  declare @WorkItemEquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@PartRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@PartRowId,'WorkItemId');
  set @WorkItemPartId = "SWA"."KeyValuePairParse"(@PartRowId,'WorkItemPartId');
  set @WorkItemEquipmentId = "ECO"."Base64Decode"(@EquipmentRowId);
  call "PNG"."WorkItemsPartsEditSave"(@VesselId,@WorkItemId,@WorkItemPartId,@WorkItemEquipmentId,@NavyStockNumber,@PartNumber,@PartDescription,@SupplierName,@CageCode,@QuantityRequired,@UnitCost,@DateRequired,@SourceOfSupply,@UnitOfMeasure)
end