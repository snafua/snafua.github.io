create procedure --RJM
"_APM"."PlannedMaintenanceParts"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "PartDescription" char(128),
  "PartNumber" char(40),
  "NavyStockNumber" char(20),
  "QuantityRequired" integer ) 
begin
  /*
2018-07-11 RJM E-04222 Widened PartNumber to CHAR(40)
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "APM"."PlannedMaintenanceParts"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
end