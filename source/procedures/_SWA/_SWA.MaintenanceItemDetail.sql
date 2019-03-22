create procedure "_SWA"."MaintenanceItemDetail"( 
  in @ApplicationId integer default null,
  in @RowId char(1024) ) 
result( 
  "VesselName" char(80),
  "VesselSubClass" char(40),
  "CurrentDate" timestamp,
  "TaskCode" char(25),
  "EFD" char(80),
  "EqStat" char(10),
  "ProcedureTitle" char(50),
  "Billet" char(50),
  "EstimatedHours" numeric(6,2),
  "Frequency" char(50) ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  if @VesselId is not null and @EquipmentId is not null and @MaintenanceProcedureId is not null then
    call "SWA"."MaintenanceItemDetail"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
  end if
end