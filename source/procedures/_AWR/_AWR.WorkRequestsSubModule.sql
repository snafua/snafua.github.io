create procedure "_AWR"."WorkRequestsSubModule"( 
  in @ApplicationId integer default null ) 
result( 
  "FiltersApplied" integer,
  "MaterialDiscrepancyReports" integer,
  "MaterialDiscrepancyReportPermission" tinyint,
  "WorkRequestPermission" tinyint,
  "ExportPermission" tinyint ) 
begin
  call "AWR"."WorkRequestsSubModule"(@ApplicationId)
end