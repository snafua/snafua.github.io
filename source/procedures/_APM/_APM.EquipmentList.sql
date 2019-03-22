create procedure --RJM
"_APM"."EquipmentList"( 
  in @MaintenanceRowId char(1024),
  in @EquipmentRowIds long varchar default null,
  in @RowType char(25) default null ) 
result( 
  "EncodedEquipmentRowId" char(1024),
  "EquipmentDescription" char(120),
  "EquipmentId" integer,
  "EquipmentRowId" char(1024),
  "IsSelected" bit ) 
begin
  /*
2018-07-27 RJM E-04174
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@MaintenanceRowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@MaintenanceRowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@MaintenanceRowId,'MaintenanceProcedureId');
  call "APM"."EquipmentList"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
end