create procedure "_SPM"."VesselEquipmentMaintenance"( 
  in @VesselId integer,
  in @EquipmentId integer default null,
  in @ProcedureId integer default null ) 
result( 
  "SystemId" integer,
  "SystemName" char(50),
  "EquipmentId" integer,
  "EquipmentName" char(80),
  "ProcedureId" integer,
  "ProcedureName" char(50),
  "ScheduleSelected" bit,
  "ScheduleRequired" bit,
  "CompletionSelected" bit ) 
begin
  if(@EquipmentId is null) then
    call "SPM"."VesselEquipmentWithMaintenance"(@VesselId)
  else
    call "SPM"."VesselEquipmentMaintenance"(@VesselId,@EquipmentId,@ProcedureId)
  end if
end