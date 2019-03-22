create procedure "_PEM"."WorkItemModificationReports"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "WorkItemId" integer,
  "WorkItemReportId" integer,
  "WorkItemReportType" char(20),
  "WorkItemReportNumber" integer,
  "WorkItemReportTitle" char(128),
  "FlagReport" integer ) 
begin
  call "PEM"."WorkItemModificationReports"(@VesselId,@WorkItemId,@WorkItemModId)
end