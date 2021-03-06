create procedure --E-04174
--RJM
"_LIT"."MaintenanceItemPartsAddManually"( 
  in @ModuleRowId char(1024),
  in @EquipmentRowIdStr long varchar default null,
  in @NavyStockNumber char(20) default null,
  in @PartNumber char(40) default null,
  in @PartDescription char(80),
  in @SupplierName char(80) default null,
  in @CageCode char(10) default null,
  in @QuantityRequired integer default 1,
  in @UnitCost numeric(15,2) default null,
  in @UnitOfMeasure char(10),
  in @ApplicationId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2016-08-29 RJM Adapted from _PAV.WorkItemsPartsAddManually
2018-09-07 RJM CHanged inpuit param @PartDescription to not default null
*/
  declare @VesselId integer;
  declare @VesselClassId integer;
  declare @WorkItemLibraryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@ModuleRowId,'VesselId');
  set @VesselClassId = "SWA"."KeyValuePairParse"(@ModuleRowId,'VesselClassId');
  if @VesselClassId is null then
    set @VesselClassId = "SWA"."VesselClassId"(@VesselId)
  end if;
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@ModuleRowId,'WorkItemLibraryId');
  if "LENGTH"(@EquipmentRowIdStr) < 3 then set @EquipmentRowIdStr = null end if;
  if "LENGTH"(@NavyStockNumber) < 1 then set @NavyStockNumber = null end if;
  if "LENGTH"(@PartNumber) < 1 then set @PartNumber = null end if;
  if "LENGTH"(@PartDescription) < 1 then set @PartDescription = null end if;
  if "LENGTH"(@SupplierName) < 1 then set @SupplierName = null end if;
  if "LENGTH"(@CageCode) < 1 then set @CageCode = null end if;
  if "LENGTH"(@UnitOfMeasure) < 1 then set @UnitOfMeasure = null end if;
  call "LIT"."MaintenanceItemPartsAddManually"(@VesselId,@WorkItemLibraryId,@VesselClassId,@EquipmentRowIdStr,@NavyStockNumber,@PartNumber,@PartDescription,@SupplierName,@CageCode,@QuantityRequired,@UnitCost,@UnitOfMeasure,@ApplicationId)
end