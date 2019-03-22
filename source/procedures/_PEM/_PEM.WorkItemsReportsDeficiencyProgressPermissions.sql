create procedure "_PEM"."WorkItemsReportsDeficiencyProgressPermissions"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "FlagReportDeficiency" integer,
  "FlagReportProgress" integer,
  "WorkItemsReportsReceived" integer,
  "WorkItemsReportsResponded" integer,
  "WorkItemsReportsOutstanding" integer ) 
begin
  call "PEM"."WorkItemsReportsDeficiencyProgressPermissions"(@VesselId,@ContractId)
end