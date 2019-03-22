create procedure "_PEM"."WorkItemReportPermissions"( 
  in @VesselId integer,
  in @WorkItemId integer ) 
result( 
  "FlagConditionReport" integer,
  "FlagDeficiencyReport" integer,
  "FlagProgressReport" integer ) 
begin
  call "PEM"."WorkItemReportPermissions"(@VesselId,@WorkItemId)
end