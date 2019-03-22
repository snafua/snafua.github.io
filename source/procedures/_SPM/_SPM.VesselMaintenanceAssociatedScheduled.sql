create procedure "_SPM"."VesselMaintenanceAssociatedScheduled"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer ) 
result( 
  "SystemId" integer,
  "SystemName" char(50),
  "EquipmentId" integer,
  "EquipmentName" char(80),
  "ProcedureId" integer,
  "ProcedureName" char(50),
  "ProcedureRequired" bit,
  "LastCompleted" date ) 
begin
  call "SPM"."VesselMaintenanceAssociatedScheduled"(@VesselId,@EquipmentId,@ProcedureId)
end