create procedure --RJM
"_APM"."PartRemove"( 
  in @PartRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-08-15 RJM E-04174
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @PartId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@PartRowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@PartRowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@PartRowId,'MaintenanceProcedureId');
  set @PartId = "SWA"."KeyValuePairParse"(@PartRowId,'PartId');
  call "APM"."PartRemove"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@PartId)
end