create procedure "_PEM"."WorkItemReportDeficiencyStatuses"( 
  in @VesselId integer,
  in @WorkItemId integer default null ) 
result( 
  "WorkItemReportDeficiencyStatus" char(15) ) 
begin
  call "PEM"."WorkItemReportDeficiencyStatuses"(@VesselId,@WorkItemId)
end