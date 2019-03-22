create function "_SMH"."ScheduledMaintenanceNarrativeLoad"( 
  in @VesselId smallint,
  in @MaintenanceProcedureId integer ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "BASE64_ENCODE"("SEAS"."ScheduledMaintenanceNarrativeLoad"(@VesselId,@MaintenanceProcedureId));
  return(@Result)
end