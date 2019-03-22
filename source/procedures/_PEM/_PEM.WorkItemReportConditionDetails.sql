create procedure -- JHM
"_PEM"."WorkItemReportConditionDetails"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @PENGVersion char(12) default '2.0' ) 
result( 
  "ConditionActionId" integer,
  "PortEngineerId" integer,
  "WorkItemReportNumber" integer,
  "WorkItemReportTitle" char(128),
  "WorkItemNumber" char(25),
  "WorkItemTitle" char(128),
  "ConditionActionDescription" char(50),
  "PortEngineerName" char(128),
  "WorkItemReportDateIssued" date,
  "WorkItemReportDateReturned" date,
  "MachineryHistoryRelevant" bit,
  "WorkItemReportText" long varchar,
  "WorkItemReportResponse" long varchar,
  "HasAttachments" bit ) 
begin
  /*
2018-07-18 - JHM - E-04142: Added support for changing RFP to CCO
*/
  call "PEM"."WorkItemReportConditionDetails"(@VesselId,@WorkItemId,@WorkItemReportId,@PENGVersion)
end