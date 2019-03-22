create procedure "_SWA"."MaintenanceInsertUpdate"( 
  in @ApplicationId integer,
  in @RowId char(1024),
  in @BilletNodeId char(1024),
  in @EquipmentNodeId char(1024),
  in @MaintenanceProcedureId integer,
  in @VesselId integer,
  in @MaintenanceEventIds char(1024) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar,
  "RowId" char(1024),
  "MaintenanceProcedureNodeId" char(1024) ) 
begin
  declare @EquipmentId integer;
  declare @BilletId integer;
  declare @OperationalStatusId integer;
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'EquipmentId');
  set @BilletId = "SWA"."KeyValuePairParse"(@BilletNodeId,'BilletId');
  set @OperationalStatusId = "SWA"."KeyValuePairParse"(@RowId,'OperationalStatusId');
  call "SWA"."MaintenanceInsertUpdate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@BilletId,@MaintenanceEventIds,@OperationalStatusId)
end