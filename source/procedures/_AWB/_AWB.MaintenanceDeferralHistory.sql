create procedure "_AWB"."MaintenanceDeferralHistory"( 
  in @RowId char(512) ) 
result( 
  "DeferralDate" date,
  "UserName" char(256) ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @LastCompletionDate date;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @LastCompletionDate = "SWA"."MaintenanceStatusDate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,'Complete');
  call "AWB"."MaintenanceDeferralHistory"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@LastCompletionDate)
end