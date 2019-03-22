create procedure "_SWA"."MaintenanceBilletAssign"( 
  in @ApplicationId integer,
  in @RowId char(1024),
  in @BilletNodeId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @RowType char(20);
  declare @BilletId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @BilletId = "SWA"."KeyValuePairParse"(@BilletNodeId,'BilletId');
  call "SWA"."MaintenanceBilletAssign"(@ApplicationId,@VesselId,@EquipmentId,@MaintenanceProcedureId,@BilletId)
end