create procedure "_APM"."PlannedMaintenanceNarrativeRTF"( 
  in @ApplicationId integer default null,
  in @RowId char(1024) ) 
result( 
  "PlannedMaintenanceNarrative" long varchar ) 
begin
  declare @MaintenanceProcedureId integer;
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  call "APM"."PlannedMaintenanceNarrativeRTF"(@MaintenanceProcedureId)
end