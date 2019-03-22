create procedure --RJM
"_APM"."PartsEquipment"( 
  in @RowId char(1024) ) 
result( 
  "EquipmentDescription" char(80),
  "NavyStockNumber" char(20),
  "PartDescription" char(80),
  "PartNumber" char(40),
  "Quantity" integer,
  "PartPermission" integer,
  "EquipmentPermission" integer,
  "EquipmentRowId" char(1024),
  "PartRowId" char(1024) ) 
begin
  /*
2018-08-15 RJM E-04174
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "APM"."PartsEquipment"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
end