create procedure -- JHM
"_PEM"."ReportPermissions"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "ExportWorkPack" integer,
  "AvailabilityCompletionReport" integer,
  "WorkItemModificaitonSummaryReport" integer,
  "WorkItemModificationStatusReport" integer,
  "ConditionReportStatusReport" integer,
  "ProgressStatusReport" integer,
  "CostByWorkItemReport" integer,
  "EstimatedCostSummaryReport" integer,
  "ContractInformationReport" integer,
  "WorkItemCategoryBReport" integer,
  "H5ClauseReport" integer,
  "WorkItemIndexReport" integer,
  "WorkItemModificationVsWeekReport" integer,
  "ProgressReportVsWeekReport" integer,
  "WorkItemModificationClassificationReport" integer ) 
begin
  /*
2018-06-22 - JHM - E-03547: Created
*/
  call "PEM"."ReportPermissions"(@VesselId,@Contractid)
end