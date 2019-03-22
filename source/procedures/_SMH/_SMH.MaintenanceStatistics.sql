create procedure "_SMH"."MaintenanceStatistics"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId integer default null,
  in @ProcedureId integer default null ) 
result( 
  "ItemType" char(10),
  "ItemName" char(25),
  "ItemValue" char(50) ) 
begin
  set @ProcedureId = "ECO"."CheckNull"(@ProcedureId);
  call "SMH"."MaintenanceStatistics"(@VesselId,@EquipmentId,@HistoryItemId,@ProcedureId)
end