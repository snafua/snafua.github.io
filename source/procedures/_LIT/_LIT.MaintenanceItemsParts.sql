create procedure --RJM
"_LIT"."MaintenanceItemsParts"( 
  in @ApplicationId integer,
  in @ModuleRowId char(1024),
  in @EquipmentRowId char(1024) default null,
  in @OrderBy long varchar default null ) 
result( 
  "PartDescription" char(80),
  "PartNumber" char(40),
  "NavyStockNumber" char(20),
  "QuantityRequired" integer,
  "CanEdit" bit,
  "CanRemove" bit,
  "PartRowId" char(1024),
  "UnitCost" numeric(15,2),
  "OrderBy" char(1024) ) 
begin
  /*
2016-08-24 RJM
2018-08-22 RJM E-04174 Changed PartsQuantity to QuantityRequired
*/
  declare @VesselId integer;
  declare @VesselClassId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @WorkItemLibraryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@ModuleRowId,'VesselId');
  set @VesselClassId = "SWA"."VesselClassId"(@VesselId);
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@ModuleRowId,'WorkItemLibraryId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'MaintenanceProcedureId');
  if("ECO"."CheckNull"(@ApplicationId) is null) then
    set @ApplicationId = "LIT"."ApplicationId"()
  end if;
  if("ECO"."CheckNull"(@OrderBy) is null) then
    set @OrderBy = ' PartDescription ASC '
  end if;
  call "LIT"."MaintenanceItemsParts"(@ApplicationId,@VesselId,@VesselClassId,@WorkItemLibraryId,@EquipmentId,@MaintenanceProcedureId,@OrderBy)
end