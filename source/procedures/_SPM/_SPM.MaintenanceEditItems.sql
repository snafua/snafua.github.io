create procedure "_SPM"."MaintenanceEditItems"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer,
  in @ItemId char(20) ) 
result( 
  "AvailabilityValue" char(30),
  "WorkPackValue" char(30),
  "WorkItemValue" char(30) ) 
begin
  call "SPM"."MaintenanceEditItems"(@VesselId,@EquipmentId,@ProcedureId,@ItemId)
end