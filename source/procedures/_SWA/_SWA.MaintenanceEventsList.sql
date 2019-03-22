create procedure --B-20016   E-04768
--RJM
"_SWA"."MaintenanceEventsList"( 
  in @RowId char(1024) ) 
result( 
  "MaintenanceEvents" char(1024) ) 
begin
  /*
2018-10-31 RJM B-20016   E-04768 LIST Events for PM report
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "SWA"."MaintenanceEventsList"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
end