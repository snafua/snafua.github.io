create procedure "_SMH"."MaintenanceHistoricalComments"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer,
  in @MaintenanceProcedureId integer default null ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "MachineryHistoryId" integer,
  "HistoryTimestamp" char(16),
  "Attachments" long varchar,
  "Correspondance" long varchar,
  "RelatedItems" long varchar,
  "Originator" char(85),
  "HistoryDetails" long varchar ) 
begin
  set @MaintenanceProcedureId = "ECO"."CheckNull"(@MaintenanceProcedureId);
  call "SMH"."MaintenanceHistoricalComments"(@VesselId,@EquipmentId,@MachineryHistoryId,@MaintenanceProcedureId)
end