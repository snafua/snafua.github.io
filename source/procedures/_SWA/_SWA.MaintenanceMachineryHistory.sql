create procedure "_SWA"."MaintenanceMachineryHistory"( 
  in @RowId char(1024),
  in @OrderBy long varchar default null ) 
result( 
  "VesselId" integer,
  "EquipmentId" integer,
  "MaintenanceProcedureId" integer,
  "MachineryHistoryId" integer,
  "MaintenanceCompletionDate" char(10),
  "Meter" integer,
  "MaintenanceStatus" char(10),
  "DeferredToDate" char(10),
  "MaintenanceDeferralReason" char(20),
  "UserName" char(256),
  "OrderBy" long varchar,
  "MachineryHistoryRowId" char(1024),
  "ItemType" char(20) ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "SWA"."MaintenanceMachineryHistory"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@OrderBy)
end