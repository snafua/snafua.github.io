create procedure "_PAV"."PartsPermissions"( 
  in @NodeId char(1024) default null,
  in @RowId char(1024) default null,
  in @PartRowId char(1024) default null ) 
result( 
  "CageCodePermission" bit,
  "EquipmentPermission" bit,
  "NavyStockNumberPermission" bit,
  "PartDescriptionPermission" bit,
  "PartNumberPermission" bit,
  "QuantityRequiredPermission" bit,
  "SupplierNamePermission" bit,
  "UnitCostPermission" bit,
  "UnitOfMeasurePermission" bit ) 
begin
  /*
2018-08-06 RJM E-04174
*/
  declare @VesselId integer;
  declare @ApplicationId integer;
  declare @HasPartRowId bit;
  if(@RowId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  set @ApplicationId = "PAV"."ApplicationId"();
  if("ECO"."CheckNull"(@PartRowId) is not null) then
    set @HasPartRowId = 1
  else
    set @HasPartRowId = 0
  end if;
  call "SWA"."PartsPermissions"(@VesselId,@ApplicationId,@HasPartRowId,@PartRowId)
end