create procedure --RJM
"_APM"."MaintenancePartsAddManually"( 
  in @CageCode char(10) default null,
  in @EquipmentRowIdStr long varchar default null,
  in @MaintenanceRowId char(1024),
  in @NavyStockNumber char(20) default null,
  in @PartDescription char(80) default null,
  in @PartNumber char(40) default null,
  in @QuantityRequired integer default 1,
  in @SupplierName char(80) default null,
  in @UnitCost numeric(15,2) default null,
  in @UnitOfMeasure char(10) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-08-02 RJM E-04174
*/
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@MaintenanceRowId,'VesselId');
  if "LENGTH"(@EquipmentRowIdStr) < 3 then set @EquipmentRowIdStr = null end if;
  if "LENGTH"(@NavyStockNumber) < 1 then set @NavyStockNumber = null end if;
  if "LENGTH"(@PartNumber) < 1 then set @PartNumber = null end if;
  if "LENGTH"(@PartDescription) < 1 then set @PartDescription = null end if;
  if "LENGTH"(@SupplierName) < 1 then set @SupplierName = null end if;
  if "LENGTH"(@CageCode) < 1 then set @CageCode = null end if;
  if "LENGTH"(@UnitOfMeasure) < 1 then set @UnitOfMeasure = null end if;
  call "APM"."MaintenancePartsAddManually"(@VesselId,@EquipmentRowIdStr,@NavyStockNumber,@PartNumber,@PartDescription,@SupplierName,@CageCode,@QuantityRequired,@UnitCost,@UnitOfMeasure)
end